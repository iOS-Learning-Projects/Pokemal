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
//    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Geodude" andTipo:@"AGUA"];
//    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];
//    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];
//    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];
//    Pokemon *squirtle = [[Pokemon alloc]initWithNome:@"Squirtle" andTipo:@"AGUA"];

    [iniciais addObject: bulbasaur];
    [iniciais addObject: charmander];
    [iniciais addObject: squirtle];
    
    NSMutableArray *pokemonsBrock = [[NSMutableArray alloc]init];
    [pokemonsBrock addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsBrock addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsBrock addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    Jogador *brock = [[Jogador alloc]initWithID:101 andNome:@"Brock" andSexo:@"garoto" andPokemons:pokemonsBrock];
    
    NSMutableArray *pokemonsMisty = [[NSMutableArray alloc]init];
    [pokemonsMisty addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsMisty addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsMisty addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    Jogador *misty = [[Jogador alloc]initWithID:101 andNome:@"Misty" andSexo:@"garota" andPokemons:pokemonsMisty];
    
    NSMutableArray *pokemonsLtSurge = [[NSMutableArray alloc]init];
    [pokemonsLtSurge addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsLtSurge addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsLtSurge addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    Jogador *ltSurge = [[Jogador alloc]initWithID:101 andNome:@"LtSurge" andSexo:@"garoto" andPokemons:pokemonsLtSurge];
    
    NSMutableArray *pokemonsErika = [[NSMutableArray alloc]init];
    [pokemonsErika addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsErika addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    [pokemonsErika addObject:[[Pokemon alloc]initWithNome:@"Bulbasaur" andTipo:@"GRAMA" andExp:0 andLevel:[NSNumber numberWithInt:2]]];
    Jogador *erika = [[Jogador alloc]initWithID:101 andNome:@"Erika" andSexo:@"garota" andPokemons:pokemonsErika];
    
    NSMutableArray *ginasios = [[NSMutableArray alloc]init];
    Ginasio *pewter = [[Ginasio alloc]initWithNome:@"Pewter" andLider:brock];
    Ginasio *cerulean = [[Ginasio alloc]initWithNome:@"Cerulean" andLider:misty];
    Ginasio *vermilion = [[Ginasio alloc]initWithNome:@"Vermilion" andLider:ltSurge];
    Ginasio *celadon = [[Ginasio alloc]initWithNome:@"Celadon" andLider:erika];
    [ginasios addObject: pewter];
    [ginasios addObject: cerulean];
    [ginasios addObject: vermilion];
    [ginasios addObject: celadon];
    
    self.pokemons = iniciais;
    self.ginasios = ginasios;

}

@end
