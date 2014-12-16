//
//  CustomCell.h
//  GaleRio
//
//  Created by Alex on 28/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownloadImageView.h"


@interface CustomCell : UITableViewCell {

    
}

@property (nonatomic, retain) IBOutlet UILabel *estacaoCell, *equipeCell, *distanciaCell;

@property (nonatomic, retain) IBOutlet DownloadImageView *cellImg;

@end
