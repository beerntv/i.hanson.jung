//
//  MasterViewController.m
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 6..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "MasterViewController.h"
#import "CustomCell.h"
//#import "DetailTableViewController.h"

@interface MasterViewController ()
<UITableViewDataSource, UITableViewDelegate>

@property NSInteger num, num2;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *item1=[[NSDictionary alloc] initWithObjectsAndKeys:@"jung hanosn",@"name",@"010-3282-0000",@"phone Number",@"apple.jpeg",@"image",nil];
    NSDictionary *item2=[[NSDictionary alloc] initWithObjectsAndKeys:@"choi daepyo",@"name",@"010-8989-0000",@"phone Number",@"blueberry.jpg",@"image",nil];
    
    self.itemList = [[NSArray alloc] initWithObjects:item1, item2, nil];

    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpg"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    backgroundImageView.frame = self.tableView.frame;

    
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.itemList.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hello" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [self.itemList objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor clearColor];
    cell.nameLabel.text = [dicTemp objectForKey:@"name"];
    cell.phoneNumberLabel.text = [dicTemp objectForKey:@"phone Number"];
    cell.imgView.image = [UIImage imageNamed:[dicTemp objectForKey:@"image"]];
    
    
    self.num = 3;
   
    self.num2 = self.num;
    
    NSLog(@"%ld", self.num);
    NSLog(@"%ld", [self num]);
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
