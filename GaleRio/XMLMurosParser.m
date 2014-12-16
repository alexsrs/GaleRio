//
//  XMLMurosParser.m
//  GaleRio
//
//  Created by Alex on 28/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import "XMLMurosParser.h"
#import "Muro.h"

@implementation XMLMurosParser

//Propriedade muros que contem o array de muros

@synthesize muros;

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    if ([elementName isEqualToString:@"carros"]) {
        // TAG <MUROS> Encontrada, cria a lista de muros
        self.muros = [[NSMutableArray alloc] init];
    } else if ([elementName isEqualToString:@"carro"]) {
        //tag <muro> encontrada, cria um novo obketo muro
        muro = [[Muro alloc]init];
    }
}
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ([elementName isEqualToString:@"carros"]) {
    
    // tag de fim </carros> encontrada. significa que terminou o xml
    return;
}
    if ([elementName isEqualToString:@"carro"]) {

    // fim da tag </carro>. Então aproveita para inserir p novo carro no array
        [self.muros addObject:muro];
        muro = nil;
}
    else {
        // se não é a tag <carro>, pode ser a tag <nome>, <desc> etc
        // copia os valores do xml para o objeto muro
        // se existirem tags com o mesmo nome da @property do muro, o valor será copiado
        if (tempString != nil && muro != nil) {
            [muro setValue:tempString forKey:elementName];
        }
        //libera a string depois de utilizar
        tempString = nil;
    }
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
        //novos caracteres foram encontrados no xml. então cria a string e faz trim
    NSString *s =[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
       if (!tempString) {
           // se a variavel auxiliar nao existe, cria nova instancia
           tempString = [[NSMutableString alloc] init];
       }
       // faz append na string para copiar o valor recebido para a variavel auxiliar
       [tempString appendString:s];
       
    }
    
@end
