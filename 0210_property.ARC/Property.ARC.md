## 접근자 메서드 (getter/setter) - accessor method
- getter : 인스턴스 변수의 값을 가져오는 메서드
 - getter 메서드명 = 인스턴스 변수명 ; 같이 짓는다
 - 인스턴스 변수 : _name //  메서드 : - (NSString *)name
- setter : 인스턴스 변수의 값을 변경할 때 사용하는 메서드
 - setter메서드명은 인스턴스 변수명 앞에 set키워드를 붙인다.
 - 인스턴스 변수 : _name // 메서드 : - (void)setName:(NSString *)name

 ```objc
 @ingterface NewClass : NSObject
 
 - (NSString *) name;
 - (void)setName:(NSString *)name;
 // readonly 시에는 생성안됨
 @end
 
 
 //
 @implementation Person
 {
 //프로퍼티 생성순간 m파일에 작동
 	NSString *_name;  >> 변수
 }
 
 - (NSString *)name   >> get
 {
 	return _name;
 }
 
 //readonly 시에는 생성 안됨
 - (void)setName:(NSString *)name >> set 
 {
 	_name = name;
 }
 
 @end
 
 ```
 
 ## @Property
 
 객체지향 개발시 수없이 Accessor Method가 필요하여 ***자동 접근자 메서드***를 만들었다.
 
- getter : - ( )name   
- setter : - ( )setName   
- _변수 : _name

```objc
@interface
 