//
//  Jogador.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador{
    
}

@synthesize idJogador - _idJogador;
@synthesize nome = _nome;
@synthesize pokemons = _pokemons;

- (instancetype)initWithId(NSNumber*):currentIdJogador com(NSString*):currentNome{
    self = [super init];
    if (self) {
        _idJogador = currentIdJogador;
        _nome = currentNome;
    }
    return self;
}

@end
