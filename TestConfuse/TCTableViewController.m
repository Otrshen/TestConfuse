//
//  TCTableViewController.m
//  TestConfuse
//
//  Created by 申铭 on 2020/8/24.
//  Copyright © 2020 eetrust. All rights reserved.
//

#import "TCTableViewController.h"
#import "TCViewController.h"
#import "TCTableViewCell.h"

@interface TCTableViewController ()
@end

@implementation TCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 60;
    [self.tableView registerNib:[UINib nibWithNibName:@"TCTableViewCell" bundle:nil] forCellReuseIdentifier:@"TCTableViewCell"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TCTableViewCell" forIndexPath:indexPath];
    cell.titleLabel.text = @"TCViewController";
    cell.iconImageView.image = [UIImage imageNamed:@"oc_share_wechat"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    
    if (indexPath.row == 0) {
        TCViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"viewvc"];
        [vc showInfo:@"showInfo方法"];
        [self.navigationController pushViewController:vc animated:true];
    }
}

@end
