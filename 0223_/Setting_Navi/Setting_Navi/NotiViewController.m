//
//  NotiViewController.m
//  Setting_Navi
//
//  Created by Hanson Jung on 2017. 2. 21..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "NotiViewController.h"

@interface NotiViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSArray *mainDataOfTableView;


@end

@implementation NotiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.navigationItem.title = @"설정";
    //테이블뷰 생성
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
        //델리게이트
        tableView.delegate = self;
        tableView.dataSource = self;
    
        //addSubview
        [self.view addSubview:tableView];
    
    NSString *title1 = @"메시지 알림";
    NSString *title2 = @"그룹 알림";
    NSString *title3 = @"앱을 실행 중일 때 알림";
    NSString *title4 = @" ";
    
    self.mainDataOfTableView = @[
                                 @{@"headerTitle":title1, @"mainText":@[@"알림창", @"메시지 미리보기", @"소리"]
                                   },
                                 @{@"headerTitle":title2, @"mainText":@[@"알림창", @"메시지 미리보기", @"소리"]
                                   },
                                 @{@"headerTitle":title3, @"mainText":@[@"실행 중일 때 알림음", @"실행 중일 때 진동", @"실행 중일 때 미리보기"]
                                   },
                                 @{@"headerTitle":title4, @"mainText":@[@"모든 알림 설정 초기화"]
                                   },
                           
                                 ];
    
    self.title = @"알림";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [_mainDataOfTableView count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        
    }
    
    switch (indexPath.section) {
        case 0:
        case 1:
        case 2: {
            
            UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
            cell.accessoryView = switchInCell;
            
            break;
        }
    }
    
    cell.textLabel.text = [_mainDataOfTableView[indexPath.section] objectForKey:@"mainText"][indexPath.row];
    
    return cell;
}

// - ()numberOfRows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}





- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [_mainDataOfTableView[section] objectForKey:@"headerTitle"];
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
