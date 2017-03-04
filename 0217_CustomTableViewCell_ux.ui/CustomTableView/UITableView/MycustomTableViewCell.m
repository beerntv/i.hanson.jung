//
//  MycustomTableViewCell.m
//  UITableView
//
//  Created by Hanson Jung on 2017. 2. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//
// 이건 테이블뷰 셀
// 테이블뷰셀 하나를 객체화시켜 관리가 편하도록 파일로 생성
// 이렇게 만든 셀을 뷰컨트롤러에서 호출한다


#import "MycustomTableViewCell.h"

@interface MycustomTableViewCell ()

//프로필 이미지뷰
@property (nonatomic, weak) UIImageView *profileImgView;
@property (nonatomic, weak) UIView *profileTextContainer;

//네임 레이블
@property (nonatomic, weak) UILabel *nameLB;
@property (nonatomic, weak) UILabel *titleLB;
//자기소개 텍스트 뷰
@property (nonatomic, weak) UILabel *profileLB;


@end


@implementation MycustomTableViewCell

/////

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatSubViews]; //만들고
        [self updateLayout];  //업데이트하고 (아래만든 메서드)
        //[self test]; //
        }
        return self;
        
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    //정확하게 이야기하면 for interface builder >> storyboard 만들때 nib파일로부터 깨운다.
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}

//////////////////////////////////



- (void)layoutSubviews;
    {
        
        [self updateLayout];
    }



- (void)creatSubViews
{
    //*************Profile UI*************************
    UIImageView *profileImgVIew = [[UIImageView alloc] init];
    
    
    profileImgVIew.clipsToBounds = YES;  // profile 원만드려고
    [self addSubview:profileImgVIew];
    self.profileImgView = profileImgVIew;
    
    UIView *profileTextContainer = [[UIView alloc] init];
    [self addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init];
    titleLB.textColor = [UIColor blackColor];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.font = [UIFont systemFontOfSize:20];
    [profileTextContainer addSubview:nameLB]; //addSubview를 하면 레퍼런스 카운트는 1증가한다. self는 참조만 할 뿐
    self.nameLB = nameLB;
    
    //*********************ProfileMSG UI*******************
    
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self addSubview:profileLB];
    self.profileLB = profileLB;
    
    
    
    
    
    
}

//모든 뷰의 레이아웃에 해당하는 행동을 한다.
- (void)updateLayout {
    
    const CGFloat MARGIN = 15; //const는 아래 새로 정의해도 값을 못바꿈. 상수는 보통 대문자로 표기한다
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    
    //프로필이미지
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    self.profileImgView.layer.cornerRadius = self.profileImgView.frame.size.width/2;
    
    
    
    //텍스트 네임부분
    offsetX += self.profileImgView.frame.size.width;

    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - offsetX - MARGIN, 100);
    
    //텍스트컨테이너 Sub부분
    //self.titleLB
    self.titleLB.frame = CGRectMake(MARGIN, 0, self.profileTextContainer.frame.size.width - MARGIN * 2, self.profileTextContainer.frame.size.height/3);

    //self.nameLB
    self.nameLB.frame = CGRectMake(MARGIN, self.titleLB.frame.size.height + MARGIN, self.profileTextContainer.frame.size.width - MARGIN * 2, self.profileTextContainer.frame.size.height/3);
    
    offsetX = MARGIN;
    //offsetY += self.profileImaView.frame.size.height;
    offsetY += self.profileImgView.frame.size.height;
    //텍스트 디테일부분
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN *2), self.frame.size.height - MARGIN);
    
    //self.profileImgView
    //self.profielTextContainer
    //self.profileLB
    
}

- (void)test
{
    self.backgroundColor = [UIColor greenColor];
    self.profileImgView.backgroundColor = [UIColor redColor];
    self.profileTextContainer.backgroundColor = [UIColor blueColor];
    self.profileLB.backgroundColor = [UIColor magentaColor];
}

- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr
{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
    
    
}




@end
