//
//  ViewController.m
//  buyIt
//
//  Created by Alla Pogotskaya on 4/18/14.
//  Copyright (c) 2014 alla. All rights reserved.
//

#import "ViewController.h"
#import "CreateListView.h"
#import "ListItemView.h"
#import "DataSource.h"

static NSString *listItemReusedId = @"listItemViewId";
static NSString *createListReusedId = @"createListViewId";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) DataSource *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.dataSource = [DataSource new];
    
    [self.tableView setTableHeaderView: [[CreateListView alloc] init]];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CreateListView" bundle:nil] forHeaderFooterViewReuseIdentifier:createListReusedId];
    
    for (int i = 0; i <= 5; i++) {
        [self.tableView registerNib:[UINib nibWithNibName:@"ListItemView" bundle:nil] forCellReuseIdentifier:listItemReusedId];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListItemView *cell = [tableView dequeueReusableCellWithIdentifier:listItemReusedId];
    
    NSString *title = [self.dataSource.getLists objectAtIndex:indexPath.row];
    [cell.listNameButton setTitle: title forState:UIControlStateNormal];
    
    cell.listImage.image = [UIImage imageNamed: @"2 image"];
    
    return cell;
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
