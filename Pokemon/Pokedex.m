//
//  Pokedex.m
//  Pokemon
//
//  Created by Solid Jaum on 21/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Pokedex.h"

@implementation Pokedex

@synthesize pokedex = _pokedex;

+(NSDictionary *)showPokemons {
    NSDictionary *pokemons = @{
        @"Bulbasaur" : @"Grama",
        @"Squirtle": @"Agua",
        @"Charmander": @"Fogo"
    };

    return pokemons;
}

@end
