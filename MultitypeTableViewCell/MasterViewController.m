//
//  MasterViewController.m
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import "MasterViewController.h"
#import "EntryFactory.h"
#import "TitledEntry.h"
#import "TitledAndDetailedEntry.h"
#import "ConfigurableCell.h"

@interface MasterViewController ()

@property (strong, nonatomic) NSArray *objects;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.objects = [[EntryFactory sharedFactory] buildRandomEntries:100];
    [self.tableView reloadData];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *reuseID = [self.objects[indexPath.row] reuseID];
    
    UITableViewCell<ConfigurableCell> *cell = [tableView dequeueReusableCellWithIdentifier:reuseID
                                                                              forIndexPath:indexPath];

    [cell configureWithModel:self.objects[indexPath.row]];
    
    return cell;
}

@end
