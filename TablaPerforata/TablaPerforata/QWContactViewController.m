//
//  QWContactViewController.m
//  TablaPerforata
//
//  Created by D.T. on 4/15/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "QWContactViewController.h"

#define BRAGADIRU_LATITUDE 44.37239
#define BRAGADIRU_LONGITUDE 25.980287

#define UNIVERSITY_LATITUDE 44.434232
#define UNIVERSITY_LONGITUDE 26.102148

@interface QWContactViewController ()

@end

@implementation QWContactViewController
@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIColor* bgColor = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"bg.png"]];
    [self.view setBackgroundColor:bgColor];
    [super viewDidLoad];


    //CLLocationCoordinate2D centerCoord = { GEORGIA_TECH_LATITUDE, GEORGIA_TECH_LONGITUDE };
    CLLocationCoordinate2D centerCoord = { BRAGADIRU_LATITUDE, BRAGADIRU_LONGITUDE };
    mapView.frame = self.view.bounds;
    //   CLLocationCoordinate2D centerCoord = { 51.50856545427112, -0.06922372021487878 };
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (centerCoord, 450, 450);
    [mapView setRegion:region animated:NO];
    
    
    
    [mapView setCenterCoordinate:centerCoord animated:YES];
    
    NSLog(@"latitude : %f  longitude : %f",    mapView.centerCoordinate.latitude,mapView.centerCoordinate.longitude);
    
    CLLocationCoordinate2D annotationCoord;
    
    annotationCoord.latitude = BRAGADIRU_LATITUDE;
    annotationCoord.longitude = BRAGADIRU_LONGITUDE;
    
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    annotationPoint.coordinate = annotationCoord;
    annotationPoint.title = @"Componente Industriale";
    annotationPoint.subtitle = @"fosta fabrica de bere \"FULGERUL\" Bragadiru";
    [mapView addAnnotation:annotationPoint];
    


}


- (IBAction)getDirections:(id)sender{
    
    // Create an MKMapItem to pass to the Maps app
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BRAGADIRU_LATITUDE, BRAGADIRU_LONGITUDE);
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:coordinate
                                                   addressDictionary:nil];
    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:placemark];
    [mapItem setName:@"My Place"];
    
    
    // Set the directions mode to "Walking"
    // Can use MKLaunchOptionsDirectionsModeDriving instead
    NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    // Get the "Current User Location" MKMapItem
    MKMapItem *currentLocationMapItem = [MKMapItem mapItemForCurrentLocation];
    // Pass the current location and destination map items to the Maps app
    // Set the direction mode in the launchOptions dictionary
    [MKMapItem openMapsWithItems:@[currentLocationMapItem, mapItem]
                   launchOptions:launchOptions];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
