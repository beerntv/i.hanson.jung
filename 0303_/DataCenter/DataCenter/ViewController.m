//
//  ViewController.m
//  DataCenter
//
//  Created by Hanson Jung on 2017. 3. 3..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()
<UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    NSData *data = [NSData datawithContentsOfFile
//    UIIma  *img = [UIImage imagewithcontentsOffile
//    NSDictionary *dic = [NSDictionary dictionarywithcontensOffile]                   ]
    
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
    NSDictionary *list = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"list %@", list);
    
    
    
    
    NSLog(@"%@", [DataCenter sharedInstance].plistArr);
  
    //NSString *str = [[NSString alloc] init];
    

    
    /*
    NSString *imgPath = [[NSBundle mainBundle] pathForResource:@"cards" ofType:@"png"];
    UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
    // 이미지 같은 경우는 아래 방식을 많이 씀. 위에 두줄과 다른건 아래 얘는 메모리에 불러놓고 쓰고 위에 두줄은 파일을 매번 불러옴
    UIImage *img2 = [UIImage imageNamed:@"cards.png"];
    // @"card@2x.png" 로 쓸 수 있는 장점이 있다. 해상도별로
    // Assets에 세종류의 이미지를 넣어놓으면 자동으로 기기마다 부른다.
    // UIImage *img2 = [UIImage imageNamed:@"back"];
    
    //bundle 은 싱글턴 객체를 제공
    //파일명과 타입을 불러옴
    
    */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[[DataCenter sharedInstance].plistArr objectAtIndex:0] count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    
//    UILabel *lb = [[UILabel alloc] init];
//    [cell addSubview:lb];
    NSArray *arr = [[[DataCenter sharedInstance].plistArr objectAtIndex:0] objectsForKeys:@[@"name", @"phone number"] notFoundMarker:[NSNull null]];
    
    cell.textLabel.text = [NSString stringWithFormat:@"name : %@, phone : %@", arr[0], arr[1]];
    
    
    return cell;
    
}


@end
