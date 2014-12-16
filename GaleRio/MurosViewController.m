//
//  ThirdViewController.m
//  GaleRio
//
//  Created by Alex on 25/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import "MurosViewController.h"

#import "MuroService.h"
#import "Muro.h"
//#import "DetalhesMuroViewController.h"


@interface UIViewController ()

@end

@implementation ThirdViewController
@synthesize tableView;
@synthesize Muros;
@synthesize tipo;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //titulo
    self.title =@"Muros";
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    
    //busca os muros
    
    self.tipo =@"prontos";
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
    return [Muros count];
}

// Retorna a célula que vai ser o conteúdo da linha solicitada
/*
-  ( UITableViewCell * ) tableView : ( UITableView * ) tableView cellForRowAtIndexPath : ( NSIndexPath  * ) indexPath
{
    UITableViewCell * célula =  [ tableView dequeueReusableCellWithIdentifier : @ "PlayerCell" ] ;
    
    Muro * cell =  ( self.Muros ) [ indexPath.row ] ;
    
    
    return cell;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CustomCell";
    CustomCell *cell = (CustomCell*)[self.tableView] dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil] objectAtIndex:0];
    }
    
    //Muro selecionado
    NSInteger linha = indexPath.row;
    Muro *muro = [Muros objectAtIndex:linha];
    
    //descrição
    cell.estacaoCell.text = muro.nome;
    
    //foto
    cell.cellImg.url = muro.url_foto;
    // Descrição
    cell.equipeCell.text = muro.desc;
    
   // return cell;
    
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
// if ([segue.identifier isEqualToString:@"ShowRecipesDetail"]) {
//   NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//   DetalhesMuroViewController *destViewController = segue.destinationViewController;
// destViewController.muro= [Muros objectAtIndex:indexPath.row];
// UIViewController *vcToPushTo = segue.destinationViewController;
//  vcToPushTo.storyboard = self.Muros;




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 UIViewController *vcToPushTo = segue.destinationViewController;
 vcToPushTo.propertyToSet = self.someProperty;
 }

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.Muros = [self.Muros objectAtIndex:indexPath.row];
    
    //Muro selecionado
    Muro *c = [Muros objectAtIndex:indexPath.row];
    //  [self performSegueWithIdentifier:@"ShowRecipesDetail" sender:self];
    
    
    DetalhesMuroViewController *detalhes = [[DetalhesMuroViewController alloc] init];
    detalhes.muro = c;
    [self.navigationController pushViewController:detalhes animated:YES];
    
 
     - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
     self.someProperty = [self.someArray objectAtIndex:indexPath.row];
     [self performSegueWithIdentifier:@"segueID" sender:self];
     }
     - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     UIViewController *vcToPushTo = segue.destinationViewController;
     vcToPushTo.propertyToSet = self.someProperty; }
     
     */




@end
