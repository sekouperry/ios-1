//
//  QWCell.m
//  TablaPerforata
//
//  Created by D.T. on 4/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "QWCell.h"

@implementation QWCell

//@synthesize firstLabel = _firstLabel;
//@synthesize secondLabel = _secondLabel;
//@synthesize thumbnailImage = _thumbnailImage;
@synthesize titleLabel, textLabel, avatarImageView, bgImageView, disclosureImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    //for (NSString *familyName in [UIFont familyNames]) {
    //    for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
    //        NSLog(@"%@", fontName);
    //    }
    //}
    // Configure the view for the selected state
}

@end
