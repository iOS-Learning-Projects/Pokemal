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
#import "Ginasio.h"
#import "Pokemon.h"
#import "PokeMundo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Gerar Pokemundo
        PokeMundo *pokeMundo = [[PokeMundo alloc]init];
        [pokeMundo iniciarMundo];
        
        //Primeiro Login
        NSMutableArray *pokemonsIniciais = [[NSMutableArray alloc]init];
        for(int i=0; i < 3; i++){
            [pokemonsIniciais insertObject:[pokeMundo.pokemons objectAtIndex:i] atIndex:i];
        }
        
        Jogador *player = [Utils cadastrarJogador:pokemonsIniciais];
        Pokemon *newPoke = [[Pokemon alloc]init];

        int option;
        while(YES) {
            [Utils showMenu];
            option = [Utils lerEntradaDoUsuarioComInt];

            switch (option) {
                case 1:
                    [player informacoesJogador];
                    break;
                case 2:
                    [pokeMundo showGinasions];
                    break;
                case 3:
                    break;
                case 4:
                    newPoke = [player procurarPokemons:[pokeMundo pokemons]];
                    if(newPoke != nil){
                        NSLog(@"Parabens, voce capturou um %@", [newPoke nome]);
                        [player addPokemon:newPoke];
                    }else NSLog(@"Falha na captura");
                    break;
                case 0:
                    return 0;
                    break;
                default:
                    break;
            }
        };
    }
    return 0;
}
