//
//  Pokedex.h
//  Pokemon
//
//  Created by Solid Jaum on 21/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Pokemon.h"

@interface Pokedex : NSObject
    
    
    @property NSDictionary *pokedex;
    
    
-(instancetype)init;
+(NSDictionary *)showPokemons;

@end
