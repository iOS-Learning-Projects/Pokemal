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

//Ocorre a batalha
-(BOOL)batalhar:(Pokemon*)desafiante andPokemon:(Pokemon*)desafiado{
    
    BOOL vence = YES;
    BOOL perde = NO;
    
    if([[desafiante exp]intValue] - [[desafiado exp]intValue] >= 3){
        return vence;
    }else{
        if([desafiante tipo] != [desafiado tipo]){
            NSString *tipoVencedor;
            //Inserir metodo de comparacao de tipos.
            
            if([desafiante tipo] == tipoVencedor) return vence;
            else return perde;
        }else{
            if([desafiante level] > [desafiado level]){
                return vence;
            }else{
                if([desafiante level] < [desafiado level]) return perde;
            }
        }
    }
    
    int n = arc4random_uniform(2);
    switch (n) {
        case 1:
            return vence;
            break;
            
        case 2:
            return perde;
            break;
    }
}


@end
