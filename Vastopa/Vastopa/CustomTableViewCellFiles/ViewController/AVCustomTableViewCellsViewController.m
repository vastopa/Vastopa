//
//  AVCustomTableViewCellsViewController.m
//  Vastopa
//
//  Created by Adam Vastopa on 2016-11-19.
//  Copyright © 2016 wwfe. All rights reserved.
//

#import "AVCustomTableViewCellsViewController.h"
#import "Constants.h"
#import "AVEventWithMapTableViewCell.h"

@interface AVCustomTableViewCellsViewController () < UITableViewDelegate, UITableViewDataSource >

@property (nonatomic, strong) UITableView *tableView;

//datasources for cells
@property (nonatomic, strong) NSArray *events;

@end

@implementation AVCustomTableViewCellsViewController

- (void)loadView {
    [super loadView];
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AVEventWithMapTableViewCell *cell = (AVEventWithMapTableViewCell *)[tableView dequeueReusableCellWithIdentifier:EVENT_WITH_MAP_CI forIndexPath:indexPath];
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.events.count;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200.0;
}

#pragma mark - Accessors

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
        [_tableView registerClass:[AVEventWithMapTableViewCell class] forCellReuseIdentifier:EVENT_WITH_MAP_CI];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor blackColor];
    }
    return _tableView;
}

//eventually make it so user of app can select type of cell they want to see (or random) and fill in text
// fields of input one by one in a modal view controller with black background and white text field
// where the first page is white writing starting with "Imagine an app that you use for..."
// and each entry can be a required piece of data or opional with skip button (restaurant name will search zomato api
// with name and city as parameters)
- (NSArray *)events {
    return @[@{ @"title"   : @"Beers with Brayden",
                @"when"    : @"Mon. Sept. 19th",
                @"time"    : @"8:30pm",
                @"where"   : @"Local Public Eatery",
                @"address" : @"2210 Cornwall Avenue",
                @"city"    : @"Vancouver",
                @"country" : @"Canada",
                @"postal"  : @"V6K 1B5" },
             @{ @"title"   : @"Lunch Meeting",
                @"when"    : @"Tues. Sept. 20th",
                @"time"    : @"12:00pm",
                @"where"   : @"Local Public Eatery",
                @"address" : @"2210 Cornwall Avenue",
                @"city"    : @"Vancouver",
                @"country" : @"Canada",
                @"postal"  : @"V6K 1B5" },
             @{ @"title"   : @"Dinner Date",
                @"when"    : @"Fri. Sept. 23rd",
                @"time"    : @"7:30pm",
                @"where"   : @"Local Public Eatery",
                @"address" : @"2210 Cornwall Avenue",
                @"city"    : @"Vancouver",
                @"country" : @"Canada",
                @"postal"  : @"V6K 1B5" }];
}

@end
