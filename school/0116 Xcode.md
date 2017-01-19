### 주영민 강사

조금이라도 모르는건 호기심, 검색, 질문해!


## Xcode


### - playground - swift 용
 
스크립트형 언어 - ex) 웹   
네트워크를 통해서 (컴파일 되지않은 언어자체를) 데이터를 받아와야 한다. (웹은 페이지 단위로 받아온다)   
-> 브라우저가 컴파일을 해준다.

swift는 스크립트형 언어로 작성된다 (내부적으로는 컴파일을 한다)

### target    

### project

### workspace    
project파일이 하나 이상

### ios 템플릿 > Single  View App.
우선은 제일 기본인 싱글뷰로 시작한다.   
말그대로 템플릿. 차후에 변경가능하다.


### macOS > Command Line Tool   
가장 기본적인 템플릿

### Product Name : only English!
### team : 결제...
### 회사명
### organization identifier 회사 id   
project 명은 product 명 + 회사 id
### bundle identifier 


Assets    
info 설정

Build and then run the current scheme
## Xcode Main Window 
- Navigator : 프로젝트 관리를 위한 도구 모음
- Editor : 프로젝트 네비게이터에서 선택한 파일의 내용을 수정하는 화면
- Debug Area : 프로그램 실행 중 디버깅을 위한 콘솔창
- Utilities : 프로젝트 네비게이터에서 선택된 파일의 상세 정보 및 ui속성 수정 등의 작업을 위한 공간

- Run 
- stop   
- scheme menu
- activity viewer
- activity indecators
- editor configuration    
1.기본 2.두 파일 3.버전   
- workspace configuration buttons


## Navigator Area 

- ViewController.h   
```
@property (nonatomic, weak) IBOutlet UILabel *titleLB;
```   

- ViewController.m   

   ```
    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백........");
    
    NSLog(@"다음 브레이크 포인트 전");
    
    NSLog(@"다음 브레이크 포인트 후");
```
    


NSLog



- (IBAction)btnAction
{
    //NSLog(@"버튼이 클릭되었습니다");
    
    self.titleLB setText:@"걱정따윈 필요없어! \n내친구와 함께니까"
    
##    명명법
- 시스템 예약어를 사용할 수 없다.
- 시작 글자에 숫자를 사용할 수 없다.
- 공백을 포함할 수 없다.
- 프로젝트&클래스 명은 "PascalCase" 로 작성 (통상적 관례)
- 프로퍼티&메소드 명은 "camelCase" 로 작성 (통상적 관례)
(언더바_를 사용하기도 하지만, 흔치않다. back-end에서 흔한 명명법. 대문자를 안쓰기 때문에)



## 객체지향 프로그래밍

- swift는 객체지향형, 함수형, 


## Homework

- 추상화, 은닉화, 캡슐화, 상속성, 다형성

## 주석 - comment

/*  
영역을 슬래시+* 로 지정    
이 안에 들어가면   
모두 주석입니다.   
*/


// 한줄 주석   
// 줄마다   
// 슬래시두개를   
// 달아줘야 한다.
