//
//  XMLMurosParser.h
//  GaleRio
//
//  Created by Alex on 28/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Muro.h"

@interface XMLMurosParser : NSObject <NSXMLParserDelegate> {
    // lista de muros
    NSMutableArray *muros;
    //variaveis auxiliares para o parser
    NSMutableString *tempString;
    Muro *muro;
    
}
// para criar o getter [XMLMuroParser getMuros];

@property (nonatomic, retain) NSMutableArray *muros;


@end
