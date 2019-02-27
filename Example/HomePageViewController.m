//
//  Copyright © 2014-2018 Beijing Chinaway Technologies Co., Ltd. All rights reserved.
//

//  Created By FengLei On 2018/9/30.

#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{
            // Go to your own page here
        }
            break;
        case 1:{
            // Go to your own page here
        }
            break;
        case 2:{
            // Go to your own page here
        }
            break;
        default:
            break;
    }
}

@end
