//
//  Ginasio.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Ginasio.h"
#import "Pokemon.h"

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

-(instancetype)initWithNome:(NSString*)currentNome andLider:(Jogador*)currentLider{
    self = [super init];
    if (self) {
        _nome = currentNome;
    }
    return self;
}


//Ocorre a batalha
-(BOOL)batalhar:(Pokemon*)desafiante andPokemon:(Pokemon*)desafiado{
    
    BOOL vence = YES;
    BOOL perde = NO;
    
    if([desafiado exp] - [desafiado exp] >= 3){
        return vence;
    }else if([desafiado exp] - [desafiante exp] >= 3) return perde;
    
        if([desafiante tipo] != [desafiado tipo]){
            
            NSArray * aux = @[@"AGUA", @"FOGO", @"GRAMA", @"AGUA"];
            
            long int a = [aux indexOfObject:[desafiante tipo]];
            long int b = [aux indexOfObject:[desafiado tipo]];
            
            if(a == b+1) return vence;
            else return perde;
            
        }else{
            if([desafiante level] > [desafiado level]){
                return vence;
            }else if([desafiante level] < [desafiado level]) return perde;
            
        }
    
    int n = arc4random_uniform(2);
    switch (n) {
        case 0:
            return vence;
            break;
            
        case 1:
            return perde;
            break;
    }
    
    NSLog(@"DEU MERDA");
    return perde;
}

@end
