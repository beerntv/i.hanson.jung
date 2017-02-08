## Protocol
컴퓨터 간에 데이터 통신을 원활하게 하기위해 필요한 ***통신규약*** (=룰).
### "객체지향에선 두 클래스 간의 약속"
>이런 이름의 함수를 만들어라!

델리게이트 패턴을 통한 프로토콜. 델리게이트는 방식이다.

***Objective-C에선 Delegate라는 이름으로 사용한다.**

- Delegate 선언   *CustomClass.h

```objc
//  MyView.h
//  ViewTest
//
//

#import <UIKit/UIKit.h>

//프로토콜 선언
@protocol MyViewDelegate;  

@interface MyView : UIView

//프로토콜 이름
@property (weak) id<MyViewDelegate> delegate; 

@end


@protocol MyViewDelegate <NSObject>

//프로토콜로 정의된 메서드
- (void)didSelectedBtn:(UIButton *)btn;


@end

```
- Delegate 구현   *CustomClass.m

```objc
//  MyView.m
//  ViewTest
//
//

#import "MyView.h"

@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        [self createView];
    }
    return self;
}

- (void)createView
{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 80, 30)];
    [btn setTitle:@"눌러요" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
}


- (void)btnClick:(UIButton *)sender
{
//프로토콜 메서드 사용
    [self.delegate didSelectedBtn:sender];
    NSLog(@"title %@",sender.titleLabel.text);
}


@end


```
```objc

```



## Protocol
- 복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 원할하게  
하기 위해 필요한 통신규약, 신호 송신의 순서, 데이터의 표현법, 오류 검출법 등을 정함 

## Delegate 

### "이벤트함수(Event function) 는  델리게이트함수(Delegate pattern) 이다"  

라고 표현하는것이 가장 적절하다고 얘기할 수 있겠다. 
그렇다면 델리게이트를 알려면 이벤트 함수를 알면되겠네??  
맞다.  우리는 이벤트 함수가 어떻게 호출되는지만 알면 델리게이트에 대한 이해는 완벽하게 끝난다고 
볼수 있다.  

델리게이트는 정확히 표현하자면 객체 간의 데이터(파라미터나 속성, 메서도 모두포함)통신시 
전달자 역활을 하는것이 델리게이트다. 다른 객체를 대신해 특정 작업을 수행하는 클래스이다.
해당 delegate가 app의 동작을 모니터링하며 특정 상황( 사용자가 정한 ) 메소드의 역할의 대리자(위임받음)가 되어 대신 기능을 구현하게 하는 강력한 시스템이다. 즉 메소드 및 변수가 가지는 목적에 따라 비슷한 의도를 지닌 조건의 묶음을 만들어 간편하게 사용할 수 있다. 일반 class와 달리 delegate는 복잡한 상속 관계가 필요없고,  오버라이딩을 사용하지 않아 더욱 편리하다.


### "특정객체에서 발생한 이벤트를 다른 객체에게 통보할 수 있도록 해주는 선언이다"  

라고 정의할 수 있겠다.   
델리게이트가 가장 많이 쓰이는곳은 아무래도 이벤트 처리 시에 가장 많이 활용되고 사용되고 있다.
실제로 델리게이트는 이벤트를 처리하기 위한 용도가 아니더라도 여러분야에서 사용될 수 있겠지만.
일반적인 프로그래머라면 거의 대부분이 이벤트발생 처리를 돕기위해 사용하는것이 대부분일것이다.
따라서 델리게이트는 이벤트의 처리과정을 알면  델리게이트가 자동적으로 이해가 가게될것이다.

### 델리게이트의 선언과 사용 
절차만을 정리하자면 이렇다. 

1. 내가 노출하고 싶은 이벤트를 발생시키고 싶은 객체에 델리게이트를 @Protocol 선언문을 이용해서 
    이벤트 메서드를 정의한다. 
2. 특정한 이벤트가 발생하였으므로, 이벤트 메서드를 델리게이트에게 시켜서(위임해서..) 노출한다.
3. 이제 다른객체들은 이 객체에서 정의된 이벤트함수를 써서 이벤트발생시에 해당 함수를 실행한다.

###
>다시 아론 힐리가스의 설명을 인용하자면,
NS계열 표준 파운데이션 객체들한테 메시지를 보낼 땐 일일이 할 일을 정해주는 내 코드가 대장이었다. 아주 달콤하고 단순한 존재로 살아가는 것. 그러나 현실의 앱은 몇시간씩 실행되고, 객체들은 끊임없이 쏟아져 나오는 거대한 이벤트들의 흐름에 노예처럼 반응한다. 이런 역할을 맡는 객체가 NSRunLoop의 인스턴스. 이 run loop는 한자리를 차지하고 앉아 기다리다가 무슨일이 일어나면 그제야 다른 객체에 메시지를 보낸다.
***이를 가리켜 런루프가 콜백callback한다고 표현한다.*** 

콜백callback의 세가지 형태

- 타깃과 액션 : 앞서 말한 기다림의 시작전에 이렇게 말한다. "무슨일 일어나면 특정 메시지를 특정 객체에 보내라" 메시지를 받는 객체가 ***타깃target***  이고, 보낼 메시지를 골라주는 셀렉터가 ***액션action*** 이다

- 도우미 객체(helper object) : "프로토콜을 준수하는 도우미 객체가 여기 있으니, 상황이 발생하면 이 객체에 메시지를 보내라." 도우미 객체는 흔히 ***델리게이트(delegate)*** 또는 ***데이터소스(data source)*** 라고 불린다.

