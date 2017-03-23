//
//  Pokemon.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject

@property (retain) NSString * nome;
@property (retain) NSString * tipo;
@property (retain, nonatomic) NSNumber * exp;
@property (retain, nonatomic) NSNumber * level;

-(instancetype)init NS_UNAVAILABLE;
-(instancetype)initWithNome:(NSString *)currentNome andTipo:(NSString*)currentTipo;

@end
