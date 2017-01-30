NSObject 최상위 클래스
(NS는 NextStep의 약자)

접두어 - 클래스나 라이브러리의 패밀리

파일은 두개 생성 (swift는 하나)   

- .h 헤더파일    
헤더파일은 메뉴(우리 이런거 있어), 구현파일은 주방(보여주기 싫어)   
- .m 구현파일, 소스파일   
(.h파일에서 정의되지 않은 메서드를 생성할 수도 있다. 
다른 클래스에서는 .h파일만 import
모든 구현은 m파일을 통해서 h파일로 접근한다)

- @property   
객체가 가질수 있는 특징, 상태 등의 값   
값을 넣는걸 set, 값을 가져오는걸 get한다고 한다.

- method   
객체가 수행할 수 있는 동작 또는 기능, 행위

## @property

@property 데이터타입 프로퍼티이름;

@property id name;
@property  NSString *name;


## - ( )메서드

. - (리턴타입) 메서드이름

. - (id)talk;   
. - (void)jumpTo;
 
## 클래스코드 작성
 
```
#import <Foundation/Foundation.h>
#import "Warrior.h"

//import - .h로부터 상속받는다. .h파일의 내용을 이자리에 갖다붙였다는 뜻. 

@interface Person : NSObject
//@interface와 @end 사이에 property와 method를 정의한다


@end

```

## 객체만들기
- main.m 파일
- 생성한 클래스의 헤더파일을 import
- 객체 생성

객체는 클래스가 실질적인 형태로 주기억장치에 생성된 것
클래스는 저장을 통해 file로 저장 - (comfile)- 데이터 .exe -(실행)- 프로세스 - 메모리 

## 객체생성

#### [클래스이름 alloc];  --- 객체
#### [객체 init];

###= [[클래스이름 alloc] init];
객체를 생성하고 초기화 한 후 객체가 메모리의 어떤 위치에 있는지 주소값을 알려줍니다   
[ ] = 객체의 주소값   

Person *p1 = [Person alloc] init];   
Person 클래스(데이터타입)의 p1이라는 변수에 객체의 주소값을 담아서 객체로 생성한다.

- Person 객체공간
- *변수이름
- 객체의 주소

[[Person alloc] init];

[<클래스이름> alloc];

- 명령문은 ;세미콜론으로 끝난다
- Person 라는 객체를 만듬
- alloc - 메소드. 워리어라는 객체를 생성하라
 
[객체 init];   
init - 초기화   
 
 [[<클래스이름> alloc] init];

```
int main(int argc, const char * argv[]) {
//명령문은 { } 안에 
 
 Person *me = [[Person alloc] init];
 me.name = @"joo";
 me.gender = @"남성";
 me.mobileNumber @"010-1234-5678";
  
 }   
 
```   
## 프로퍼티의 값을 불러온다

```
NSLog(@"My name is %@", me.name);
NSLog(@"%@ : %@", me.name, me.mobileNunber);

```

## 메서드 구현

- 클래스의 interface에 메서드를 [정의]만 해두었습니다.
- 즉, 객체가 무슨행위를 할 수 있는지만 써놨다는 뜻!!
- 실제로 그 행위를 처리해야할 코드는 .m @implementation

## 클래스 헤더 (Person.h)
```
@interface Person : NSObject

@property id name;
- (id)talk;
- (id)eat;

@end
```
## 클래스 구현부 (Person.m)
```
#import Person;

@implementation Person

- (id) talk {
		    NSLog(@"말을 합니다");
		    return nil;
		    }
		    
- (id) eat {
		    NSLog(@"먹습니다");
		    return nil;
		    }
```


[객체 메서드] 호출과 return nil을 하는 이유?

- (id)talk;
// - (<반환 타입>)<메서드 이름>
이렇게 메서드를 만들 때, 반환할 자료형을(id) 명시했기 때문입니다. 
반드시 return을 해줘야한다. 메서드의 결과값을 받겠다는 뜻.
지금은 반환받을게 없어서 임의로 nil을 넣은 것.
우리반에서 누가 공부를 제일 잘해? - 

// - (void)<메서드 이름>
반환타입이 없는경우, 이렇게 만들면 return을 안해도 됩니다.
void는 비어있다, 반환할 값이 없다는 것을 의미합니다.

