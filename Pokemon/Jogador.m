//
//  Jogador.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Jogador.h"
#import "PokeMundo.h"


@implementation Jogador{
    
}

@synthesize idJogador = _idJogador;
@synthesize nome = _nome;
@synthesize sexo = _sexo;
@synthesize pokemons = _pokemons;

-(instancetype)initWithID:(int)currentID andNome:(NSString*)currentNome
                  andSexo:(NSString*)currentSex andPokemon:(Pokemon*)firstPokemon {
    self = [super init];
    if (self) {
        _idJogador = currentID;
        _nome = currentNome;
        _sexo =currentSex;
        _pokemons[0] = firstPokemon;
    }
    return self;
}

// Retorna um Pokemon aleatorio ou nulo
-(Pokemon*)procurarPokemon{
    if([self.pokemons count] > 5){
        return nil;
    }
    PokeMundo *mundo = [[PokeMundo alloc]init];
    Pokemon *pokemon = [[Pokemon alloc]init];
    pokemon = mundo.pokemons[arc4random_uniform((int)[mundo.pokemons count])];
    pokemon.exp = [NSNumber numberWithUnsignedInteger:arc4random_uniform(99)];
    pokemon.level = [NSNumber numberWithUnsignedInteger:arc4random_uniform(5)];
    if(self.tentarCapturarPokemon)
        return pokemon;
    return nil;
    
}

-(BOOL)tentarCapturarPokemon{
    NSNumber* chance = [NSNumber numberWithUnsignedInteger:arc4random_uniform(100)];
    NSNumber* limite = [NSNumber numberWithInt:50];
    return chance >= limite ? YES : NO;
}

-(NSArray*)melhoresPokemons{
    [self.pokemons sortUsingSelector:@selector(compare:)];
    NSMutableIndexSet *indexSet = [NSMutableIndexSet indexSet];
    NSArray *indexArray = @[@(0), @(1), @(2)];
    for (NSNumber *number in indexArray) {
        [indexSet addIndex:[number unsignedIntegerValue]];
    }
    return [self.pokemons objectsAtIndexes:indexSet];
}

@end
