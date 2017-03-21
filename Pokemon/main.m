//
//  main.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Primeiro Login
 
        NSLog(@"Olá jovem treinador! Meu nome é Prof. Jabosa. Neste "
              "mundo existe criaturas chamadas pokemons e seu dever é capturá-las."
              "Mas primeiro, me diga. Voce é um garoto ou uma garota?\n");
        Jogador * player = [[Jogador alloc]init];
        
        
        NSString * sex = @"M";  //insere sexo do jogador.
        
        NSLog(@"\nAgora me diga, qual o seu nome?\n");
        
        NSString * nomePlayer = @"Jaum"; //nome do player.
        
        NSLog(@"Ir nessa jornada sozinho é muito perigoso. Por favor, leve um pokemon com voce");
        
        //escolhe primeiro pokemon dentre Charmander, Bulbasauro, e Squirtle.
        
        Pokemon *first = [[Pokemon alloc]init];
        [first init:@"Charmander" com:FIRE];
        
        ///---
        
        [player init: arc4random_uniform(100) com:nomePlayer com: sex com:first]; // inicializa o jogador.
        
        
        
        
        
        
    }
    return 0;
}
