//
//  Jogador.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "Personagem.h"


@interface Jogador : NSObject <Personagem>

@property  int idJogador;
@property (retain) NSString * nome;
@property (retain, readonly) NSString * sexo;
@property (retain, nonatomic) NSMutableArray * pokemons;

-(instancetype)init NS_UNAVAILABLE;
-(instancetype)initWithID:(int)currentID andNome:(NSString*)currentNome andSexo:(NSString*)currentSex andPokemon:(Pokemon*)firstPokemon;
-(instancetype)initWithID:(int)currentID andNome:(NSString*)currentNome
                  andSexo:(NSString*)currentSex andPokemons:(NSMutableArray*)currentPokemons;
-(Pokemon*)procurarPokemons:(NSArray*)listaPokemons;
-(void)melhoresPokemons;
-(void)informacoesJogador;
-(void)addPokemon:(Pokemon*)newPoke;

@end
