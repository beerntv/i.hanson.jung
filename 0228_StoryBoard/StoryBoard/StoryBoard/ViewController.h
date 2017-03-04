//
//  ViewController.h
//  StoryBoard
//
//  Created by Hanson Jung on 2017. 2. 27..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, weak) IBOutlet UIView *testView;
//스토리보드에서 만든 UIView를 프로퍼티로 연결하겠다는 말.  IBOutlet
//12열 원이 비어있다면 스토리보드와 연결되어있지 않다는 뜻

@property (nonatomic, weak) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *label2;

- (IBAction)btnAction:(UIButton *)sender;

@end

