//
//  QWContactViewController.h
//  TablaPerforata
//
//  Created by D.T. on 4/15/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface QWContactViewController : UIViewController <MKMapViewDelegate>{
    MKMapView *mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

- (IBAction) getDirections: (id) sender;

@end
