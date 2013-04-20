//
//  QWFirstViewController.h
//  TablaPerforata
//
//  Created by D.T. on 4/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QWFirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
        UITableView *tableView;
    
}

@property (nonatomic, retain) IBOutlet UITableView *tableView;

@end
