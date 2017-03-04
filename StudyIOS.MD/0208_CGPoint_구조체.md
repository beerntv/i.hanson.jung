### 구조체 struct

-	색, 그림, 버튼들을 가질 수 있다
-	드래그, 크기 조정, 등이 가능
-	UIView는 GUI를 구성하는 단위 블록
-	UIWindow는 UIView

```objc
//parentView(상위뷰)에 childView(하위뷰) 추가
[parentView addSubview:childView];


//parentView(상위뷰)가 가진 하위뷰들의 배열을 가져오기 (가장 뒤부터 가장 앞까지)
[parentView subview];

//childView(하위뷰)를 자신이 속한 상위뷰로부터 제거
[childView removeFromSuperview];


//i번째에 있는 하위뷰를 j번째에 있는 하위뷰와 순서를 바꿈
[parentView exchangeSubviewAtIndex:i withSubviewAtIndex:j];

//View의 투명도 조정 (value값은 0.0[완전투명]부터 1.0[완전불투명]까지)

[myView setAlpha:0.5];

//뷰의 배경색 지정

[myView setBackgroundColor:[UIColor redColor]];
```

### CGPoint - 포인트는 x,y 좌표로 정의된 위치를 말한다.

```objc

//x, y의 CGPoint를 생성한다.
CGPointMake(x, y);

//CGPoint를 문자열로 변환한다.
NSStringFromCGPoint(someCGPoint);

//문자열을 CGPoint로 변환한다.
CGPointFromString(aString);
```

### CGSize - 폭과 높이를 가지는 구조체

```objc
//width, height의 CGSize를 생성한다.
CGSizeMake(width, height);

//CGSize를 문자열로 변환한다.
NSStringFromCGSize(someCGSize);

//문자열을 CGSzie로 변환한다.
CGSizeFromString(aString);
```

### CGRect - 모든 View는 경계를 데 프레임을 사용한다.

-	프레임은 뷰의 위치, 폭, 높이와 같은 지정한다.
-	코어 그래픽 구조를 사용하여 프레임 직사각형을 정의한다.
-	보통 시작점(CGPoint)과 크기(CGSize)로 구성된다.

```objc
//직사각형 정의
CGRectMake(origin.x, origin.y, size.width, size,height);

//CGRect 구조체를 특정 형식을 가진 문자열로 변환한다.
NSStringFromCGRect(someCGRect);

//위의 코드로 변환된 특정 형식을 가진 문자열을 CGRect구조체로 복구한다.
CGRectFromString(aString);

//직사각형의 위치에서 직사각형의 크기만큼 외곽을 잘라내거나 덧붙인 가운데 정렬된 직사각형을 만든다. 양수로는 잘라내고 음수로는 덧붙여 만들게 된다.
CGRectInset(aRect);

//직사각형 구조체 rect1과 rect2가 겹치는지 알 수 있다.
CGRectIntersectsRect(rect1, rect2);

//(0,0)에 가로, 세로 길이가 0인 직사각형 상수
CGRectZero;

```

[https://realm.io/kr/news/letswift-swift-performance/](https://realm.io/kr/news/letswift-swift-performance/)

#### swift에서 변화한 Value Semantics

-	Value 타입을 이용한 메카니즘
-	Value Type Semantics / Copy-by-Value Semantics
-	Identity가 아닌 Value(값)에만 의미를 둠: Int, Double 등의 기본 타입들
-	포인터만 복사되는 참조(Reference) 시맨틱스와 비교됨: Objective-C, Java 등
-	스위프트에서는 Objc에 없던 새로운 Value Type을 도입: struct, enum, tuple
-	Value type의 특징

	-	변수 할당 시 Stack에 값 전체가 저장됨
	-	다른 변수에 할당될 때 전체 값이 복사됨 (copy by value): 변수들이 분리되므로 하나를 변경해도 다른 것에 영향 없음
	-	Heap을 안 쓰며 따라서 Reference Counting도 필요 없음

-	class vs struct

	-	class의 경우(Reference type) Stack에 레퍼런스, Heap에 구조체 할당
	-	Reference 타입은 복사해도 값이 하나를 향해 같은 값을 가짐

	-	struct(value type)의 경우 포인트가 스택에만 쌓이고 복사해도 스택 사용

	-	Value 타입의 경우 복사해도 분리됨

-	Value Semantics: ‘값’에 의해 구분되므로 Identity가 아닌 Value가 중요하며 동치를 위해서는 Equatable을 구현해야 함

-	value 타입은 Thread간 의도하지 않은 공유로부터 안전함 값 모두를 복사해도 성능이 빠름

	-	기본 타입들, enum, tuple, struct은 정해진 시간 (constant time) 안에 끝남
	-	내부 데이터가 Heap과 혼용하는 struct의 경우는 정해진 시간 + 레퍼런스 copy등의 시간
	-	String, Array, Set, Dictionary 등 쓰기 시 Copy-on-write로 속도 저하 보완

-	class가 중요한 경우

	-	Value보단 Identity가 중요한 경우: UIView 같이 모든 변수에서 단 하나의 state를 갖는 개체
	-	OOP 모델: 여전히 상속은 아주 훌륭한 도구
	-	Objective-C 연동
	-	Indirect storage (특수한 경우 struct내의 간접 저장소 역할)

