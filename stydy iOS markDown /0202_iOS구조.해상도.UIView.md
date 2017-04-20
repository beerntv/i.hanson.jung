## iOS의 구조

## The Structure of an App - MVC
Xcode는 많은 delegate들을 만들어 놓았고, delegate안에는 특정 시점에 동작을 하는 메소드들이 정의가 되어있다. 이 메소드들을 프로그래머가 호출해서 사용하면 되는 것이다.

iOS App을 동작시키는 UIKit Framework의 핵심 객체들에 대해 알아보자.

앱이 구동되고 종료될 때 까지, UIKit Framework 은 앱의 핵심 동작을 관장한다. 앱의 심장격인 객체는 UIApplication 객체로, iOS로부터 이벤트를 받아 여러 custom 객체로 이벤트를 전달한다. UIApplication 외 다른 UIKit 클래스들도 custom code 를 호출하는 방식으로 앱의 동작에 관여한다.

아래 그림은 앱 동작에 있어 핵심적인 역할을 하는 객체들의 관계를 보여준다. – 기본적으로 iOS 앱은 MVC(model-view-controller) 디자인 패턴을 따른다. MVC 패턴은 데이터(model)를 뷰(view)와 분리시켜 코드 재활용성을 높이는 등 여러 이점들을 제공한다.

![](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)