- 알림(notification) : 알림센터라는 객체가 있다. 기다림이 시작하기 전에 알림 센터에 이렇게 말한다. "이 객체가 이런저런 알림들을 기다리고 있다. 그 중 하나가 도착하면 그 객체에 메시지를 보내라" 무슨일이 일어나면 객체는 ***알림***을 알림 센터에 보내고, 알림 센터는 이를 해당 객체에 전달한다.


셀렉터(@selector) : 

### UITextField
- 사용자 텍스트 입력을 위한 UI Component
* 주요 Property

```objectivec
@property(nonatomic) UITextBorderStyle borderStyle; 
// 해당 텍스트필드의 테두리스타일을 결정 default는 UITextBorderStyleNone 

@property(nullable, nonatomic,copy)   NSString               *placeholder;   
//사용자가 텍스트필드에 입력하기 전에 나타나는 문자. 70%의 선명도를 가진다. 희미하게 나온다는 뜻 
@property(nullable, nonatomic,weak) id<UITextFieldDelegate> delegate;
// delegate를 받기위함.  
@property(nullable, nonatomic,copy)   NSAttributedString     *attributedPlaceholder NS_AVAILABLE_IOS(6_0); 
@property(nonatomic)    BOOL clearsOnBeginEditing;
@property(nonatomic)    BOOL adjustsFontSizeToFitWidth; 
@property(nonatomic)    CGFloat  minimumFontSize;     
@property(nullable, nonatomic,strong) UIImage                *background;           
@property(nullable, nonatomic,strong) UIImage                *disabledBackground;   
@property(nonatomic,readonly,getter=isEditing) BOOL editing;
@property(nonatomic) BOOL allowsEditingTextAttributes NS_AVAILABLE_IOS(6_0); 
```
### UITextFieldDelegate

```objectivec
// textField를 Editing하기 직전
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField; 

// textField를 editing하고 난 직후
// 해당 textField가 first responder가 되는 듯
- (void)textFieldDidBeginEditing:(UITextField *)textField;           

// textField eiditing을 끝내기 직전
// YES를 반환하면 eiditing이 멈추고 responder를 resign한다.
// NO를 반환하면 eiditing세션이 멈춘다. (키보드가 내려갈듯)
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;          

// textField eiditing을 끝낸 직후
// textFieldShouldEndEditing메소드에서 NO를 반환해야 호출되는 메소드 인듯?(정확하지 않음 확인필요)
- (void)textFieldDidEndEditing:(UITextField *)textField;             // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called

// 이 method는 유저가 textfield에 타이핑을 할때마다 call되는 것 같다. 
// feild에 특정한 단어를 사용하지 못하도록 제한하는데에 사용하는 듯.
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;   // return NO to not change text

// clear button을 눌렀을 때 콜되는 메소드 
// NO를 반환하면 무시된다.
- (BOOL)textFieldShouldClear:(UITextField *)textField;               

// return button을 눌렀을 때 콜되는 메소드 
// NO를 반환하면 무시된다. 
- (BOOL)textFieldShouldReturn:(UITextField *)textField;              // called when 'return' key pressed. return NO to ignore.
```

### UIScrollView

### UITableView
-  리스트의 형태로 정보를 보여주는 View ( 많이 쓰이는 View이다!!)
-  두 개의 Style이 있다. ( Plain, Grouped)
-  한 개 이상의  section을 가진다.  section은 row로 구성이 되며 header & footer section을 선택적으로 넣을 수 있다.
- Grouped Table Views
-- 각 Section을 Group의 형태로 나타낼 수 있다. 데이터의 디테일한 정보를 표현할 때 많이 사용된다.
- UITableView는 UIScroolView를 상속 받았다. SCrollView와 가장 다른 점은 **reuse**이다. 공통적인 레이아웃을 사용하여 여러번 화면을 보여줄 필요가 있는 경우 뷰를 재사용해야 메모리 관리를 수월하게 할 수 있다.
-  아래의 두 method의 차이점을 잘 알아야 한다!!
-  
```objectivec
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }

	cell.textLabel.text = [NSString stringWithFormat:@"%@", indexPath.row];
 }
```

```objectivec
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
	cell.textLabel.text = [NSString stringWithFormat:@"%@", indexPath.row];
 }
```
>위 두개의 메소드의 차이점은 cell을 alloc하고 안하고에 차이가 있다. 위의 메소드에서는 cell이 nil일 경우 cell객체를 인스턴스화 했지만 아래의 메소드에서는 cell이 nil이라는 조건조차 걸지 않았다. 즉 아래의 메소드를 사용하다 queue에 cell이 없을 경우 app이 다운될 수 있다. 
>아래의 메소드는 storyboard를 이용했을 때 사용하는 메소드이다. 스토리보드에서 cell을 만들고 난 이후이기 때문에 무조건 cell이 있다는 가정을 하고 이 메소드를 실행하는 것이다. 스토리보드를 사용했다면 아래의 메소드를 코드로만 구현했다면 위의 메소드를 사용해야 한다!!

### UITableViewDelegate
- 대표적인 역할로는
-- variable height support
-- header or footer뷰를 제공
-- cell을 선택하였을 때 수행할 동작 관리
-- 셀이 삭제 될 때의 동작 등의 관리 등등

### UITableViewDataSource
- 프로토콜을 사용하여 tableView에 보여줄 데이터를 관리하기 위한  delegate를 정의해 둔 것.
- @requires로는 테이블 뷰의 각 섹션별 row의 수를 설정하는 것과
```objectivec
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
```
- 각 row별 cell을 정의하는 것이 있다.
```objectivec
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
```



