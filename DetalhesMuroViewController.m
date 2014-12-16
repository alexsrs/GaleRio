//
//  DetalhesMuroViewController.m
//  GaleRio
//
//  Created by Alex on 30/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import "DetalhesMuroViewController.h"

@interface DetalhesMuroViewController ()

@end

@implementation DetalhesMuroViewController
@synthesize muro;
@synthesize tDesc;
@synthesize img;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view from its nib.
    
    // titulo da NavigationBar é o nome do muro
    self.lblTitle.text = muro.nome;
    // atualiza o texto das views
    self.tDesc.text = muro.desc;
    //foto
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:muro.url_foto]];
    UIImage *image =[[UIImage alloc] initWithData:data];
    self.img.image = image;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
