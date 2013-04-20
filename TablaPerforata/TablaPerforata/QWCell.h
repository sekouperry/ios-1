//
//  QWCell.h
//  TablaPerforata
//
//  Created by D.T. on 4/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QWCell : UITableViewCell


//@property (nonatomic, strong) IBOutlet UILabel *firstLabel;
//@property (nonatomic, strong) IBOutlet UILabel *secondLabel;
//@property (nonatomic, strong) IBOutlet UIImageView *thumbnailImage;
@property (nonatomic, strong) IBOutlet UILabel* titleLabel;
@property (nonatomic, strong) IBOutlet UILabel* textLabel;

@property (nonatomic, strong) IBOutlet UIImageView* disclosureImageView;
@property (nonatomic, strong) IBOutlet UIImageView* avatarImageView;
@property (nonatomic, strong) IBOutlet UIImageView* bgImageView;

@end
