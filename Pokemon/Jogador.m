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
@synthesize pokemons = _pokemons;

- (instancetype)initWithId:(NSNumber*)currentIdJogador com:(NSString*)currentNome{
    self = [super init];
    if (self) {
        _idJogador = currentIdJogador;
        _nome = currentNome;
    }
    return self;
}

// Retorna um Pokemon aleatorio
-(Pokemon*)procurarPokemon{
    
    PokeMundo *mundo = [[PokeMundo alloc]init];
    Pokemon *pokemon = [[Pokemon alloc]init];
    pokemon = mundo.pokemons[arc4random_uniform((int)[mundo.pokemons count])];
    pokemon.exp = [NSNumber numberWithUnsignedInteger:arc4random_uniform(99)];
    pokemon.level = [NSNumber numberWithUnsignedInteger:arc4random_uniform(5)];
    return pokemon;
    
}


@end
