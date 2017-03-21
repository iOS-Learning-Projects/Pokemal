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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pokedex = @{
            
            @1 : @{@"Bulbasaur" : @"Grama"},
            @2 : @{@"Squirtle": @"Agua"},
            @3 : @{@"Charmander": @"Fogo"}
            
        };
    }
    return self;
}



@end