## 메서드 호출
```
main.m

Person *me = [[Person alloc] init];   
[me talk];
```


		NSString *grade = [Grade toGrade:93];
        	NSLog(@"%@",grade);
        
        //위에거 줄인 방식. 같은거다.
        //NSLog(@"%@",[Grade toGrade:93] );
        
        
## 점(.) 연산자 (점 표기법) 

instance.property = value
이것은 다음 표현식을 사용하는 것과 동일하다

[instance setProperty: value];

>점연산자는 좋은 프로그래밍 스타일이 아니다. 점연산자는 프로퍼티에 접근하도록 만들어졌다. 보통 인스턴스 변수의 값을 설정하고 가져오는데 사용한다. 일을 수행하는 메서드는 보통 애플의 문서에서 "Task(작업)"라고 부른다. 작업은 보통 대괄호 [ ]를 사용한 '메시지 표현식'을 쓰는 것이 바람직 하다.

       
## 클래스와 데이터타입

클래스는 메모리 안에 있는 것, 객체는 파일

지금까지 구조체가 아닌 클래스로 새로운 데이터 타입 Person을 만들고, 변수를 선언한 후 변수에 메모리를 생성하는 방법까지 알아보았다. 클래스는 변수 이름만 주는 것이 아니라 new 연산자와 생성자를 이용해서 메모리를 생성해주어야 한다는 것을 배워 보았다.

구조체(struct)는 클래스(Class)가 없던 시절 C 언어에서 새로운 사용자 정의 데이터 타입(User Definition Data Type)을 만드는 역할을 담당하고 있었다. 그리고 자바 언어에서는 구조체를 더욱 발전시켜 사용자 정의 데이터 타입을 만들 수 있는 클래스(Class)를 제공하고 있다. 현재 여기서는 발전된 클래스의 측면은 고려하지 않고 있다. 우리가 앞으로 배울 내용이 바로 구조체에서 발전된 클래스의 능력이다.

구조체와 클래스는 기본 데이터 타입(Basic Data Type)을 조합해서 새로운 데이터 타입을 만들어내는 데이터 타입 생성기이다. 이것은 아주 중요한 사항이며 반드시 기억해야 하는 내용이다. 구조체와 클래스가 데이터 타입 생성기라는 말만 이해하고 있어도 많은 부분이 해결되는 느낌을 갖는 분도 있을 것이다.

□ 구조체와 클래스의 정의
- 구조체와 클래스는 데이터 타입 생성기이다.

자바로 프로그램을 한다는 것은 클래스로 새로운 데이터 타입을 만드는 것이며 앞으로도 계속 그럴 것이다. 자바 언어를 조금이라도 공부한 분이라면 수없이 클래스를 만들고, 그 클래스로 작업을 할 것이다. 그런데 정작 클래스가 무엇을 하는 건지 모른다면 자바 언어 자체를 포기한 것이나 마찬가지이다. 여기서 기초적인 클래스의 의미를 알아두기 바란다.

데이터타입 - 프로그래머가 메모리를 얻어올 때 그 크기를 지정하는 것. 
			메모리를 얻기위한 하나의 수단이며 효과적인 메모리 활용이 가능.
			메모리의 형태를 지정하는 것
			
변수 - 프로그램 실행 중에 값을 임시 저장하기 위한 공간
	   데이터타입에서 정한 크기의 메모리 할당
	   변수의 목적은 데이터를 보관하기 위함
	   
## Q&A
1. property, method 를 만들어서 최종적으로 도달할 목적지가 무엇인지..
property - 저장하라 memory
method - 연산하라 CPU

2. 오버라이딩 오버로딩
3. NSLog는 지금은 일단 그 메서드가 실제로 성공적으로 호출이 되는지를 검사하기 위한 코드에요. iOS앱에서 사용자는 로그 화면을 못 보기 때문에, 개발자가 버그 찾는 용도 이외에는 안 쓰는 걸로 알고 있어요. 


## 참고사이트

#### 퀵헬프 작성 알아보기
[https://www.raywenderlich.com/66395/documenting-in-xcode-with-headerdoc-tutorial](https://www.raywenderlich.com/66395/documenting-in-xcode-with-headerdoc-tutorial)
[http://stackoverflow.com/questions/19168423/what-are-the-new-documentation-commands-available-in-xcode-5](http://stackoverflow.com/questions/19168423/what-are-the-new-documentation-commands-available-in-xcode-5)
[https://www.appcoda.com/documenting-source-code-in-xcode/](https://www.appcoda.com/documenting-source-code-in-xcode/)

