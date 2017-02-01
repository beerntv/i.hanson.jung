## 클래스와 객체

.h 정의파일
.m 구현파일. 소스파일
.mm 구현, 소스파일. C++언어가 있는 파일

조합 .h - .m / .h - .mm

프레임워크를 import <> 
파일을 import " "

## #import vs @class

두 클래스가 서로 import를 한다면?   
순환오류가 생긴다. 이때 @class 를 서로 써준다.   
>###"그런게 있어. 참고만 해"

### @class 

해당 클래스의 존재를 알려준다. 순환참조에서 쓴다.    
@class 를 하면 반드시 구현파일 .m 에서 해당헤더를 #import 해야한다.   
.m파일은 보여주지 않는다. 상속은 언제다 .h을 본다

### #import

.h 파일내 모든 것들을 알수 있다

### @프로토콜 
이런것도 있다. (나중에)

## Objective-C Class의 특징

interface (선언부에 작성하며 은닉할때 구현부에도 작성할 수 있다)
implementation (구현파일 .m에 쓸수 없다)

## 선언부 - interface
- 클래스 
- 객체와 통신할 메서드
- 프로퍼티변수를 선언



## 구현부 - implementation
- 클래스의 메서드를 구현하는 방법(실제코드)가 담겨있다.
- .m파일에만 작성된다

함수는 어떠한 행위를 하는 것
구현부는 어떠한 행위를 할지 결정짓는 것
함수  NS~~~는 @interface에 들어가서도 안되며 반드시 { } 안에 들어가야 한다.

## 인스턴스화(객체화)
```
@property NSString *name;
@property NSString *carColor;

Car *tico = [Car alloc]; >> 인스턴스화
tico = [tico init];  >> 초기화 

tico.name = @"티코"; >> 인스턴스 = 실제값 
tico.carColor = @"레드";  >> name : 티코 , carColor : 레드

```
## 메서드
컴퓨터가 수행할 명령어
인스턴스에 적용되거나, 클래스에 적용되는 행동으로 나눌 수 있다.
객체는 자기자신만 안다. 메서드를 통해서 상대방 객체의 정보를 접근하거나 가져온다.

메서드를 보낸다 = "메세지를 보낸다"


메서드 구현 작성할 때 항상 '얘가 객체로 됐을 때 어떻게 될거야'를 염두에 두고 작성. 
(최종 결과는 객체이지 클래스가 아니다)
self.property 

### 메서드타입 (+,-) 두가지

```
- (NSInteger)doubleNum:(NSInteger)number   
// 반환타입    메서드명    :    매개변수  
 {
  // 행위 : 입력된 숫자를 2배해서 반환해준다.
  
  return number * 2;
  
 // 반환값은 반환타입과 같은 타입만 반환 가능하다.
 // 한개의 값만 반환할 수 있다.
 // 반환값이 없을 땐 반환타입 (void)로 작성한다
 // return 사용시 그 이후에 작성된 코드는 실행되지 않으며 메서드는 종료된다. 
  }
  
 //메서드 내용 (Action) - 중괄호{ }로 함수의 영역을 표시한다.
 //매개변수는 :로 입력부분을 구분
 //매개변수(내부변수)는 해당함수 { }안에서만 사용 가능하다.
``` 
## 캐스팅
다른형식의 값을 서로 맞출 때

```
id wing = [[Student alloc] initWithName:@"joo"];
wing.grade = 10;

```
- id 라서 wing에는 grade (프로퍼터)가 없음   
((Student *)wing).grade = 10;   
- 형변환 (보통 아래로 다운캐스팅)
- 총합(NSInteger)를 나눴을 때 평균이 실수(소숫점)으로 나와서 총합을 잠시 실수로 변환할때  

## 메서드 호출 = 메시징
- 메서드를 불러오고 싶다면 object를 메시징(함수호출) 해야합니다.

```
[object  message:parameter];     
  객체       메시지
```
## 메서드 중복 사용의 예

```
- (NSString *)myName {
 	return @"hanson";
 }
 - (void)printName:(NSString *)name {
      NSLog(@"My name is %@", name);
 }
 	
```
- 메서드 두번 호출   
NSString *name = [self myName];   
[self printName;name];   

- 메서드 중복 사용 예   
[self printName:[self myName]];

#메서드 종류

## init 메서드 override

```
// apple에서 주는 init 메서드
- (instancetype)init
{
    self = [super init];
    if (self) {
        <#statements#>
    }
    return self;
}
```
custom init 메소드 - (instancetype) initWithNum

## instancetype = 객체타입

클래스 메소드    
- 객체없이 어떤 기능을 수행하고자 할 때.
(but, 프로퍼티라던가 변수를 사용할 수 없다.)

+(id)classMethod;

```
// 대표적으로 alloc 메서드
[Car   alloc]; 
 클래스  메소드 
```



+(CGFloat)inchForCm:(CGFloat)cm;

