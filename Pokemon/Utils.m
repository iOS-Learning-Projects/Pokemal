//
//  Utils.m
//  Pokemon
//
//  Created by Eduardo Vital Alencar Cunha on 20/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "Utils.h"
#import "Pokedex.h"

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

+(int)chooseFirstPokemon {
    NSDictionary *pokedeck = [Pokedex showPokemons];

    printf("\nEscolha o seu pokemon: \n");

    int index = 0;
    for (NSString *pokemon in pokedeck.keyEnumerator) {
        index++;
        printf("%d - %s\n", index, [pokemon UTF8String]);
    }
    return index;
}


@end
