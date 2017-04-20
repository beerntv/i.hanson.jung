## Thread

process 내에서 실행되는 흐름의 단위.

멀티thread - 여러개의 thread를 동시에 진행이 되는 것처럼 보이게끔

process - 프로그램이 메모리에 올라가 실행이 되는 것

## iOS Thread

- 모든 앱은 기본적으로 main thread를 가지고 있다.
- 필요하면 따로 추가적인 thread를 만든다.
-  ***use UIKit classes only from your app's main thread.***   
   (UI 는 무조건 main thread에서 돌려라)
   -  이런 이유때문에 추가적인 thread가 안돌아가는 경우가 있다

만약 작업시간이 오래걸리는 작업을 main thread에서 실행된다면 어떻게 될까?   
 ㄴ 끝날때까지 멈춰있다
 
 ![](https://tintakopi.files.wordpress.com/2011/10/21.png)
 
##  When is use
 
 - 동시에 작업이 필요한 경우
 - 멀티코어 process를 사용하기 위해
 - 중요한 작업에 방해받지 않기 위해
 - 상태를 계속 감시해야 할 경우가 필요할 때
 
 ![](https://i.ytimg.com/vi/hLucZsS0JDo/maxresdefault.jpg)
 
## 동기 / 비동기

 - 비동기 - 동시에 일어나지 않는, 같은 시기가 아닌   
 - 동기 - 동시에 일어나는, 같은 시기

nonatomic, atomic의 문제

 - 디자인패턴에 의한 비동기처리
 	- 델리게이트, 셀렉터, 블록, 노티피케이션
 - 큐를 이용한 비동기처리 방법은 GCD로 가능
 	- dispatch_syc, dispatch_async
 	
## 교착상태 (deadlock)

두 개 이상의 작업이 서로 끝나기만 기다리다 아무것도 완료하지 못하는 상태 
  
- 블럭은 캡쳐 - 교착상태에 빠지지 않는다

- [http://goo.gl.iTXUXO](http://goo.gl.iTXUXO)

# Multi thread
## iOS에서 Multi thread 방법

- NSThread : 직접 thread를 만들어서 제어하는 방식

- GCD : Block기반의 기법으로 코드 가독성이 좋고 간편하다. 
(블럭의 가장 큰 장점은 멀티코어)

- NSOperation : GCD기반의 rapper Class. 간단하게 사용가능하고 고수준의 API를 제공한다. 성능이 느린편.

- performSelector : Selector를 이용한 방식, ARC이전에 주로 사용한 방식이었으나 GCD이후엔 많이 사용되지 않는다. 

- NSTimer : 간단한 interval Notification 를 제공해 주는 Class. 특이하게도 ***NSTimer는 mainLoop***에서 실행된다.

## NSThread 

- main thread 외 다른 thread를 만드는 클래스
- UI는 절대 추가Thread에서 실행시키면 안된다.
- cancel 명령은 강제 종료가 되지 않는다 (그저 BOOL 값)
- Selector로 실행된 Method가 종료후 자연스럽게 Thread도 종료

## NSThread 요소

- Initializing
- Starting a Thread
- Stopping a Thread
- Execution State

## GCD
 - 비동기로 작업을 수행시키는 강력하고 쉬운 방법
 - 멀티코어 프로세서에서 최적화되어 작동한다
 - dispatch queue를 이용해서 작업들을 컨트롤한다.
 - Block으로 구현된다.

## dispatch queue
dispatch queue는 
queue에 쌓여있는 일들을 cpu 에 분배한다.


### serial queue / concurrent queue

![](https://www.objc.io/images/issue-2/gcd-queues@2x-82965db9.png)

## 구조적 분류
- main dispatch queue (main thread)    
- Global queue (4개를 가지고 있다)

## Main dispatch queue

- main thread 를 가르키며 기본  UI를 제어하는 queue
- Serial 방식으로 들어온 순서대로 진행되며 앞에 작업이 종료될 때까지 뒤의 작업들은 대기한다.


dispach_queue_t  global_queue =    
//type				name

dispatch_get_main_queue();

(C의 문법. swift에서는 다르다.)


## Private dipatch queue
- 사용자정의 queue
- 사용자가 만든 queue는 serial 




dispatch_after 

얼마간의 시간이 지난 후에 queue에 집어 넣어라
// 다음 queue들이 차례로 들어가다가 일정한 시간 후 dispatch_after가 끼어듬. 그리고 다시 async 진행

dispatch_queue_t queue = dispatch_queue_create("com.wing.test", DISPATCH_QUEUEU_
dispatch_after
dispatch_async   
dispatch_async   
dispatch_async   
dispatch_async   
dispatch_async   
dispatch_async   
dispatch_async   
dispatch_async   

dispatch_barrier_async 예제
async 지만 칸막이. (이마트 계산대 컨베이어 위에 칸막이 막대. 앞에꺼 처리 다할때까지)
dispatch_async    
dispatch_async   
dispatch_async   
dispatch_barrier_async
dispatch_async   
dispatch_async   
dispatch_async   


## GCD 함수 - 추가

//큐에서 작업을 실행하지 못하도록 정지시킨다.
void dispatch_suspend(dispatch_object-t object);   
(맨끝  object는 큐)
 												
//정지도니 큐를 재개
void dispatch_resume( 							

## 스탑워치 GCD로 만들기

- dispatch_source 사용하기

//dispatch_source 생성
self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());


//시간 설정
//dispatch_source_t source, dispatch_time_t start, uint64_t interval, uint64_t leeway)

//이벤트 정하기
dispatch_source_set_event_handler(self.timer, ^{
	[self changeText:[NSNumber numberWithInteger:self.gcdSecond]];
	self.gcdSecond++;
});

//시작
dispatch_resume(self.timer);

//멈춤
dispatch_suspend(self.timer);


					