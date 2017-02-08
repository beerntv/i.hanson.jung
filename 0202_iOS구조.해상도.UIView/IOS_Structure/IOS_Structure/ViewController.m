//
//  ViewController.m
//  IOS_Structure
//
//  Created by Hanson Jung on 2017. 2. 2..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


//@property(nonatomic) CGPoint center;
@property UIView *myView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
// 시작지점. main( ) 같은 역할
// iphone6 = 375 * 667
    
    
    
    
    
//    UIView *w1 = [[UIView alloc] initWithFrame:CGRectMake(137, 283, 90, 10)];
//    w1.backgroundColor = [UIColor magentaColor];
//    [self.view addSubview:w1];
//     
//    UIView *w2 = [[UIView alloc] initWithFrame:CGRectMake(227, 283, 10, 90)];
//    w2.backgroundColor = [UIColor cyanColor];
//    [self.view addSubview:w2];
//
//    UIView *w3 = [[UIView alloc] initWithFrame:CGRectMake(137, 293, 10, 90)];
//    w3.backgroundColor = [UIColor purpleColor];
//    [self.view addSubview:w3];
//    
//    UIView *w4 = [[UIView alloc] initWithFrame:CGRectMake(147, 373, 90, 10)];
//    w4.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:w4];
    
    
    UIView *x1 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
    UIView *x2 = [[UIView alloc] initWithFrame:CGRectMake(80, 10, 285, 40)];
    UIView *x3 = [[UIView alloc] initWithFrame:CGRectMake(80, 60, 285, 10)];
    
    x1.backgroundColor = [UIColor grayColor];
    x2.backgroundColor = [UIColor lightGrayColor];
    x3.backgroundColor = [UIColor darkGrayColor];
    
    [self.view addSubview:x1];
    [self.view addSubview:x2];
    [self.view addSubview:x3];
    

    
//    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
//
//    firstView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:firstView];
//    
//    UIView *firstView3 = [[UIView alloc] initWithFrame:CGRectMake(15, 115, 345, 100)];
//    
//    firstView3.backgroundColor = [UIColor redColor];
//    [self.view addSubview:firstView3];
//    
//    UIView *firstView4 = [[UIView alloc] initWithFrame:CGRectMake(15, 215, 345, 100)];
//    
//    firstView4.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:firstView4];

    
    
    
    
//    UIView *firstView2 = [[UIView alloc] initWithFrame:CGRectMake(15, self.view.frame.size.height-110, 345, 100)];
//    
//    firstView2.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:firstView2];
//
//    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(0, 64, 375, 555)];
//    v1.backgroundColor = [UIColor magentaColor];
//    [self.view addSubview:v1];
//    
   
    

// clipsToBounds
//        UIView *firstView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
//    
//        firstView2.backgroundColor = [UIColor greenColor];
//        firstView2.clipsToBounds = YES;
//    //프로퍼티에 yes를 넣겠다
//    [firstView2 setClipsToBounds:YES];
//    // 메서드의 매개변수를 넘기겠다
//        [self.view addSubview:firstView2];
//    
//        UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
//        v1.backgroundColor = [UIColor magentaColor];
//        [firstView2 addSubview:v1];
    
    
///////////////    수업
//
////        self.view.backgroundColor = [UIColor blackColor];
////        self.myView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 300)];
//    
//
//        UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
//    
//        myView.backgroundColor = [UIColor blueColor];
////        //1
////        self.myView.clipsToBounds = YES;
//
////
//        UIView *subView = [[UIView alloc] init];
//        subView.frame = CGRectMake(10, 30, 200, 200);
//        [subView setBackgroundColor:[UIColor redColor]];
////        [self.myView addSubview:subView];
////        //1과 같은 말
////        [self.view addSubview:subView];
//    
////    [self.myView addSubview:self.myView];
////
//        [myView addSubview:subView];
//  //      [self.myView addSubview:subView];
//    

    }

// myView 컬러를 변경
// - (void)changeColor
//{
//    self.myView.backgroundColor = [UIColor whiteColor];
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
















