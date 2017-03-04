//
//  ViewController.m
//  SettingPage
//
//  Created by Hanson Jung on 2017. 2. 22..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"
#import "NotiViewController.h"
#import "DataCenter.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate>

@property NSArray *array1, *array2, *array3, *array4, *array;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //
    
    //    UILabel *label = [UILabel alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    
    
    //네비게이션 바버튼
    self.title = @"설정";
    //
    //    //테이블뷰 생성
    //    UITableView *tableView2 = [[UITableView alloc] initWithFrame:self.view.bounds];
    UITableView *tableView2 = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    
    //Array 섹션 타이틀, 셀 텍스트
    self.array1 = [[NSArray alloc] initWithObjects:@"프로필 사진", @"개인정보 및 보안", @"알림 및 소리", nil];
    self.array2 = [[NSArray alloc] initWithObjects:@"채팅방 배경화면", nil];
    self.array3 = [[NSArray alloc] initWithObjects:@"전화번호", @"아이디", nil];
    self.array4 = [[NSArray alloc] initWithObjects:@"질문하기", @"자주 묻는 질문", nil];
    
    self.array = @[self.array1, self.array2, self.array3, self.array4];
    //델리게이트
    tableView2.delegate = self;
    tableView2.dataSource = self;
    
    //addSubview
    [self.view addSubview:tableView2];
    
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
    
    //    [DataCenter sharedInstance].isOnOff = sender.on;
    
    NSNumber *switchOnOffValueNumber = [NSNumber numberWithBool:sender.on];
    
    [[NSUserDefaults standardUserDefaults] setObject:switchOnOffValueNumber forKey:@"OnOff"];
}




// - ()cellForRow
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell-v"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
    }
    switch (indexPath.section) {
        case 0:{
            
            if (indexPath.row != 2) {
                
                //NSLog(@"%d", [DataCenter sharedInstance].isOnOff);
                UISwitch *s0 = [[UISwitch alloc] init];
                //                    s0.on = [DataCenter sharedInstance].isOnOff;
                [s0 addTarget:self action:@selector(changedSwitchValue:) forControlEvents:UIControlEventValueChanged];
                cell.accessoryView = s0;
                
                if ([[NSUserDefaults standardUserDefaults] objectForKey:@"OnOff"] != nil) {
                    
                    s0.on = [[[NSUserDefaults standardUserDefaults] objectForKey:@"OnOff"] boolValue];
                }
                
            } else if (indexPath.row == 2) {
                
                [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
                
            }
            break;
        }
        case 1:
            break;
        case 2: {
            
            if (indexPath.row == 0) {
                
                UILabel *phoneNum = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
                cell.accessoryView = phoneNum;
                phoneNum.text = @"010-3282-8445";
                phoneNum.textColor = [UIColor lightGrayColor];

                [phoneNum setFont:[UIFont systemFontOfSize:12]];
                

            } else {
                
                UILabel *phoneNum = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
                cell.accessoryView = phoneNum;
                phoneNum.text = @"ID";
                [phoneNum setTextAlignment:NSTextAlignmentRight];
                phoneNum.textColor = [UIColor lightGrayColor];
                [phoneNum setFont:[UIFont systemFontOfSize:12]];

                
            }
            
            break;
            
        }
        case 3: {
            
            UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
            cell.accessoryView = switchInCell;
            
            break;
        }
            
    }
    
    switch (1) {
        case 2:
            switch (1) {
                case 2:
                    
                    break;
                    
                default:
                    break;
            }
            break;
            
        default:
            break;
    }
    cell.textLabel.text = self.array[indexPath.section][indexPath.row];
    
    
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
    
    
    //        if (cell == 0) {
    //            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
    //
    //
    //        }
    
    
    
    
    return cell;
}

//- ()titleForHeaderInSection
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return @" ";
    
}

// -()heightForRow
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 40;
}

//- ()didSelectRowAtIndexPath

// footer test
//-  (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
//    UIView *view = [[UIView alloc] init];
//    if (section ==3) {
//        [view setBackgroundColor:[UIColor blueColor]];
//    }
//    return view;
//
//}
//
//
//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
//    if (section == 3) {
//        return 100;
//    }
//    return 0;
//}

//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:NO];



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [[tableView cellForRowAtIndexPath:indexPath] setSelected:NO animated:YES];
    
    if ((indexPath.section == 0) && (indexPath.row == 2)) {
        NotiViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"NotiViewController"];
        [self.navigationController pushViewController:detailVC animated:YES];
    }
    else if ((indexPath.section == 1) && (indexPath.row == 0)) {
        NotiViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"NotiViewController"];
        [self.navigationController pushViewController:detailVC animated:YES];
    
    }
}


/*
 // 셀 눌러서 다른 VC로 이동
 -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 [tableView deselectRowAtIndexPath:indexPath animated:YES];
 if (indexPath.row == 1) {
 //다음 페이지 이동
 SettingDetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SettingDetailViewController"];
 [self.navigationController pushViewController:detailVC animated:YES];
 
 // 데이터값으로 해줄 수 있다. 설정처럼 테이블이 일정할때
 
 if (indexPath.row == 1) {
 [detailVC setData:data1];
 }else if (indexPath.row == 2)
 [detailVC setData:data2];
 }else if (indexPath.row == 3)
 [detailVC setData:data3];
 }else if (indexPath.row == 4)
 [detailVC setData:data4];
 }
 
 }
 [self.navigationController pushViewController:detailVC animated:YES];
 //
 
 }
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
