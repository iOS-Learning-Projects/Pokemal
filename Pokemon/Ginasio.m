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
        _lider = currentLider;
    }
    return self;
}


-(void)desafiarLiderWithDesafiante:(Jogador *)desafiante {
    [desafiante melhoresPokemons];
    [_lider melhoresPokemons];

    Pokemon *pokDesafiante;
    Pokemon *pokDesafiado;

    int derrotasDesafiante = 0;
    int derrotasDesafiado = 0;

    for (int i = 0; i < 3; i++) {
        pokDesafiante = [[desafiante pokemons] objectAtIndex:derrotasDesafiante];
        pokDesafiado = [[_lider pokemons] objectAtIndex:derrotasDesafiado];

        BOOL desafianteVenceuBatalha = [self batalhar:pokDesafiante andPokemon:pokDesafiado];
        if (desafianteVenceuBatalha) {
            [[[desafiante pokemons]objectAtIndex:derrotasDesafiante]recebeExp:35];
            [[[_lider pokemons]objectAtIndex:derrotasDesafiado]recebeExp:10];
            derrotasDesafiado++;
        } else {
            [[[_lider pokemons]objectAtIndex:derrotasDesafiado]recebeExp:35];
            [[[desafiante pokemons]objectAtIndex:derrotasDesafiante]recebeExp:10];
            derrotasDesafiante++;
        }
    }

    if (derrotasDesafiante < 2) { //Desafiante ganhou o desafio
        printf("\nParabéns! Você é o novo líder do ginásio %s.\n", [[self nome] UTF8String]);
        _lider = desafiante;
    } else { //Desafiante perdeu o desafio
        printf("\nInfelizmente você perdeu o desafio.");
    }
}

//Ocorre a batalha
-(BOOL)batalhar:(Pokemon*)desafiante andPokemon:(Pokemon*)desafiado{
    BOOL vence = YES;
    BOOL perde = NO;
    int resultadoVencedor = desafiante.level-desafiado.level;
    int resultadoPerdedor = desafiado.level-desafiante.level;
    
    if(resultadoVencedor >= 3)
        return vence;
    if(resultadoPerdedor >= 3)
        return perde;

    if([desafiante tipo] != [desafiado tipo]){
        NSArray * aux = @[@"AGUA", @"FOGO", @"GRAMA", @"AGUA"];

        long int a = [aux indexOfObject:[desafiante tipo]];
        long int b = [aux indexOfObject:[desafiado tipo]];

        return (a == b + 1) ? vence : perde;
    }else{
        if([desafiante exp] > [desafiado exp])
            return vence;
        if([desafiante exp] < [desafiado exp])
            return perde;
        int n = arc4random_uniform(2);
        return (n == 0) ? perde : vence;
    }
}

@end
