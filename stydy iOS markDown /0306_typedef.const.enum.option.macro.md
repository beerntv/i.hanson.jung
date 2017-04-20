## typedef

자료형의 별칭지정

- enum

- struct

## 상수 
 
- construct 
- 변하지 않는 값을 생성하고자 할때 사용
- const 키워드 사용

```objc
NSInteger  const age = 26 ;
NSString * const name = @ " jung " ;
const  NSString * name2 = @ " joo " ; // 앞으로 가면 주소값이 안바뀐다.  

age = 30;  
name = "sean"; // error
```
name2 = @ " joojoo " ;  // operating 

## 열거형

- enumeration

- 유사한 종류의 공통점을 지닌 이름으로 한 곳에 모아 정의

예) 요일, 상태 값, 월 (월) 등

- 열거형의 각 요소는 주로 정수형 (NSInteger) 상수 값

```objc
typedef  NS_ENUM ( NSInteger , UIViewAnimationTransition) {
    UIViewAnimationTransitionNone,
    UIViewAnimationTransitionFlipFromLeft,
    UIViewAnimationTransitionFlipFromRight,
    UIViewAnimationTransitionCurlUp,
    UIViewAnimationTransitionCurlDown,
};
```

## 옵션

- option
- 열거형과 유사한 모습으로 옵션값을 정의
- 주로 비트플래그를 사용하려 정의

```objc
typedef  NS_OPTIONS ( NSUInteger , UIViewAutoresizing) {
    UIViewAutoresizingNone = 0 ,
    UIViewAutoresizingFlexibleLeftMargin = 1 << 0 ,
    UIViewAutoresizingFlexibleWidth = 1 << 1 ,
    UIViewAutoresizingFlexibleRightMargin = 1 << 2 ,
    UIViewAutoresizingFlexibleTopMargin = 1 << 3 ,
    UIViewAutoresizingFlexibleHeight = 1 << 4 ,
    UIViewAutoresizingFlexibleBottomMargin = 1 << 5 
};
```

## 매크로
- macro

- 전처리 자 (Preprocessor)의 일종인 #define 사용하여 정의

- 단순한 수식 또는 변치않을 값을 정의하는데 주로 사용

(변치않을값 - static / macro 어떤걸 써야할까?
macro는 그냥 그대로 가져온다. 코드도 넣을 수 있다. 

```objc
# define  PI  3.141592 
NSLog ( @ " % f " , PI);

#define  add ( A, B ) A + B
 add ( 3 , 5 )     // 3 + 5 -> 8
```
 
##  const VS define

apple은 define을 안쓰도록 권함. 

적절히 사용할 것