//
//  Pokemon.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TipoPokemon.h"


@interface Pokemon : NSObject

@property (retain) NSString * nome;
@property (nonatomic, assign) Tipos tipo;
@property (retain) NSNumber * exp;
@property (retain) NSNumber * level;

-(instancetype)init:(NSString*)currentNome com:(Tipos)currentTipo;

@end
