//
//  Jogador.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jogador : NSObject

@property (retain, readonly) NSNumber * idJogador;
@property (retain, readonly) NSString * nome;
@property (retain) NSMutableArray * pokemons;

-(instancetype)initWithId:(NSNumber*)currentIdJogador com:(NSString*)currentNome;
@end
