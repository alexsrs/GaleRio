//
//  FourthViewController.h
//  GaleRio
//
//  Created by Alex on 25/11/14.
//  Copyright (c) 2014 Creapix Tecnologia Criativa. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FourthViewController : UIViewController<MKMapViewDelegate>{
    CLLocationManager *locationManager;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@end
