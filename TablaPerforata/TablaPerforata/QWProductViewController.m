//
//  QWProductViewController.m
//  TablaPerforata
//
//  Created by D.T. on 4/14/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "QWProductViewController.h"

@interface QWProductViewController ()

@end

@implementation QWProductViewController

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
    
	// Do any additional setup after loading the view.
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
