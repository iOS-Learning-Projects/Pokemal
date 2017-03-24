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
    
@property (retain, nonatomic) NSMutableArray * jogadores;
@property (retain, nonatomic) NSMutableArray * ginasios;
@property (retain, nonatomic) NSMutableArray * pokemons;

-(instancetype)initWithGinasios:(NSMutableArray*)currentGinasios comPokemons:(NSMutableArray*)currentPokemons;
-(void)iniciarMundo;

-(void)showGinasions;

-(void)desafiarGinasioWithDesafiante:(Jogador *)desafiante;

@end
