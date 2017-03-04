//
//  ViewController.m
//  Setting_Navi
//
//  Created by Hanson Jung on 2017. 2. 21..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"
//상속

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
//델리게이트

@property NSArray *array;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//
//    //네비게이션 바버튼
//    self.navigationItem.title = @"설정";
//    
//    //테이블뷰 생성
    UITableView *tableView2 = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    //Array 섹션 타이틀, 셀 텍스트
    self.array = [[NSArray alloc] initWithObjects:@"알림 및 소리", @"개인정보 및 보안", @"데이터 및 저장소", @"전화번호", @"아이디", @"질문하기", @"자주 묻는 질문", nil];
    //델리게이트
    tableView2.delegate = self;
    tableView2.dataSource = self;
    
    //addSubview
    [self.view addSubview:tableView2];
   
}


//- numberOfSections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 
 return self.array.count;
 }


// - ()numberOfRows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}

// - ()cellForRow
//커스텀테이블뷰셀 재사용 디큐
//if 커스텀뷰 생성 initWithStyle
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[MyCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        
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
    
    //cell.textLabel.text =
 
    return cell;
}

//- ()titleForHeaderInSection
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return [self.array objectAtIndex:section];
    
}

// -()heightForRow
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 40;
}

//- ()didSelectRowAtIndexPath


    
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
