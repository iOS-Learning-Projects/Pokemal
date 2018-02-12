//
//  Personagem.h
//  Pokemon
//
//  Created by Eduardo Vital Alencar Cunha on 07/04/17.
//  Copyright © 2017 Bruno Chagas. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Personagem <NSObject>

@required
@property (retain) NSString *nome;

@optional
@property int level;
-(void)recebeExp:(int)moreExp;

@end
