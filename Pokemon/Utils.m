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

+(Pokemon*)chooseFirstPokemon:(NSArray *)pokemonsIniciais{
    
    int aux;
    
    printf("\nIr nessa jornada sozinho é muito perigoso. \nPor favor, leve um pokemon com voce\n");
    int index = 0;
    for (Pokemon *pokemon in pokemonsIniciais) {
        index++;
        NSLog(@"%d - %@\n", index, [pokemon nome]);
    }
    
    printf("\n\nEscolha o seu pokemon: ");
    //validaçao de escolha do pokemon.
    do {
        aux = [Utils lerEntradaDoUsuarioComInt];
    } while((aux != 1 && aux != 2 && aux != 3));
    
    return [pokemonsIniciais objectAtIndex:aux-1];
    
}

//Cadastra um Player.
+(Jogador*)cadastrarJogador:(NSArray*)pokemonsIniciais{
    
    int n;
    NSString * sex;

    printf("Olá jovem treinador! Meu nome é Prof. Jabosa. Neste "
           "mundo existe criaturas chamadas pokemons e seu dever é capturá-las."
           "Mas primeiro, me diga. Voce é um garoto ou uma garota?\n1 - Garoto\n2 - Garota\n");
    
    do{
        n = [Utils lerEntradaDoUsuarioComInt];
    }while(n != 1 && n != 2);
    
    if(n == 1) sex = @"Garoto";
    else  sex = @"Garota";
    
    NSString * nomePlayer = [Utils lerEntradaDoUsuarioComMensagem:
                             @"\nAgora me diga, qual o seu nome?\n"];
    Pokemon * pokemon = [Utils chooseFirstPokemon:pokemonsIniciais];
    
    Jogador *player = [[Jogador alloc]initWithID:arc4random_uniform(100) andNome:nomePlayer andSexo:sex andPokemon: pokemon];
    
    return player;
}


+(void)showMenu {
    printf("\nEscolha uma Opçao:\n"
           "1 - Mostrar minhas informações\n"
           "2 - Mostrar ginásios\n"
           "3 - Desafiar lider de ginásio\n"
           "4 - Procurar Pokemon\n"
           "0 - Sair do Jogo\n");
}

@end
