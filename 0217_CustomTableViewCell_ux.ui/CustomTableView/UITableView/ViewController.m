//
//  ViewController.m
//  UITableView
//
//  Created by Hanson Jung on 2017. 2. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomView.h"
#import "MycustomTableViewCell.h"


@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MyCustomView *customView = [[MyCustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
    //[customView setDataWithIMGName:@"t2.jpg" name:@"samakslgmal" msg:@"lakjgkaljfkga"];
    
    UITableView *tv = [[UITableView alloc] initWithFrame:self.view.bounds];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
    
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    MycustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    //MycustomViewCell로 바꿔준다
    
    if (cell == nil) {
        cell = [[MycustomTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        //tableView height를 설정해주기전에 유동적인게 먼저 불린다 offset margin
    }
    
    [cell setDataWithIMGName:@"t1.jpg" name:@"joo" msg:[NSString stringWithFormat:@"%ld", indexPath.row]];
    
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //ㅇ
    
    
    return 200;
}





@end
