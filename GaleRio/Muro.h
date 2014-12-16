//
//  Muro.h
//  GaleRio
//
//  Created by Alex on 28/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Muro : NSObject {
    NSString *nome;
    NSString *desc;
    //url para a foto do muro
    NSString *url_foto;
    //url com um site com informações do carro
    NSString *url_info;
    NSString *url_video;
    NSString *latitude;
    NSString *longitude;
    }
@property (nonatomic, retain) NSString *nome;
@property (nonatomic, retain) NSString *desc;
@property (nonatomic, retain) NSString *url_foto;
@property (nonatomic, retain) NSString *url_info;
@property (nonatomic, retain) NSString *url_video;
@property (nonatomic, retain) NSString *latitude;
@property (nonatomic, retain) NSString *longitude;

@end
