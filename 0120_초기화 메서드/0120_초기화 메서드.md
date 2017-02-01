## 초기화 메서드

#### "프로퍼티를 구현부로 숨겨버리니, 객체 생성후 프로퍼티값을 변경할 수가 없어요!"
(읽기전용 프로퍼티라서 객체 생성 후에 값을 할당할 수 가 없어요)

#### 객체를 생성하면서 꼭 필요한 초기값을 세팅해주고 싶다

## 초기화 메서드

- 객체를 생성한 후 곧바로 객체를 사용할 수 있도록 초기화 해 줄 수 있는 메서드   
- 초기화는 은닉화 해둔 것을 보호.    
- 설정값은 수정하면 안되고, 처음 설정값은 필요하니 초기화 하기로
 
#### Person.h 헤더선언부

```
- (instancetype)initWithName:(NSString *)name;
					  gender:(NSString *)gender;
//             init 초기화함수. initWith
// 				매개변수 형태로 나열한 것. 줄바꿈을 해도 된다.					   
- (instancetype)initWithGender:(NSString *)gender;
					mobileNumber:(NSString *)mobile;				   				
```

#### Person.m 구현부
self 자기자신 "객체"

```
@implementation Student

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
// 부모의 init을 호출 >> 객체 생성 >> self에 입력    
// 객체 초기화와 동시에 프로퍼티값 설정까지
    
    if (self) {
        self.name = name;
        self.gender = gender;
        self.mobileNumber = mobile;
        
       
    }   
    return self;
 }   
 
```
 
## 애플에서 만든 초기화 메서드는?

- NSString, NSNumber, NSData...
  애플이 만들어놓은 프레임워크에 있는 기본 클래스들의 초기화 메서드 살펴보자
  
   
 
 

 