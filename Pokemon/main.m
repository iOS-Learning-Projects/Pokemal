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
        NSMutableArray *iniciais = [[NSMutableArray alloc]init];
        Pokemon *bulbasaur = [[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA"];
        Pokemon *charmander = [[Pokemon alloc]initWithNome:@"Charmander" andTipo:@"FOGO"];
        Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];
        [iniciais addObject: bulbasaur];
        [iniciais addObject: charmander];
        [iniciais addObject: squirtle];
        
        NSMutableArray *ginasios = [[NSMutableArray alloc]init];
        Ginasio *pewter = [[Ginasio alloc]initWithNome:@"Pewter"];
        Ginasio *cerulean = [[Ginasio alloc]initWithNome:@"Cerulean"];
        Ginasio *vermilion = [[Ginasio alloc]initWithNome:@"Vermilion"];
        Ginasio *celadon = [[Ginasio alloc]initWithNome:@"Celadon"];
        [iniciais addObject: pewter];
        [iniciais addObject: cerulean];
        [iniciais addObject: vermilion];
        [iniciais addObject: celadon];
        
        PokeMundo *pokeMundo = [[PokeMundo alloc]initWithGinasios:ginasios comPokemons:iniciais];
        
        
        
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
