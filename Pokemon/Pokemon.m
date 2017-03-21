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
    self = [super init];
    if (self) {
        _nome = currentNome;
        _tipo = currentTipo;
    }
    return self;
}


@end
