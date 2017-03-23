//
//  Utils.h
//  Pokemon
//
//  Created by Eduardo Vital Alencar Cunha on 20/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Utils : NSObject

+(NSString *)lerEntradaDoUsuario;
+(NSString *)lerEntradaDoUsuarioComMensagem:(NSString *)mensagem;

+(Jogador*)cadastrarJogador:(NSArray*)pokemonsIniciais;

@end
