//
//  QWCustomSegue.m
//  TablaPerforata
//
//  Created by D.T. on 4/12/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "QWCustomSegue.h"
#import "QuartzCore/QuartzCore.h"

@implementation QWCustomSegue

-(void)perform {
    
    NSLog(@"TEST");
    
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    transition.subtype = kCATransitionFromLeft; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
    
    
    
    [sourceViewController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
    
 //[[self sourceViewController] presentModalViewController: destinationController animated:NO];
    
}

@end
