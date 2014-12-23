//
//  DetalhesMuroViewController.h
//  GaleRio
//
//  Created by Alex on 30/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Muro.h"
#import "DownloadImageView.h"
#import "ThirdViewController.h"

@interface DetalhesMuroViewController : UIViewController     

@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@property (weak, nonatomic) IBOutlet UIButton *btnVoltar;
@property (nonatomic, retain) Muro *muro;
@property (retain, nonatomic) IBOutlet DownloadImageView *img;
@property (retain, nonatomic) IBOutlet UITextView *tDesc;
@property (nonatomic, strong) IBOutlet UIView *view;

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;
@end
