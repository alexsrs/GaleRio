//
//  MuroService.h
//  GaleRio
//
//  Created by Alex on 30/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MuroService : UIViewController {
    
}
// metodo antigo que cria o array de carros de forma simples
+(NSMutableArray *) getMuros;
//busca os muros pelo tipo: prontos e em construção
+(NSMutableArray *) getMurosBytipo :(NSString *) tipo;
// parser de xml com sax
+(NSMutableArray *) parserXML_SAX :(NSData *) data;

@end
