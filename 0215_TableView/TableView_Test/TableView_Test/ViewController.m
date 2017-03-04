//
//  ViewController.m
//  TableView_Test
//
//  Created by Hanson Jung on 2017. 2. 15..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDataSource>
@property (nonatomic, strong) NSArray *list;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tv = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.list = [NSArray arrayWithObjects:@"봄",@"여름",@"가을",@"겨울", nil];
    [self.view addSubview:tv];
    tv.dataSource = self;
    
    
   
    
    
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_v"];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell_v"];
    }
    
    
    
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    
    cell.textLabel.text = [self.list objectAtIndex:indexPath.row];
    
//    NSLog(@"tableview row : %ld", indexPath.row);
    
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section){
        case 0:
            return @"section 1";
            break;
        case 1:
            return @"section 2";
            break;
        case 2:
            return @"section 3";
            break;
        case 3:
            return @"section 4";
            break;
        
        default:
            return @"";
            break;
            
    }
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
