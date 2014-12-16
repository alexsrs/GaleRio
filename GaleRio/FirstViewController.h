//
//  FirstViewController.h
//  GaleRio
//
//  Created by Alex on 25/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "YTPlayerView.h"


@interface FirstViewController : UIViewController <YTPlayerViewDelegate>


@property(nonatomic, strong) IBOutlet YTPlayerView *playerView;
@end

