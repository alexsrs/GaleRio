//
//  FirstViewController.m
//  GaleRio
//
//  Created by Alex on 25/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import "FirstViewController.h"




@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *playerVars = @{
                                 @"playsinline" : @1,
                                 };
    [self.playerView loadWithVideoId:@"gO-Tmpun7BU" playerVars:playerVars];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end