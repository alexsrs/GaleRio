//
//  ThirdViewController.m
//  GaleRio
//
//  Created by Alex on 25/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import "ThirdViewController.h"
#import "MuroService.h"
#import "Muro.h"
#import "CustomCell.h"

#import "DetalhesMuroViewController.h"


@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize tableView;
@synthesize Muros;
@synthesize tipo;
@synthesize progress;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //titulo
    self.title =@"Artes";
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];

    
    //busca os muros
    
    self.tipo =@"prontos";
    
    // ajusta o scroll da table view
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self atualizar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segment Control
-(IBAction)alterarTipo:(id)sender {
    UISegmentedControl *sc =(UISegmentedControl *) sender;
    // recupera o indice selecionado
    NSInteger idx =sc.selectedSegmentIndex;
    switch (idx) {
        case 0:
            self.tipo=@"prontos";
            break;
        case 1:
            self.tipo=@"contrucao";
            break;
            }
    [self atualizar];
}
#pragma mark - Metodos
-(void) atualizar {
    //busca os muros com o tipo selecionado
    self.Muros =[MuroService getMurosBytipo:self.tipo];
    // atualiza o tableview
    [self.tableView reloadData];
}

#pragma mark - TableView

// retorna o numero de linhas para criar a tabela
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.Muros.count;
}

// Retorna a célula que vai ser o conteúdo para a linha solicitada

- (UITableViewCell *)tableView:(UITableView *)tableView

         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Cria a célula desta linha da tabela
    
    static NSString *CellIdentifier = @"CustomCell";
    
    CustomCell *cell = (CustomCell*) [self.tableView
                                    
                                    dequeueReusableCellWithIdentifier: CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil]
                
                objectAtIndex:0];
        
    }
    
    // Carro selecionado
    
    NSInteger linha = indexPath.row;
    
    Muro *muro = [Muros objectAtIndex:linha];
    
    // Descrição
    
    cell.estacaoCell.text = muro.nome;
    cell.cellImg.url = muro.url_foto;
    
    return cell;
}

    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        if ([[segue identifier] isEqualToString:@"detail"]){
        Muro *selectedMuro = [self.Muros objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
            
           DetalhesMuroViewController *detailVC = segue.destinationViewController;
      //   DetalhesMuroViewController *detailVC = [[DetalhesMuroViewController alloc] init];
            
          detailVC.muro = selectedMuro;
           // [self.navigationController pushViewController:detailVC animated:YES];
    }
    }
        - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
            [self performSegueWithIdentifier:@"detail"
                                      sender:self];
    }
@end
