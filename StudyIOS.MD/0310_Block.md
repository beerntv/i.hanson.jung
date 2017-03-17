## Block

- Block은 객체다.

- Block은 C함수의 확장판  
 
- 함수명 부분이 없고 ^로 표현  
 
- 외부값을 capture해서 사용한다.

- 함수를 변수처럼 주고 받을 수 있다.

> Block은 런타임에 생성되는 다이나믹 함수(Dynamic Function) 이다. 여기서 런타임(Runtime)과 다이나믹(Dynamic) 이란 의미에 중점을 두면 '병렬처리'나 '비동기처리(Asyncronous Processing)', 혹은 '함수형 언어(Functional Language)'의 특징과 비슷하다.


## Block 문법

###구현부

```objc
^{
	NSLog(@"This is a block");

}
```


###선언부

```objc
void (^simpleBlock)(void);
```


###Call

```objc

void (^simpleBlock)(void);
simpleBlock = ^{
	NSLog(@"This is a block");
};
```

###구문합치기 

```objc
void (^simpleBlock)(void)  = ^{
	NSLog(@"This is a block");
};


simpleBlock( )

```

###다중 파라미터, 리턴타입

```objc
double (^multiplyTwoValues)(double, double) = 
	^(double firstValue, double secondValue) {
	return firstValue * secondValue;
	};
	
double result = multiplyTwoValues(2,4);
NSLog(@"The result is %f", result);

```

### Block Capture Value
```objc
-(void)testMethod {
NSInteger anInteger = 42; // 1.

// 이부분은 capture 보관하고 있다가 testBlock() 호출되어 84가 아닌 42를 입력
void (^testBlock)(void) = ^{
	NSLog(@"Integer is" %ld", anInteger); // 42가 찍힘
	};  // 건너뛰었다가,
	
	anInteger = 84; // 2.
	testBlock( ); //3.
	

```	


###Share Storage : __block (언더스코어가 두개 __) : 블럭 안에서 사용할 수 있음을 정의

```objc
-(void)testMethod {
__block NSInteger anInteger = 42; // 1. 블럭안으로 들어가라

void (^testBlock)(void) = ^{
	NSLog(@"Integer is" %ld", anInteger); // 42가 찍힘
	anInteger = 100;
	};  
	
	testBlock( ); 
	NSLog(@"original anInteger: %ld", anInteger); // 100이 찍힘
	}

```

### Block With Typedef
```objc
typedef void (^SimpleBlock)(void);

//타입            변수명
SimpelBlock anotherBlock = ^{

statement
};

```

###Block is parameter
```objc
- (void)simpleMethod:(void(^)(NSString *name))parameter {
	NSLog(@"before StarBlock");
	parameter(@"in parameter");
	NSLog(@"after EndBlock");
}

-(void)viewDidLoad {
	[super viewDidLoad];
	[self simpleMethod:^(NSString *name) {
		NSLog(@"inner Parameter %@", name);
	}];
	
}

```
ㅡ (void)presentViewController:(UIViewController *)viewControllerToPresent animated: (BOOL)flag completion:(void (^ __nullable)(void))completion NS_AVAILABLE_IOS(5_0);

리턴도 없고 인풋도 없는 블럭함수다
__nullable은 옵션


```objc
/////////************ 제일 좋은 비교
    [NSTimer timerWithTimeInterval:1 target:self selector:@selector(method:) userInfo:nil repeats:NO];
    //얘는 아래에 selector 메서드가 있고
    
    [NSTimer timerWithTimeInterval:1 repeats:NO block:^(NSTimer * _Nonnull timer) {
        
    }];
    // 얘는 여기서 불리고 끝난다. 한번쓰고. 한군데 뭉쳐놓음. alertViewController
    
/////////**************
```

### GCD는 Block기반 

ex)Singleton