//
//  PokeMundo.m
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import "PokeMundo.h"

@implementation PokeMundo

@synthesize jogadores = _jogadores;
@synthesize ginasios = _ginasios;
@synthesize pokemons = _pokemons;

-(instancetype)initWithGinasios:(NSMutableArray*)currentGinasios comPokemons:(NSMutableArray*)currentPokemons{
    self = [super init];
    if (self) {
        _ginasios = currentGinasios;
        _pokemons = currentPokemons;
    }
    return self;
}

-(void)iniciarMundo{
    NSMutableArray *iniciais = [[NSMutableArray alloc]init];
    Pokemon *bulbasaur = [[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA"];
    Pokemon *charmander = [[Pokemon alloc]initWithNome:@"Charmander" andTipo:@"FOGO"];
    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];
    [iniciais addObject: bulbasaur];
    [iniciais addObject: charmander];
    [iniciais addObject: squirtle];
//    
//    NSMutableArray *lideres = [[NSMutableArray alloc]init];
//    Pokemon *brockPokemon1 = [[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]];
//    Pokemon *brockPokemon2 = [[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]];
//    Pokemon *brockPokemon3 = [[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]];
//    Jogador *brock = [Jogador alloc]initWithID:101 andNome:@"Brock" andSexo:"M" andPokemon:<#(Pokemon *)#>];
    
    NSMutableArray *ginasios = [[NSMutableArray alloc]init];
    Ginasio *pewter = [[Ginasio alloc]initWithNome:@"Pewter"];
    Ginasio *cerulean = [[Ginasio alloc]initWithNome:@"Cerulean"];
    Ginasio *vermilion = [[Ginasio alloc]initWithNome:@"Vermilion"];
    Ginasio *celadon = [[Ginasio alloc]initWithNome:@"Celadon"];
    [ginasios addObject: pewter];
    [ginasios addObject: cerulean];
    [ginasios addObject: vermilion];
    [ginasios addObject: celadon];
    
    self.pokemons = iniciais;
    self.ginasios = ginasios;

}

@end
