//
//  MuroService.m
//  GaleRio
//
//  Created by Alex on 30/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import "MuroService.h"
#import "Muro.h"
#import "XMLMurosParser.h"

@implementation MuroService

+(NSMutableArray *) getMuros {
    NSMutableArray *Muros = [[NSMutableArray alloc] init];
    for (int i =0; i<20; i++) {
        Muro *c =[[Muro alloc] init];
        [c setNome:[NSString stringWithFormat:@"Muro %d", i]];
        [c setDesc:[NSString stringWithFormat:@"Desc Muro %d", i]];
                    [c setUrl_foto:@"Ferrari_FF.png"];
                    [c setUrl_info:@"http://www.google.com.br"];
        //adciona o muro no array
                    [Muros addObject:c];
                    
    }
    return Muros;
}

+(NSMutableArray *) getMurosBytipo :(NSString *) tipo {
    // cria o nome do arquivo Muros_prontos para ler o arquivo local
    NSString *s = [[NSString alloc] initWithFormat:@"Muros_%@", tipo];
    NSString *path=[[NSBundle mainBundle] pathForResource:s ofType:@"xml"];
    // Faz a leitura do arquivo local do projeto, e retorna o NsData
    NSData *data =[[NSData alloc] initWithContentsOfFile:path];
    if (data.length == 0) {
        return nil;
    }
    // chama o metodo que sabe converter o NSdata no array de muros
    NSMutableArray *muros = [self parserXML_SAX:data];
    return muros;
}

//parser do xml com sax
+(NSMutableArray *) parserXML_SAX :(NSData *) data {
    if (!data || [data length] == 0) {
        NSLog(@"nenhum dado encontrado");
        return nil;
    }
    NSXMLParser* xmlParser =[[NSXMLParser alloc] initWithData:data];
    
    //cria o parser dos carros, e informa o "xmlParser" que ela é o delegate (para receber os eventos de parser
    XMLMurosParser *muroParser = [XMLMurosParser alloc];
    [xmlParser setDelegate:muroParser];
    
    //inicia o parser com o NSXMLParser, o que vai chamar a classe XMLMuroParser
    bool ok =[xmlParser parse];
    NSMutableArray *muros;
    
    if (ok) {
        // fez o parser com sucesso, retorna a lista de muros
        muros= muroParser.muros;
    } else {
        NSLog(@"Erro no parser");
              return nil;
              
              }
              // retorna a lista de muros
              return muros;
              }

@end
