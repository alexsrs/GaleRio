//
//  Muros.h
//  GaleRio
//
//  Created by Alex on 25/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThirdViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray *Muros;
}

@property (nonatomic, retain) NSMutableArray *Muros;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
// variavel para guardar o tipo de muro selecionado
@property (nonatomic, retain) NSString *tipo;

// Busca os muros pelo tipo selecionado e exibe no table view
-(void)atualizar;
// Segment Control : Atualiza a lista de carros, conforme o tipo atual selecionado
-(IBAction)alterarTipo:(id)sender;
// Este metodo será executado em Background por uma thread



@end
