//
//  QWProductViewController.h
//  TablaPerforata
//
//  Created by D.T. on 4/14/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWPhotoBrowser.h"

@interface QWProductViewController : UIViewController <MWPhotoBrowserDelegate> {
    NSArray *_photos;
    UISegmentedControl *_segmentedControl;
    MWPhotoBrowser *cbrowser;
    UIImageView *firstImage;
}
@property (nonatomic, retain) NSArray *photos;
@property (nonatomic, retain) MWPhotoBrowser *cbrowser;
@property (nonatomic,retain) IBOutlet UIImageView *firstImage;

@end