## 뷰 컨트롤러 생명주기(ViewController Lifecycle)
모바일 앱은 화면의 크기가 작아서 PC와 달리 하나의 화면에 하나의 ViewController만을 가집니다. 그리고 여러개의 ViewController가 모여 하나의 앱을 만듭니다. iOS 에서는 한 화면에서 다른 화면으로 전환할 때 기존의 화면위에 새로운 화면이 쌓이는 식으로 화면을 전환 합니다. 이 때 각각의 뷰 컨트롤러는 자신만의 생명주기를 가지고 있고 이 생명주기를 잘 이해하고 있다면 뷰 컨트롤러의 상황에 따라 원하는 로직을 수행하도록 만들 수 있습니다. 아래는 ViewController의 생명주기를 그림으로 나타낸 것입니다.
여러개의 뷰 컨트롤러가 있는 앱이라고 한다면 각각의 뷰 컨트롤러는 자신만의 생명주기를 가집니다. 그래서 화면상에 등장 할 때, 사라질 때 등 상황에 맞춰서 함수들이 호출됩니다. 뷰 컨트롤러 생명주기의 대표적인 함수들은 아래와 같습니다.
![](https://cdn-images-1.medium.com/max/800/1*etDLgjBamDJoiaM3_hie9A.png)

ViewDidLoad - 해당 뷰컨트롤러 클래스가 생성될 때(ViewWillAppear전에 실행) 실행됩니다. Low memory와같은 특별한 경우가 아니라면 딱 한번만 실행되기 때문에 초기화 할 때 사용 할 수 있습니다.
ViewWillAppear - 뷰 컨트롤러가 화면에 나타나기 직전에 실행됩니다. 뷰 컨트롤러가 나타나기 직전에 항상 실행되기 때문에 해당 뷰 컨트롤러가 나타나기 직전마다 일어나는 작업들을 여기에 배치 시킬 수 있습니다.
ViewDidAppear - 뷰 컨트롤러가 화면에 나타난 직후에 실행됩니다. 화면에 적용될 애니메이션을 그리거나 API로 부터 정보를 받아와 화면을 업데이트 할 때 이곳에 로직을 위치시키면 좋습니다. 왜냐하면 지나치게 빨리 애니메이션을 그리거나 API에서 정보를 받아와 뷰 컨트롤러를 업데이트 할 경우 화면에 반영되지 않습니다.
ViewWill/DidDisappear - 뷰 컨트롤러가 화면에 나타난 직전/직후에 실행됩니다.


## UIApplication object
UIApplication 객체는 System 으로부터 이벤트를 받아 Custom Objects 로 이벤트를 전달하고 상위 레이어의 앱 동작을 조정한다. app delegate 객체 내의 custom logic 들은 UIApplication 객체와 상호작용한다.

## App delegate object
App delegate  객체는 custom 객체로서 앱 런칭시점에 UIApplicationMain 함수에 의해 생성된다.

주로 앱의 상태 (Not running, Active, Inactive, Background, Suspended ) 전이를 담당하며, 앱 런칭 시점의 초기화 및 백그라운드 상태로의 전환등을 처리한다 (참고:  Managing App State Changes.)

iOS5 이후부터는 다른 앱의 이벤트를 App delegate 를 통해 핸들링 할 수 있다고 한다 . App delegate 는 UIResponder 클래스를 상속하므로 Responder Chain에 따라 UIApplication 이 처리하지 않은 이벤트를 처리할 수 있다.

## Document and data model objects
Data model 객체는 앱의 컨텐트를 저장한다. 예를 들어 은행앱의 경우 거래트랜젝션을 저장할 수 있고, 그림그리기 앱의 경우 이미지 또는 이미지 조작 순서등을 저장할 수 있다.

앱은 Data model 객체를 Document 객체(custom subclasses of UIDocument)를 이용하여 처리할 수 있다. Document 객체 사용은 필수는 아니지만, 하나의 파일 또는 파일 패키지에 속해있는 데이터를 그룹화 하는데 편리한 방법을 제공한다. (참고: Defining a Document-Based Data Model.)

#   View 

## UIView 
- 가장 기본이 되는 View
- UIComponent들의 조합으로 화면이 구성되며 UIView를 상속받음.  
즉 iOS화면은 UIView의 집합으로 구성되어 있다. 
모든 UI(UILabel, UIImageView, UIButton 등)는 view로 상속, add 할 수 있다.

###  UILabel
- 텍스트 정보(NSString) 를 표시
- numberOfLines :  The maximum number of lines to use for rendering text.

### UIImageView
- 이미지 정보를 표시하는 UI

### UIControl
-  UIConponent에 사용자 인터렉션에 의한 응답에 대해 특별한 액션을  
부여하는 클래스

> @property BOOL highlighted; (***자동적***으로 설정된다.)
> @property BOOL enabled, selected;

```objectivec
- (void)addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
// @selector를 사용하면 사용하고자 하는 메소드를 객체의 생성필요없이  
사용할 수 있다.
```

### UIButton
- 사용자의 이벤트를 받아 처리해주는 UI
- 버튼구조는 Title, Image, backGroundImage로 이루어져 있다.
- UIButton속성

- 1. 버튼기본타입  

```objectivec
typedef NS_ENUM(NSInteger, UIButtonType) {
UIButtonTypeCustom = 0,                         // 사용자 커스텀 타입
UIButtonTypeSystem NS_ENUM_AVAILABLE_IOS(7_0),  // standard system button  
UIButtonTypeDetailDisclosure,
UIButtonTypeInfoLight,
UIButtonTypeInfoDark,
UIButtonTypeContactAdd,
};
```
- 2. State Config (UIControlState) // 버튼타입이 아니다. 컨트롤State변수

```objectivec
typedef NS_OPTIONS(NSUInteger, UIControlState) {
UIControlStateNormal       = 0, // 
UIControlStateHighlighted  = 1 << 0, //버튼을 누르고 있을때
UIControlStateDisabled     = 1 << 1, 
UIControlStateSelected     = 1 << 2, //버튼이 선택됨 (after touchUpInside)
};
```
- 3. 버튼은 초기화 타입을 아래와 같이 하는 경우가 대부분이다.
```objectivec
+ (instancetype)buttonWithType:(UIButtonType)buttonType;
// 위의 메소드로 타입지정과 init작업을 같이하는 경우가 대부분이다.
// 인스턴스타입으로 반환되므로 init됨을 알 수 있는것 같다.
```
- 4.  HighLighted  <--->  Normal <--->  selected  
selected가 된 상황에서는 바로 Hightlighted로 갈 수 없다. 그러기 위해선  
custom으로 selected를 만들어야 한다. 

## Selector
- 중요한 개념 더 알아보자
- 
## View controller objects
View controller 객체는 앱의 컨텐트가 화면에 보여지게 하는 역할을 담당한다. 하나의 View Controller 객체는 하나의 뷰와 뷰의 서브뷰를 관리한다. View Controller 객체는 자신이 관리하는 뷰를 앱의 윈도우에 위치시킴으로써 뷰가 화면에 보여지도록 한다.

UIViewController 클래스는 여러 View Controller 객체들의 부모클래스이다. UIViewController 는 기본적으로 뷰를 로딩하고, 화면에 뷰를 보여지게 하고, 뷰를 전환(디바이스 변화에 따른)하는 등의 기본적인 동작들을 지원한다.

UIKit 이나 다른 Framework들은 Image picker, Tab bar interface, Navigation interface 등의 추가적인 View Controller 클래스를 제공함으로써 기본적인 시스템 인터페이스를 수행할 수 있도록 한다. (참고: View Controller Programming Guide for iOS)

![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG-root-view-controller_2-1_2x.png)

## UIWindow object
UIWindow 객체는 화면에 보여지는 뷰 객체들을 조정하는 역할을 한다. 대부분의 앱은 컨텐트를 메인 스크린에 나타내는 윈도우 한 개를 소유하지만, 별도의 화면을 위한 UIWindow 객체 추가도 가능하다.

화면에 보여지는 컨텐트를 바꾸기 위해서는 View Controller 를 이용해야 한다. 윈도우 자체에서 컨텐트를 바꾸지 못한다.

뷰를 호스팅 하는 것 외에 UIWindow 객체는 UIApplication과의 상호작용을 통해 이벤트를 뷰와 View Controller에 전달하는 역할도 수행한다.

## View, control and layer objects
View와 control은 컨텐트의 시각적 표현을 담당한다.

뷰는 직사각형 영역에 컨텐트를 표현하고, 영역 내의 이벤트를 감지하는 객체이다. 컨트롤은 뷰의 특정 타입으로서 버튼, 텍스트 필드, 토글 스위치 등이 있다.

UIKit Framework 는 다양한 타입의 컨텐트 (ex. 웹,이미지파일 등) 를 보여주기 위한 여러가지 기본 뷰를 제공한다. 기본 뷰 외에 개발자는 UIView를 직접 상속함으로써 자신만의 뷰를 만들 수 있다.

앱은 뷰와 컨트롤 계층(Hierarchy)에 Core Animation Layer 를 포함시킬 수 있다. Layer 객체는 정확히 말하면, 비쥬얼 컨텐트를 보여주는 data 객체이다. 뷰는 Layer 객체 또는 Custom layer 객체를 사용하여 복잡한 에니메이션 효과 및 시각적 효과를 표현할 수 있다.

## UILabel

하나 이상의 읽기 전용 텍스트 행을 표시하는 뷰로, 의도된 목적을 설명하기 위해 컨트롤과 결합되어 자주 사용됩니다.

## UIButton
UIButton 객체는 사용자 상호 작용에 대한 응답으로 사용자 정의 코드를 실행하는 뷰입니다.

버튼을 누르거나 초점이 있는 버튼을 선택하면 해당 버튼에 연결된 모든 작업을 수행합니다. 텍스트 레이블, 이미지 또는 둘 다를 사용하여 버튼의 용도를 전달합니다. 버튼의 모양은 구성할 수 있으며 앱의 디자인과 일치하도록 버튼에 색조를 적용하거나 제목을 지정할 수 있습니다. 프로그래밍 방식으로 또는 Interface Builder를 사용하여 인터페이스에 버튼를 추가할 수 있습니다.

## Responding to Button Taps
버튼은 Target-Action 디자인 패턴을 사용하여 사용자가 버튼을 탭했을 때 앱에 알립니다. 터치 이벤트를 직접 처리하는 대신 버튼에 액션 메소드를 할당하고 메소드에 호출을 트리거하는 이벤트를 지정합니다. 런타임에 버튼은 들어오는 모든 터치 이벤트를 처리하고 응답으로 메소드를 호출합니다.
addTarget(_:action:for:) 메소드를 사용하거나 Interface Builder에서 연결을 생성하여 액션 메소드에 버튼을 연결한다. 액션 메소드의 시그니처는 Listing 1 에 나열된 세 가지 형식 중 하나를 취한다. 버튼 탭에 응답해야하는 정보를 제공하는 양식을 선택하십시오.




![](https://i.stack.imgur.com/wYKPZ.png)



![](http://cfile23.uf.tistory.com/image/26767C3E569215E00EF1E3)

![](https://s-media-cache-ak0.pinimg.com/736x/7c/62/15/7c62156d1936d5abd0e9943a388c3d34.jpg)


iphone5 = 320pts * 568pts / 640px * 1136px  
iphone6 = 375pts * 667pts/ 750px * 1334px   
iphone6Plus = 414pts * 736 / 1242px * 2208px

[iphone 해상도 변천사](https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions)


![](https://developer.apple.com/library/content/documentation/EventHandling/Conceptual/EventHandlingiPhoneOS/Art/hit_testing_2x.png)
![](https://developer.apple.com/library/content/documentation/EventHandling/Conceptual/EventHandlingiPhoneOS/Art/iOS_responder_chain_2x.png)

UIReponder

```objc
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
```

UIView 