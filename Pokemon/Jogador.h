//
//  Jogador.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"


@interface Jogador : NSObject

@property  int idJogador;
@property (retain, readonly) NSString * nome;
@property (retain, readonly) NSString * sexo;
@property (retain) NSMutableArray * pokemons;

-(instancetype)init:(int)currentID com:(NSString*)currentNome com: (NSString*)currentSex com:(Pokemon*)firstPokemon;



@end
