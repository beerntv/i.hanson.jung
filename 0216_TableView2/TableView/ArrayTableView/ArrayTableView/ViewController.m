//
//  ViewController.m
//  ArrayTableView
//
//  Created by Hanson Jung on 2017. 2. 16..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDataSource>

@property NSArray *array;
@property NSArray *array10gan;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //tableview 생성
    UITableView *arrayTV = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20) style:UITableViewStylePlain];
    
    //addSubview
    [self.view addSubview:arrayTV];
    arrayTV.dataSource = self;
    
    self.array10gan = [[NSArray alloc] initWithObjects:@"갑", @"을", @"병", @"정", @"무", @"기", @"경", @"신", @"임", @"계", nil];
    self.array = [[NSArray alloc] initWithObjects:@"쥐", @"소", @"호랑이", @"토끼", @"용", @"뱀", @"말", @"양", @"원숭이", @"닭", @"개", @"돼지", nil];
    
//    NSDictionary *data = [NSDictionary alloc] initWithObjectsAndKeys:<#(nonnull id), ...#>, nil
//    [{"name":String, "imgURL":String}]
//   @[@{"name":@"사자", @"imgURL":@"bear.jpg"}, ....,.,]
    
    
    
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell-v"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
        
        switch (indexPath.section) {
            case 0:
            case 1:
            case 2: {
                
                UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
                cell.accessoryView = switchInCell;
                
                break;

    }
    
   
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    return cell;
}






- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.array10gan.count;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return [self.array10gan objectAtIndex:section];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
