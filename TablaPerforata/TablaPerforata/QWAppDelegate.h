//
//  QWAppDelegate.h
//  TablaPerforata
//
//  Created by D.T. on 4/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QWAppDelegate : UIResponder <UIApplicationDelegate> {
        	NSArray *table;
}



@property (nonatomic, retain) IBOutlet NSArray *table;
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet NSArray *getTable;

-(void)customizeiPhoneTheme;

-(void)configureiPhoneTabBar;

-(void)configureTabBarItemWithImageName:(NSString*)imageName andText:(NSString *)itemText forViewController:(UIViewController *)viewController;

@end
