//
//  Utils.m
//  Pokemon
//
//  Created by Eduardo Vital Alencar Cunha on 20/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Utils.h"
#import "Pokedex.h"
#import "Jogador.h"
#import "PokeMundo.h"

#define TAM 100

@implementation Utils

+(NSString *)lerEntradaDoUsuario {
    return [self lerEntradaDoUsuarioComMensagem:nil];
}

+(NSString *)lerEntradaDoUsuarioComMensagem:(NSString *)mensagem {
    char entradaDoUsuario[TAM];

    if (mensagem) {
        printf("%s", [mensagem UTF8String]);
    }

    scanf("%s", entradaDoUsuario);
    return [NSString stringWithUTF8String:entradaDoUsuario];
}

+(int)lerEntradaDoUsuarioComInt {
    int entradaDoUsuario;
    scanf("%d", &entradaDoUsuario);
    return entradaDoUsuario;
}


//+(int)chooseFirstPokemon {
//    NSDictionary *pokedeck = [Pokedex showPokemons];
//    
//    printf("\nEscolha o seu pokemon: \n");
//    
//    int index = 0;
//    for (NSString *pokemon in pokedeck.keyEnumerator) {
//        index++;
//        printf("%d - %s\n", index, [pokemon UTF8String]);
//    }
//    return index;
//}


+(Pokemon*)chooseFirstPokemon:(NSArray *)pokemonsIniciais{
    printf("\nIr nessa jornada sozinho é muito perigoso. \nPor favor, leve um pokemon com voce\n");
    int index = 0;
    for (Pokemon *pokemon in pokemonsIniciais) {
        index++;
        NSLog(@"%d - %@\n", index, [pokemon nome]);
    }
    printf("\n\nEscolha o seu pokemon: ");
    int aux = [Utils lerEntradaDoUsuarioComInt];
    return [pokemonsIniciais objectAtIndex:aux];
}

+(Jogador*)cadastrarJogador:(NSArray*)pokemonsIniciais{
    NSString * sex = [Utils lerEntradaDoUsuarioComMensagem:
                      @"Olá jovem treinador! Meu nome é Prof. Jabosa. Neste "
                      "mundo existe criaturas chamadas pokemons e seu dever é capturá-las."
                      "Mas primeiro, me diga. Voce é um garoto ou uma garota?\n"];
    NSString * nomePlayer = [Utils lerEntradaDoUsuarioComMensagem:
                             @"\nAgora me diga, qual o seu nome?\n"];
    Pokemon * pokemon = [Utils chooseFirstPokemon:pokemonsIniciais];
    
    Jogador *player = [[Jogador alloc]initWithID:arc4random_uniform(100) andNome:nomePlayer andSexo:sex andPokemon: pokemon];
    
    return player;
}

@end
