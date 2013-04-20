//
//  QWAppDelegate.m
//  TablaPerforata
//
//  Created by D.T. on 4/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "QWAppDelegate.h"

@implementation QWAppDelegate
@synthesize table;
@synthesize getTable;

- (void)createdData{
	NSMutableArray *data = [NSMutableArray array];
	[data addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					 @"rotund 1.0.png", @"image",
					 @"TABLA PERFORATA", @"firstLabel",
					 @"CU PERFORATII ROTUNDE", @"secondLabel",
					 [NSNumber numberWithInt:163770],@"area", nil]];
    
	[data addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					 @"patrat 1.0.png", @"image",
					 @"TABLA PERFORATA", @"firstLabel",
					 @"CU PERFORATII PATRATE", @"secondLabel",
					 [NSNumber numberWithInt:268601], @"area", nil]];
    
	[data addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					 @"alungit 1.0.png", @"image",
					 @"TABLA PERFORATA", @"firstLabel",
					 @"CU PERFORATII ALUNGITE", @"secondLabel",
					 [NSNumber numberWithInt:54475], @"area", nil]];
    
	[data addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					 @"perforat 1.0.png", @"image",
					 @"TABLA PERFORATA", @"firstLabel",
					 @"ANTI ALUNECARE", @"secondLabel",
					 [NSNumber numberWithInt:65758], @"area", nil]];
    
    [data addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					 @"expandat 1.0.png", @"image",
					 @"TABLA EXPANDATA", @"firstLabel",
					 @"", @"secondLabel",
					 [NSNumber numberWithInt:65758], @"area", nil]];
    
	self.table = [NSArray arrayWithArray:data];
}


- (NSArray *)getTable {
	return self.table;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self customizeiPhoneTheme];
    
    [self configureiPhoneTabBar];
    
    [self createdData];
    return YES;
}

-(void)customizeiPhoneTheme
{
    [[UIApplication sharedApplication]
     setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:NO];
    
    UIImage *navBarImage = [UIImage tallImageNamed:@"menubar.png"];
    
    [[UINavigationBar appearance] setBackgroundImage:navBarImage forBarMetrics:UIBarMetricsDefault];
    
    
    UIImage *barButton = [[UIImage tallImageNamed:@"menubar-button.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    
    [[UIBarButtonItem appearance] setBackgroundImage:barButton forState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    
    UIImage *backButton = [[UIImage tallImageNamed:@"back.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 14, 0, 4)];
    
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButton forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UISearchBar appearance] setBackgroundImage:[UIImage tallImageNamed:@"searchbar-bg.png"]];
    //[[UISearchBar appearance] setSearchFieldBackgroundImage:[UIImage tallImageNamed:@"searchbar-field.png"] forState:UIControlStateNormal];
    
    UIImage *minImage = [[UIImage tallImageNamed:@"slider-fill"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 10, 0, 10)];
    UIImage *maxImage = [UIImage tallImageNamed:@"slider-track.png"];
    UIImage *thumbImage = [UIImage tallImageNamed:@"slider-handle.png"];
    
    [[UISlider appearance] setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateHighlighted];
    
    UIImage* tabBarBackground = [UIImage tallImageNamed:@"tabbar.png"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    
    
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage tallImageNamed:@"tabbar-active.png"]];
    
}

-(void)configureiPhoneTabBar
{
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
	
    //UIViewController *controller1 = [tabBarController viewControllers][0];
    //[self configureTabBarItemWithImageName:@"tab-icon1.png" andText:@"Elements" forViewController:controller1];
    
    
    //UIViewController *controller2 = [tabBarController viewControllers][1];
    //[self configureTabBarItemWithImageName:@"tab-icon2.png" andText:@"Buttons" forViewController:controller2];
    
    
    UIViewController *controller1 = [tabBarController viewControllers][0];
    [self configureTabBarItemWithImageName:@"tab-icon3.png" andText:@"List" forViewController:controller1];
    
    
    UIViewController *controller2 = [tabBarController viewControllers][1];
    [self configureTabBarItemWithImageName:@"tab-icon4.png" andText:@"Contact" forViewController:controller2];
    
}

-(void)configureTabBarItemWithImageName:(NSString*)imageName andText:(NSString *)itemText forViewController:(UIViewController *)viewController
{
    UIImage* icon1 = [UIImage tallImageNamed:imageName];
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:itemText image:icon1 tag:0];
    [item1 setFinishedSelectedImage:icon1 withFinishedUnselectedImage:icon1];
    
    [viewController setTabBarItem:item1];
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
