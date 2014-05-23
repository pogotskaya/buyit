//
//  ViewControllerBase.m
//  buyIt
//
//  Created by Alla Pogotskaya on 5/23/14.
//  Copyright (c) 2014 alla. All rights reserved.
//

#import "ViewControllerBase.h"
#import "CreateListView.h"
#import "ListItemView.h"
#import "DataSource.h"

static NSString *listItemReusedId = @"listItemViewId";
static NSString *createListReusedId = @"createListViewId";

@interface ViewControllerBase ()
@property (strong, nonatomic) DataSource *dataSource;
@end

@implementation ViewControllerBase

- (UITableView *) getTable
{
    return nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.getTable setDataSource: self];
    [self.getTable setDelegate: self];
    self.dataSource = [DataSource new];
    
    for (int i = 0; i <= 5; i++) {
        [self.getTable registerNib:[UINib nibWithNibName:@"ListItemView" bundle:nil] forCellReuseIdentifier:listItemReusedId];
    }
    
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListItemView *cell = [tableView dequeueReusableCellWithIdentifier:listItemReusedId];
    
    NSString *title = [self.dataSource.getLists objectAtIndex:indexPath.row];
    
    cell.listImage.image = [UIImage imageNamed: @"2 image"];
    
    [cell.listNameButton setTitle: title forState:UIControlStateNormal];
    [cell.listNameButton addTarget:self action:@selector(listNameClicked:) forControlEvents:(UIControlEvents) UIControlEventTouchDown ];
    
    return cell;
}

-  (void)listNameClicked:(id)sender {
    UIButton *button = (UIButton*) sender;
    
    [self performSegueWithIdentifier:@"navigateToList" sender:button.titleLabel.text];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataSource.getLists count];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


@end
