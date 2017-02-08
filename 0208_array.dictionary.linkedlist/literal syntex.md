
리터럴이란, 컴파일시 프로그램 내에 정의되어 있는 그대로 정확히 해석되어야 할 값을 의미한다. 이에 비해, 변수란 프로그램의 실행 중에 상황에 따라 다른 값들을 표현할 수 있으며, 상수는 프로그램 실행 중 늘 같은 값을 표현한다. 그러나 리터럴은 명칭이 아니라, 값 그 자체이다. 예를 들어 아래의 수식에서 "x"는 변수이며 "7"은 리터럴이다.

x = 7

리터럴은 숫자 뿐 아니라, 문자 또는 문자열일 수 있다.

NSNumber literal 

```objc

NSNumber *n1 = @1000;  // [NSNumber numberWithInt:1000] 
NSNumber *n2 = @3.1415926; // [NSNumber numberWithDouble:3.1415926]
NSNumber *c = @'c'; // [NSNumber numberWithChar:'c']
NSNumber *b = @YES; // [NSNumber numberWithBool:YES]

// uses the usual suffixes for `unsigned` (`u`) and `float` (`f`)
NSNumber *f = @2.5f;
NSNumber *nu = @256u;
```

![](https://github.com/hansonjung/i.hanson.jung/blob/master/image/스크린샷%202017-02-08%20오후%205.14.02.png)
