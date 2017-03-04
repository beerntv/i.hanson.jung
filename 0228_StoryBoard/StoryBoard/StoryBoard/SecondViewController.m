//
//  SecondViewController.m
//  StoryBoard
//
//  Created by Hanson Jung on 2017. 2. 27..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
<UITableViewDelegate, UITableViewDataSource>
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    // forIndexPath - 스토리보드로 하겠다
    
    // 셀을 커스텀하게 두종류로 한다면
//    if (indexPath.section == 0) {
//        
//        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test1Cell" forIndexPath:indexPath];
    
//    cell.textLabel.text = @"1";
//    
//    } else {
//        
//        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test2Cell" forIndexPath:indexPath];
    
//    cell.textLabel.text = @"22";
//  
    
    
    
    
    return cell;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
