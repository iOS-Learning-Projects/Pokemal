//
//  Ginasio.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Ginasio.h"

@implementation Ginasio

@synthesize nome = _nome;
@synthesize lider = _lider;

-(instancetype)initWithNome:(NSString*)currentNome{
    self = [super init];
    if (self) {
        _nome = currentNome;
    }
    return self;
}


@end
