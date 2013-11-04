//
//  RoutesViewController.m
//  HomeworkLesson3
//
//  Created by YURIY NOVIKOV on 29.10.13.
//  Copyright (c) 2013 YURIY NOVIKOV. All rights reserved.
//

#import "RoutesViewController.h"
#import "Route.h"

#define NUBMER_ELEMENTS 10

@interface RoutesViewController ()

@end

@implementation RoutesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.favoriteRoutes = [[NSMutableArray alloc] initWithCapacity:NUBMER_ELEMENTS];
    self.routes = [[NSMutableArray alloc] initWithCapacity:NUBMER_ELEMENTS];
    for (int i = 1; i <= 10; i++) {
        Route *favoriteRoute = [[Route alloc] initWithName:[NSString stringWithFormat:@"Маршрут %d", i]
                                          andPrice:[NSNumber numberWithFloat:[self randomFloat]]];
        [self.favoriteRoutes addObject:favoriteRoute];
        
        Route *route = [[Route alloc] initWithName:[NSString stringWithFormat:@"Маршрут %d", i + NUBMER_ELEMENTS]
                                          andPrice:[NSNumber numberWithFloat:[self randomFloat]]];
        [self.routes addObject:route];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return self.favoriteRoutes.count;
    } else {
        return self.routes.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Route";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Route *route = nil;
    if (indexPath.section == 0) {
        route = [self.favoriteRoutes objectAtIndex:indexPath.row];
        
        UIImageView *imageView = (UIImageView *)[cell viewWithTag:3];
        imageView.image = [UIImage imageNamed:@"yellow-star"];
    } else if (indexPath.section == 1) {
        route = [self.routes objectAtIndex:indexPath.row];
        
        UIImageView *imageView = (UIImageView *)[cell viewWithTag:3];
        imageView.image = [UIImage imageNamed:@"star"];
    }
    
    UILabel *name = (UILabel *)[cell viewWithTag:1];
    name.text = route.name;
    UILabel *price = (UILabel *)[cell viewWithTag:2];
    price.text = [NSString stringWithFormat:@"$%.2f", [route.price floatValue]];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Section %d", section];
}

- (float)randomFloat {
    return (arc4random() % 10000) / 100.0f;
}

@end
