//
//  Jogador.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Jogador.h"
#import "PokeMundo.h"
#import "Utils.h"


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
        _pokemons = [NSMutableArray array];
        [_pokemons addObject:firstPokemon];

    }
    return self;
}

-(instancetype)initWithID:(int)currentID andNome:(NSString*)currentNome
                  andSexo:(NSString*)currentSex andPokemons:(NSMutableArray*)currentPokemons {
    self = [super init];
    if (self) {
        _idJogador = currentID;
        _nome = currentNome;
        _sexo =currentSex;
        _pokemons = currentPokemons;
    }
    return self;
}

// Retorna um Pokemon aleatorio ou nulo
-(Pokemon*)procurarPokemons:(NSArray*)listaPokemons{
    if([self.pokemons count] >= 5){
        return nil;
    }
    int op;
    Pokemon *pokemon = [[Pokemon alloc]init];
    pokemon = listaPokemons[arc4random_uniform((int)[listaPokemons count])];
    pokemon.exp = arc4random_uniform(99);
    do {
        pokemon.level = arc4random_uniform(5);
    } while (pokemon.level == 0);
    NSLog(@"Voce encontrou um %@.",[pokemon nome]);
    printf("\n%-20.20s%-20.20s%-20.20s%-20.20s\n","Nome", "Tipo", "Lvl", "Exp");
    printf("----------------------------------------------------------------\n");
    for(Pokemon *pokemon in [self pokemons]){
        printf("%-20.20s%-20.20s %-20d %-20d\n", [pokemon.nome UTF8String], [pokemon.tipo UTF8String], [pokemon level], [pokemon exp]);
    }
    printf("\nDeseja tentar capturá-lo?\n1 - Sim\n2 - Nao");
    do {
        op = [Utils lerEntradaDoUsuarioComInt];
    } while(op != 1 && op != 2);
    if(op == 1){
        if(self.tentarCapturarPokemon)
            return pokemon;
    }
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

-(void)informacoesJogador{
    
    printf("\n%-20.20s%-20.20s%-20.20s\n","ID", "Nome", "Sexo");
    printf("----------------------------------------------------------------\n");
    printf("%-20d%-20.20s%-20.20s\n", [self idJogador], [self.nome UTF8String], [self.sexo UTF8String]);
    printf("\nLista de Pokemons:\n");
    //printf("ID\t        Nome\t      Sexo\n");
    //printf("-----------------------\n");
    //printf("%-6d %-6s %s\n", [self idJogador], [self.nome UTF8String], [self.sexo UTF8String]);
    //printf("\nLista de Pokemons:\n");
    //printf("Nome\t  Tipo\t  Level\t Exp\n");
    printf("\n%-20.20s%-20.20s%-20.20s%-20.20s\n","Nome", "Tipo", "Lvl", "Exp");
    printf("----------------------------------------------------------------\n");
    for(Pokemon *pokemon in [self pokemons]){
        printf("%-20.20s%-20.20s %-20d %-20d\n", [pokemon.nome UTF8String], [pokemon.tipo UTF8String], [pokemon level], [pokemon exp]);
    }
}

-(void)addPokemon:(Pokemon*)newPoke{
    
    [[self pokemons]addObject:newPoke];
    
}

@end
