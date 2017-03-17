//
//  PokeMundo.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PokeMundo.h"
#import "Jogador.h"
#import "Ginasio.h"
#import "Pokemon.h"

@interface PokeMundo : NSObject
    
@property (retain) NSMutableArray * jogadores;
@property (retain) NSMutableArray * ginasios;
@property (retain) NSMutableArray * pokemons;
    

@end
