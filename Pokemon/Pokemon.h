//
//  Pokemon.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Personagem.h"

@interface Pokemon : NSObject <Personagem>

@property (retain) NSString * nome;
@property (retain) NSString * tipo;
@property int exp;
@property int level;

-(instancetype)initWithNome:(NSString *)currentNome andTipo:(NSString*)currentTipo;
-(instancetype)initWithNome:(NSString *)currentNome andTipo:(NSString*)currentTipo andExp:(int)currentExp andLevel:(int)currentLevel;
-(void)recebeExp:(int)moreExp;

@end
