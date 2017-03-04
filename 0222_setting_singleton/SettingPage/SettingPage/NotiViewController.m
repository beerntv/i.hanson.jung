//
//  NotiViewController.m
//  SettingPage
//
//  Created by Hanson Jung on 2017. 2. 22..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "NotiViewController.h"
#import "DataCenter.h"

@interface NotiViewController () <UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate>

@property NSArray *mainDataOfTableView;
@property NSArray *array1, *array2, *array3, *array4, *array;

@end

@implementation NotiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //
    //네비게이션 바버튼
    self.title = @"알림";
    //
    //    //테이블뷰 생성
    //UITableView *tableView2 = [[UITableView alloc] initWithFrame:self.view.bounds];
    UITableView *notificationView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    self.array1 = [[NSArray alloc] initWithObjects:@"알림창", @"메시지 미리보기", @"소리", nil];
    self.array2 = [[NSArray alloc] initWithObjects:@"알림창", @"메시지 미리보기", @"소리", nil];
    self.array3 = [[NSArray alloc] initWithObjects:@"실행 중일 때 알림음", @"실행 중일 때 진동", @"실행 중일 때 미리보기", nil];
    self.array4 = [[NSArray alloc] initWithObjects:@"모든 알림 설정 초기화", nil];
    
    
    self.array = @[self.array1, self.array2, self.array3, self.array4];
    
    notificationView.delegate = self;
    notificationView.dataSource = self;
    
    //addSubview
    [self.view addSubview:notificationView];
    //Array 섹션 타이틀, 셀 텍스트
    NSString *title1 = @"메시지 알림";
    NSString *title2 = @"그룹 알림";
    NSString *title3 = @"앱을 실행 중일 때 알림";
    NSString *title4 = @" ";
    NSString *footer1 = @"그룹 정보에서 특정 그룹에 대한 알림을 설정할 수 있습니다";
    NSString *footer2 = @" ";
    NSString *footer3 = @" ";
    NSString *footer4 = @"연락처와 그룹에 대한 모든 설정을 처음 상태로 되돌립니다";
    
    
    self.mainDataOfTableView = @[
                                 @{@"headerTitle":title1, @"footerTitle":footer1, @"mainText":@[@"알림창", @"메시지 미리보기", @"소리"]
                                   },
                                 @{@"headerTitle":title2, @"footerTitle":footer2, @"mainText":@[@"알림창", @"메시지 미리보기", @"소리"]
                                   },
                                 @{@"headerTitle":title3, @"footerTitle":footer3, @"mainText":@[@"실행 중일 때 알림음", @"실행 중일 때 진동", @"실행 중일 때 미리보기"]
                                   },
                                 @{@"headerTitle":title4, @"footerTitle":footer4, @"mainText":@[@"모든 알림 설정 초기화"]
                                   },
                                 
                                 ];
    
    
    
//    //델리게이트
//    tableView2.delegate = self;
//    tableView2.dataSource = self;
//    
//    //addSubview
//    [self.view addSubview:tableView2];
//    
}


//- numberOfSections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;
}

// - ()numberOfRows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    switch (section) {
    //        case 0:
    //            return self.array1.count;
    //        case 1:
    //            return self.array2.count;
    //        case 2:
    //            return self.array3.count;
    //        default:
    //            return self.array4.count;
    //    }
    return [self.array[section] count];
}

- (void)changedSwitchValue:(UISwitch *)sender {
    
    //(NSNumber *)switchOnOffValue
    
//    [DataCenter sharedInstance].isOnOff1 = sender.on;
    
//    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:sender.on] forKey:@"switch1"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:sender.on] forKey:@"switch1"];
    
}

// - ()cellForRow

//- ()titleForHeaderInSection

// -()heightForRow

//- ()didSelectRowAtIndexPath
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell-v"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
    }
    
        switch (indexPath.section) {
            case 0:{
                UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
                cell.accessoryView = switchInCell;
            }
                break;
            case 1:{
                UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
                cell.accessoryView = switchInCell;
                
                if (indexPath.row == 1) {
                    
                    //[DataCenter sharedInstance].isOnOff1 = [[NSUserDefaults standardUserDefaults] objectForKey:@"switch1"];

                    UISwitch *s1 = [[UISwitch alloc] init];

                    s1.on = [DataCenter sharedInstance].isOnOff1;
                    [s1 addTarget:self action:@selector(changedSwitchValue:) forControlEvents:UIControlEventValueChanged];
                    cell.accessoryView = s1;
                    
                    s1.on = [[[NSUserDefaults standardUserDefaults] objectForKey:@"switch1"] boolValue];
                    
                    
                    
                }
                 break;
            }
            case 2:{
                
                UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
                cell.accessoryView = switchInCell;
                
                break;
            }
           
        }
        //        switch (indexPath.section) {
        //            case 0:
        //                cell.textLabel.text = [self.array1 objectAtIndex:indexPath.row];
        //                break;
        //            case 1:
        //                cell.textLabel.text = [self.array2 objectAtIndex:indexPath.row];
        //                break;
        //            case 2:
        //                cell.textLabel.text = [self.array3 objectAtIndex:indexPath.row];
        //                break;
        //            default:
        //                cell.textLabel.text = [self.array4 objectAtIndex:indexPath.row];
        //                break;
        //        }]]
        cell.textLabel.text = self.array[indexPath.section][indexPath.row];
        
        if (indexPath.section == 3) {
            [cell.textLabel setTextColor:[UIColor redColor]];

        }
        
        
        //        if (cell == 0) {
        //            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
        //
        //
        //        }
    
    return cell;
}

//- ()titleForHeaderInSection
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [_mainDataOfTableView[section] objectForKey:@"headerTitle"];
    
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
   return [_mainDataOfTableView[section] objectForKey:@"footerTitle"];
}

// -()heightForRow
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 40;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [[tableView cellForRowAtIndexPath:indexPath] setSelected:NO animated:NO];
    
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
