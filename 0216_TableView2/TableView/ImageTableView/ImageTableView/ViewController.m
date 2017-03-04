//
//  ViewController.m
//  ImageTableView
//
//  Created by Hanson Jung on 2017. 2. 16..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property NSArray *array10;
@property NSArray *imgName;
@property (nonatomic) NSArray* imageNameSet;
@property NSArray* dic;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *imgTV = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, self.view.frame.size.height - 30) style:UITableViewStylePlain];
    
    imgTV.delegate = self;
    imgTV.dataSource = self;
    [self.view addSubview:imgTV];
    self.array10 = [NSArray arrayWithObjects:@"갑 甲", @"을 乙", @"병 丙", @"정 丁", @"무 戊", @"기 己", @"경 庚", @"신 辛", @"임 壬", @"계 癸", nil];

    
    
    // Dictionary 예시
    //    NSArray *test = @[
    //                      @{@"name":@"쥐", @"imageFileName":@"닭.jpg"},
    //                      @{},
    //                      @{}
    //                    ];
    //
    //    [test[0] objectForKey:@"name"] // 쥐
    //    [test[0] objectForKey:@"imageFileName"] // 닭.jpg
    
    self.dic = @[
                 @{@"name":@"쥐", @"jeejee":@" 子", @"imageFileName":@"쥐.png"},
                 @{@"name":@"소", @"jeejee":@" 丑", @"imageFileName":@"소.png"},
                 @{@"name":@"호랑이", @"jeejee":@" 寅", @"imageFileName":@"호랑이.png"},
                 @{@"name":@"토끼", @"jeejee":@" 卯", @"imageFileName":@"토끼.png"},
                 @{@"name":@"용", @"jeejee":@" 辰", @"imageFileName":@"용.png"},
                 @{@"name":@"뱀", @"jeejee":@" 巳", @"imageFileName":@"뱀.png"},
                 @{@"name":@"말", @"jeejee":@" 午", @"imageFileName":@"말.png"},
                 @{@"name":@"양", @"jeejee":@" 未", @"imageFileName":@"양.png"},
                 @{@"name":@"원숭이", @"jeejee":@" 申", @"imageFileName":@"원숭이.png"},
                 @{@"name":@"닭", @"jeejee":@" 酉", @"imageFileName":@"닭.png"},
                 @{@"name":@"개", @"jeejee":@" 戌", @"imageFileName":@"개.png"},
                 @{@"name":@"돼지", @"jeejee":@" 亥", @"imageFileName":@"돼지.png"},
                 
                 ];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell-c"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-c"];
        
    }
    
    //    cell.textLabel.text = [self.array12 objectAtIndex:indexPath.row];
    
    NSString *firstString = [self.dic[indexPath.row] objectForKey:@"name"];
    NSString *secondString = [self.dic[indexPath.row] objectForKey:@"jeejee"];
    NSString *resultString = [firstString stringByAppendingString:secondString];
    
    
    //    cell.textLabel.text = [self.dic[indexPath.row] objectForKey:@"name"];
    cell.textLabel.text = resultString;
    
    NSString *imageString = [self.dic[indexPath.row] objectForKey:@"imageFileName"];
    NSString *pathWithDirectory = [NSString stringWithFormat:@"12jee/%@", imageString];

    //NSString *matrix =
    
    
    cell.imageView.image = [UIImage imageNamed:pathWithDirectory];
    
    
    // 악세사리 뷰
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    
    
    
    
    // 이미지파일 넣기 UIImage
    //    cell.textLabel.text = [self.text[indexPath.row] objectForKey:@"name"];
    //    UIImage *img = [UIImage imageNamed:self.test[indexPath.row] objectForKey:@"imageFIleName"];
    //    cell.imageView.image = img;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dic.count;
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 10;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [self.array10 objectAtIndex:section];
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"selected row is %ld", indexPath.row);
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    
}

@end
