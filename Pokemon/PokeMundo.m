//
//  PokeMundo.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "PokeMundo.h"

@implementation PokeMundo

@synthesize jogadores = _jogadores;
@synthesize ginasios = _ginasios;
@synthesize pokemons = _pokemons;

-(instancetype)initWithGinasios:(NSMutableArray*)currentGinasios com:(NSMutableArray*)currentPokemons{
    self = [super init];
    if (self) {
        _ginasios = currentGinasios;
        _pokemons = currentPokemons;
    }
    return self;
}

@end
