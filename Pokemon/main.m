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
#import "Pokedex.h"
#import "Ginasio.h"
#import "PokeMundo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Gerar Pokemundo
        
        PokeMundo *pokeMundo = [[PokeMundo alloc]init];
        [pokeMundo iniciarMundo];
        
        //Primeiro Login
        Jogador *player = [Utils cadastrarJogador:pokeMundo.pokemons];
        
//        NSString * sex = [Utils lerEntradaDoUsuarioComMensagem:
//                          @"Olá jovem treinador! Meu nome é Prof. Jabosa. Neste "
//                          "mundo existe criaturas chamadas pokemons e seu dever é capturá-las."
//                          "Mas primeiro, me diga. Voce é um garoto ou uma garota?\n"];
//
//        NSString * nomePlayer = [Utils lerEntradaDoUsuarioComMensagem:
//                                 @"\nAgora me diga, qual o seu nome?\n"];
//
//        NSString * nomePokemon = [Utils lerEntradaDoUsuarioComMensagem:
//                                  @"Ir nessa jornada sozinho é muito perigoso. "
//                                  "Por favor, leve um pokemon com voce"];
//
//        nomePokemon = @"Charmander";

        //escolhe primeiro pokemon dentre Charmander, Bulbasauro, e Squirtle.
        
        ///---
        
//        [player init: arc4random_uniform(100) com:nomePlayer com: sex com:first]; // inicializa o jogador.
        
        
        
        
        
        
    }
    return 0;
}
