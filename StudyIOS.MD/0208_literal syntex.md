
리터럴이란, 컴파일시 프로그램 내에 정의되어 있는 그대로 정확히 해석되어야 할 값을 의미한다. 이에 비해, 변수란 프로그램의 실행 중에 상황에 따라 다른 값들을 표현할 수 있으며, 상수는 프로그램 실행 중 늘 같은 값을 표현한다. 그러나 리터럴은 명칭이 아니라, 값 그 자체이다. 예를 들어 아래의 수식에서 "x"는 변수이며 "7"은 리터럴이다.

x = 7

리터럴은 숫자 뿐 아니라, 문자 또는 문자열일 수 있다.

## NSNumber literal 
Foundation 프레임웍의 NSNumber 클래스는 스칼라값을 감싸는 객체이다. 객체에 들어갈 수 있는 값은 C에서는 ‘수’로 취급할 수 있던 char, short, int, long, long long 등의 정수들과 Float, double과 같은 실수들 그리고 BOOL, bool 값등이다. 이렇게 숫자값을 객체에 감싼 것을 Boxed values라고도 한다

![](https://beerntv.files.wordpress.com/2017/02/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-02-08-e1848be185a9e18492e185ae-5-14-02.png?w=1232)

```objc

void main(int argc, const char *argv[]){

    // character literals
    NSNumber *theLetterZ = @'Z';
    // = [NSNumber numberWithChar:'Z'];

    // integral literals
    NSNumebr *fortyTwo = @42;
    // = [NSNumner numberWithInt:42];

    NSNumber *fortyTwoUnsigned = @42U;
    // = [NSNumber numberwithUnsignedInt:42U];

    NSNumebr *fortyTwoLong = @42L;
    // = [NSNumebr numberWithLong:42L];

    NSNumber *fortyTwoLongLong = 42LL;
    // = [NSNumber numberWithLongLong:42LL];

    // floating point literals
    NSNumber *piFloat = @3.141592654F;
    // = [NSNumber numberWithFloat:3.141592654F];

    NSNumber *piDouble = @3.141592654;
    // = [NSNumber numberWithDouble:3.141592654];

    // BOOL
    NSNumber *yesNumber = @YES;
    // = [NSNumber numberWithBOOL:YES];

}
```
정리하자면 숫자값 앞에 @를 붙이기만하면 NSNumber 객체로 둘러싼 객체를 바로 얻을 수 있다는 것이다.

NSNumber 리터럴은 단순히 숫자값으로 객체를 만드는 것을 넘어서 C수식을 계산하여 그 결과를 사용할 수 있다. 이때는 @( {수식 } )의 형태로 수식을 괄호로 둘러싸주고 그 앞에 @을 붙이면 된다.
```objc
NSNumber *smallestInt = @(-INT_MAX - 1);
NSNumber *piOverTwo = @(M_PI / 2);
```

또한 enum 타입에 대해서도 만들 수 있다.

```objc
typedef enum { Red, Green, Blue } Color;
NSNumber *favoriteColor = @(Green);
```
NSNumber 뿐만 아니라 NSStirng도 동일한 방식으로 C계산식의 결과를 리터럴을 통해 NSString 객체로 만들 수 있다 .

```objc
NSString *path = @(getenv("PATH"));
// = [NSString stringWithUTF8String:getenv("PATH")];
```
## 컨테이너 리터럴

Objective-C는 고정 배열이나 사전을 만들기위한 표현식 문법을 추가로 제공한다.
```objc
 NSArray *array = [ @"Hello", NSApp, [NSNumber numberWithInt:42] ];
 ```
 
배열은 @[ ]를 통해서 만든다. 각 원소는 “,”를 통해서 구분되며, 마지막에 nil을 넣어줄 필요는 없다. 사전은 아래와 같이 만들 수 있다.

```objc
NSDictionary *dictionary = @{
    @"name" : NSUserName(),
        @"date" : [NSDate date],
        @"processInfo" : [NSProcessInfo processInfo]
};
```
Dictionay는 기존 메시지를 통한 방식과 달리 키 : 값의 구성으로 이루어지며, 마지막에 nil은 붙지 않는다.

## 객체 치환 (Object substcripting)

다음 코드는 NSMutableArray와 NSMutableDictionay 객체의 서브스크립팅을 보여준다. 서브 스크립팅은 기존의 objectAtIndex 메시지를 사용하지 않고 일반 C 배열처럼 배열의 원소에 접근하는 방식을 의미한다.

```objc
NSMutableArray * array = @[ ... ];
NSUInteger idx = 3;
id newObject = ..... ;
id oldObject = array[idx];
array[idx] = newOBject; // oldObject를 newObject로 바꾼다.
NSMutableDictionary *dictionary = @{ .... };
NSString *key = @"...";
oldObject = dictionary[key];
dictionary[key] = newObject // 역시 두 객체를 바꿈
```

배열의 서브 스크립팅은 사실 아래와 같이 동작한다.

```objc
NSUInteger idx = 3;
id value = objects[idx];
```

위 코드는 4번째 객체를 배열로부터 구하는데, 두 번 째 줄은 아래와 완전히 하는 일이 일치하는 듯 하다.

```objc
id value = [object objectAtIndexedSubscript:idx];
```   
어떤 인덱스에 대해 새로운 객체로 덮어 쓸 때는

```objc
objects[idx] = newValue;
```   
그리고 이것은 아래의 코드로 번역된다.

```objc
[object setObject:newValue atIndexedSubscript:idx];
 Dict 타입의 서브 스크립팅
```
```objc
id key = ... ;
id value = objects[key];
```
이는 다시 아래와 같이 번역된다.

```objc
id value = [objects objectForKeyedSubscript:key];
```
enum 은 정수가 나열되는 형태인데, 각 요소가 특정한 타입이 되도록 명시할 수 있다. 이 역시 modern Objective-C의 기능이다.

```objc
typedef enum : unsigned char { Red, Green, Blue } Color;
```   
이 때 Color 타입의 변수는 Red, Green, Blue의 값만 가질 수 있고, 각 값은 unsigned char 타입이다.


## NSArray literals

![](https://beerntv.files.wordpress.com/2017/02/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-02-08-e1848be185a9e18492e185ae-5-14-11.png?w=1232)

```objc 

// before
NSArray *words = [NSArray arrayWithObjects:@"list", @"of", @"words", nil];
// after (array with some strings and numbers)
NSArray *words = @[@"list", @"of", @"words", @123, @3.14];
```
Note that it’s not needed to include the ending nil sentinel anymore using the new syntax.


## NSDictionary literals

![](https://beerntv.files.wordpress.com/2017/02/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-02-08-e1848be185a9e18492e185ae-5-14-21.png?w=1232)

```objc
NSDictionary *d = @{
  @"key": @"value",
  @"name": @"Joris",
  @"n": @1234,
  @3: @"string"
};
```

As with NSArray no need to include the nil sentinel here either.