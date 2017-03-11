## property
### getter : 인스턴스 변수의 값을 가져오는 메서드

- getter메서드 명은 인스턴스 변수명과 같이 짓는다. 
- getter메서드명 -(NSString *)name // 인스턴스 변수 _name  

### setter : 인스턴스 변수의 값을 변경할 때 사용하는 메서드
- setter메서드 명은 인스턴스 변수명 앞에 set키워드를 붙인다.
- set메서드 -(void)setName:(NSString *)


### 캡슐화?

property 선언을 하게 되면 getter, setter, _변수가 자동으로 생성된다.


## ARC
ARC (Auto Reference Counting)   
iOS 5부터 Apple이 LLVM Compiler1 를 채용함에 따라 ARC가 iOS 개발에 적용되었습니다
ARC는 Automatic Reference Counting의 약자로 기존에 수동(MRC)으로 개발자가 직접 retain/release를 통해 reference counting을 관리했어야 하는 부분을 자동으로 해주게 됩니다.

stong과 weak 는 ARC에서 나온 새로운 프로퍼티 옵션입니다.
이 옵션들을 간단하게 설명하자면 strong 은 강한 참조, weak 는 약한 참조의 의미를 가집니다.

ARC가 컴파일단에서 자동으로 release 코드를 삽입해 주기 때문에 strong & weak 를 사용할때 retain 카운트를 계산할 필요가 없습니다.

메모리 관리 방식
- 명시적 해제 : 모든 것을 개발자가 관리함

alloc - 할당, malloc - 해제

- 가비지 컬렉터(garbage collector) : 수시로 확인해서 안쓰는 객체를 해제시킴(java, 시스템부하)
- 레퍼런스 카운팅 : 오너쉽 정책에 의해 객체를 해재시킴 (objc)

기본적으로 iOS에서는 객체 관리에는 reference counting 이용합니다. 모든 객체는 reference count가 1이 증가 되고 사용이 끝나면 1을 감소 시키게 되고 0이 되면 메모리에서 해제 됩니다. 여기서 strong reference는 객체를 소유 하기 때문에 reference count를 증가 시키고 weak reference는 객체를 소유하지 않기 때문에 reference count를 증가 시키기 않습니다.

![](http://krazie99.github.io/img/strong/2.jpg)

즉, strong은 해당 클래스가 소유하는 멤버 변수이기 때문에 해당 클래스가 해재 되지 않는 한 해당 strong 멤버는 메모리에서 해재 되지 않습니다. weak는 해당 클래스가 소유하지 않기 때문에 보통 딜리게이트나 XIB(StoryBoard)등 외부에서 소유하고 있는 객체의 포인터를 연결해서 사용하게 됩니다.

만약 iOS에서 strong reference만으로 개발을 하게 되면 순환 참조2의 문제가 될수 있습니다.

class A {
  strong var v
}

strong var obja = new A()
strong var objb = new A()

obja.v = objb
objb.v = obja
각각 A 클래스의 인스턴스 obja, objb 생성합니다. 여기에 각 인스턴스의 변수에 서로를 참조를 하게 하였습니다.

obja = nil
objb = nil
위의 해당 코드를 수행한다면 메모리가 해제 되는것이 아니라 obj가 서로를 참조하고 있기 때문에 reference count가 1이 되면서 메모리 누수를 발생시키는 순환참조 문제가 생기게 됩니다.

만약 여기서 weak reference 를 사용하게 된다면 소유자를 해당 변수에서 가지고 있지 않기때문에 메모리가 안전하게 해제 됩니다. 


LLVM (이전 이름: Low Level Virtual Machine)은 컴파일러의 기반구조이다. 프로그램을 컴파일 타임, 링크 타임, 런타임 상황에서 프로그램의 작성 언어에 상관없이 최적화를 쉽게 구현할 수 있도록 구성되어 있다. 

순환 참조(circular reference)란, 참조하는 대상이 서로 물려 있어서 참조할 수 없게 되는 현상을 말한다. 

![](http://krazie99.github.io/img/strong/1.jpg)

![](https://beerntv.files.wordpress.com/2017/02/ec8aa4ed81aceba6b0ec83b7-2013-02-04-ec98a4ed9b84-8-41-16.png)
![](https://beerntv.files.wordpress.com/2017/02/ec8aa4ed81aceba6b0ec83b7-2013-02-04-ec98a4ed9b84-8-50-04.png)


## Referaence counting rule

alloc

## Referaence counting

NSString *str1 = [[NSString alloc] init];




```objc
- (instancetype)retain OBJC_ARC_UNAVAILABLE;
- (oneway void)release OBJC_ARC_UNAVAILABLE;
- (instancetype)autorelease OBJC_ARC_UNAVAILABLE;
- (NSUInteger)retainCount OBJC_ARC_UNAVAILABLE;
```
- assign: 새로운 값의 주소값만 받음  
- retain : 기존 객체를 release 한 후 새로운 객체를 retain
- copy : 기존 객체를 release 한 후 새로운 객체를 copy  
- atomic : 멀티 스레드에서 모든 스레드안에 값을 동기화  
- nonatomic : 멀티 스레드에서 각 스레드안의 값을 동기화 하지 않음 
