//
//  MyCustomTableViewCell.m
//  CustomUIView
//
//  Created by Jeheon Choi on 2017. 2. 17..
//  Copyright © 2017년 JeheonChoi. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@interface MyCustomTableViewCell ()

//자기소개 레이블
@property (nonatomic, weak) UIImageView *profileImgView;
@property (nonatomic, weak) UIView *profileTextContainer;
//네임 레이블
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;
//디테일 레이블
@property (nonatomic, weak) UILabel *profileLB;


@end

@implementation MyCustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatSubviews];
        [self updateLayout];
        //[self test];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)layoutSubviews {
    [self updateLayout];        // frame 재조정 적용
}

/////////////////////


- (void)creatSubviews {
    
    //******************PROFILE IMG VIEW******************//
    
    //ARC reference count를 주목할 필요가 있다.
    UIImageView *profileImgView = [[UIImageView alloc] init]; // alloc할때 RC(레퍼런스카운트) 1증가
    profileImgView.clipsToBounds = YES;
    [self.contentView addSubview:profileImgView]; // addSubview할때 RC 1증가 (현재 2)
    // creatSubview를 빠져나가면 RC는 0가 된다. 근데 여기서 만든 객체 profileImgView는 밖에서도 호출하고 싶다.
    // property를 만들어주고
    // @property (nonatomic, weak) UIImageView *profileImgView;
    // weak로 생성. weak는 RC를 증가시키지 않고 1로 유지.
    // 만약 alloc 시에 self.profileImgView = [[UIImageView alloc] init]하면 property에서 이미 1 createSubviews 끝나도 프로퍼티 불러온거라 안없어지니 addSubview한거까지 2는 계속 유지. (이건 strong일 경우)
    // 만약2. property(weak)를 alloc하면?  alloc안됨.생성안됨.
    
    self.profileImgView = profileImgView;
    
    
    //******************NAME UI******************//
    UIView *profileTextContainer = [[UIView alloc] init];
    [self.contentView addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc] init];
    [self.profileTextContainer addSubview:titleLB];
    [titleLB setTextAlignment:NSTextAlignmentCenter];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init];
    [nameLB setFont:[UIFont boldSystemFontOfSize:15]];
    [self.profileTextContainer addSubview:nameLB];
    [nameLB setTextAlignment:NSTextAlignmentCenter];
    self.nameLB = nameLB;

    
    //******************ProfileMSG UI******************//
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 4;
    [self.contentView addSubview:profileLB];
    self.profileLB = profileLB;
    
}

- (void)updateLayout
{
    const CGFloat MARGIN = 15; //const는 아래 새로 정의해도 값을 못바꿈. 상수는 보통 대문자로 표기한다
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    //프로필 이미지 부분
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    self.profileImgView.layer.cornerRadius = self.profileImgView.frame.size.width/2;
    
    //텍스트 네임 부분
    offsetX += self.profileImgView.frame.size.width;
    
    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - offsetX - MARGIN, 100);
    
    self.titleLB.frame = CGRectMake(MARGIN, 0, self.profileTextContainer.frame.size.width - MARGIN * 2, self.profileTextContainer.frame.size.height/3);
    self.nameLB.frame = CGRectMake(MARGIN, self.titleLB.frame.size.height + MARGIN, self.profileTextContainer.frame.size.width - MARGIN * 2, self.profileTextContainer.frame.size.height/3);
    
    
    //텍스트 디테일 부분
    offsetX = MARGIN;
    offsetY += self.profileImgView.frame.size.height;
    
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN *2), self.frame.size.height- MARGIN);
    
}

//- (void)test
//{
//    self.backgroundColor = [UIColor blackColor];
//    self.profileImgView.backgroundColor = [UIColor yellowColor];
//    self.profileTextContainer.backgroundColor = [UIColor blueColor];
//    self.profileLB.backgroundColor = [UIColor redColor];
//}

- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr
{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
}


@end
