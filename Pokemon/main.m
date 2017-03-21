//
//  main.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Utils.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Primeiro Login
 
        NSString * sex = [Utils lerEntradaDoUsuarioComMensagem:
                          @"Olá jovem treinador! Meu nome é Prof. Jabosa. Neste "
                          "mundo existe criaturas chamadas pokemons e seu dever é capturá-las."
                          "Mas primeiro, me diga. Voce é um garoto ou uma garota?\n"];

        NSString * nomePlayer = [Utils lerEntradaDoUsuarioComMensagem:
                                 @"\nAgora me diga, qual o seu nome?\n"];

        NSString * nomePokemon = [Utils lerEntradaDoUsuarioComMensagem:
                                  @"Ir nessa jornada sozinho é muito perigoso. "
                                  "Por favor, leve um pokemon com voce"];

        nomePokemon = @"Charmander";

        //escolhe primeiro pokemon dentre Charmander, Bulbasauro, e Squirtle.
        
        Pokemon *first = [[Pokemon alloc]init];
        [first init:@"Charmander" com:FIRE];
        
        ///---
        
        [player init: arc4random_uniform(100) com:nomePlayer com: sex com:first]; // inicializa o jogador.
        
        
        
        
        
        
    }
    return 0;
}
