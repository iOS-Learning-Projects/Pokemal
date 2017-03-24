//
//  Pokemon.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

@synthesize nome = _nome;
@synthesize tipo = _tipo;
@synthesize exp = _exp;
@synthesize level = _level;

-(instancetype)initWithNome:(NSString *)currentNome andTipo:(NSString*)currentTipo {
    int randomLevel = arc4random_uniform(10) + 1;
    return [self initWithNome:currentNome andTipo:currentTipo andExp:0 andLevel:randomLevel];
}

-(instancetype)initWithNome:(NSString *)currentNome andTipo:(NSString*)currentTipo andExp:(int)currentExp andLevel:(int)currentLevel {
    self = [super init];
    if (self) {
        _nome = currentNome;
        _tipo = currentTipo;
        _exp = currentExp;
        _level = currentLevel;
    }
    return self;
}

-(void)recebeExp:(int)moreExp{
    
    self.exp +=moreExp;
    
    if(self.exp >= 100){
        self.exp -= 100;
        self.level++;
    }
    
}

-(NSComparisonResult)compare:(Pokemon *)otherPokemon {
    return self.level < otherPokemon.level;
}


@end
