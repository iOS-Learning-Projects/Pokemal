//
//  Ginasio.h
//  Pokemon
//
//  Created by Bruno Chagas on 17/03/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ginasio : NSObject
    
@property (retain) NSString * nome;
@property (retain) NSObject * lider;

-(instancetype)initWithNome:(NSString*)currentNome;

@end
