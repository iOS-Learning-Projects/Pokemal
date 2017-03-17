//
//  Pokemon.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum tipos{
    AGUA,
    FOGO,
    VENTO
}Tipos;

@interface Pokemon : NSObject
    
@property (retain) NSString * nome;
@property (retain) Tipos * tipo;
@property (retain) NSNumber * exp;
@property (retain) NSNumber * level;


@end
