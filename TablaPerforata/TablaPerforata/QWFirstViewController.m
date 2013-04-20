//
//  QWFirstViewController.m
//  TablaPerforata
//
//  Created by D.T. on 4/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "QWFirstViewController.h"
#import "QWAppDelegate.h"
#import "QWCell.h"
#import "QuartzCore/QuartzCore.h"

@interface QWFirstViewController ()

@end

@implementation QWFirstViewController

@synthesize tableView;



//array local care va contine dictionaru din appdelegate
- (NSArray *)table {
	return [(QWAppDelegate *)[[UIApplication sharedApplication] delegate]
			getTable];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage tallImageNamed:@"bg.png"]];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView reloadData];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidAppear:(BOOL)animated{
    //UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView reloadData];
    
}



- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Number of rows is the number of time zones in the region for the specified section.
    return self.table.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier=@"myCell";
    
    QWCell *cell=(QWCell * ) [self.tableView dequeueReusableCellWithIdentifier: CellIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"QWCell" owner:self options:nil];
        cell = (QWCell *)[nib objectAtIndex:0];
    }

    [cell.titleLabel setFont:[UIFont fontWithName:@"RexliaRg-Regular" size:13]];
    [cell.textLabel setFont:[UIFont fontWithName:@"RexliaRg-Regular" size:9]];
    cell.titleLabel.text  = [[self.table objectAtIndex:indexPath.row] objectForKey:@"firstLabel"];
    cell.textLabel.text = [[self.table objectAtIndex:indexPath.row] objectForKey:@"secondLabel"];
    //cell.titleLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row];
    NSString *cellImage = [[self.table objectAtIndex:indexPath.row] objectForKey:@"image"];
    cell.avatarImageView.image = [UIImage imageNamed:cellImage];
    //cell.disclosureImageView.image = [UIImage tallImageNamed:@"list-arrow.png"];
    return cell;
}



@end



