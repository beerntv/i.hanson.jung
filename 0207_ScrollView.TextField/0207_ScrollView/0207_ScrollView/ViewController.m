//
//  ViewController.m
//  0207_ScrollView
//
//  Created by Hanson Jung on 2017. 2. 7..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate,UIPageViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    //컨텐츠 사이즈 설정
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*3, 667)];
    //델리게이트 설정
    scrollView.delegate =  self;
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    //view 1
    UIImageView *newView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    newView1.image = [UIImage imageNamed:@"1.jpg"];
    [scrollView addSubview:newView1];
    
    //view 2
    UIImageView *newView2 = [[UIImageView alloc] initWithFrame:CGRectMake(scrollView.frame.size.width, 0, 375, 667)];
    newView2.image = [UIImage imageNamed:@"2.jpg"];
    [scrollView addSubview:newView2];
    
    //view 3
    UIImageView *newView3 = [[UIImageView alloc] initWithFrame:CGRectMake(scrollView.frame.size.width*2, 0, 375, 667)];
    newView3.image = [UIImage imageNamed:@"3.jpg"];
    [scrollView addSubview:newView3];
    
    UIPageControl *pc1 = [[UIPageControl alloc] init];
    
    [scrollView addSubview:pc1];
    
    
    
}

- (void)updateCurrentPageDisplay
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
