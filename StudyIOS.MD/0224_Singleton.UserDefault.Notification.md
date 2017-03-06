Singleton
=========

전역객체

singleton pattern
-----------------

1.	싱글톤이란? 어플리케이션 전 영역에 걸쳐 하나의 클래스에 ***단 하나의 인스턴스(객체) 만을 생성*** 하는 것을 싱글톤 패턴이라 한다.

2.	이걸 쓰는 이유는 어플리케이션 내부에서 유일하게 하나만 필요한 객체에 사용한다. (세팅, 데이터 등) (원래 객체의 생성은 재사용을 염두에 두지만)

3.	클래스 메서드로 객체를 만들며 static 을 이용해서 단 1개의 인스턴스를 만든다.

4.	앱 내에서 공유하는 객체를 만들 수 있다.

| data  | 전역변수, 정적변수              |
|-------|---------------------------------|
| stack | 지역변수 (만들었다 사라질 놈들) |
| heap  | 객체                            |
| code  |                                 |

```objc
@interface DataCenter : NSObject

+ (instancetype)sharedInstance ;
@end

@implementation DataCenter

+ (instancetype)sharedInstance {

static DataCenter * dataCenter = nil;

static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
	dataCenter = [[seslf alloc] init];
	});
	return dataCenter;
}
@end
```

singleton pattern 예제
----------------------

```objc
// 스크린 정보를 가지고 있는 객체
UIScreen *screen = [UIScreen mainScreen];

// 사용자 정보를 저장하는 객체
NSUserDefaults *data = [NSUsesrDefault standardUserDefaults];

// 어플리케이션 객체
UIApplication *app = [UIApplication SharedApplication];

//파일 시스템 정보를 가지고 있는 객체
NSFileManager *fileManager = [NSFileManager defaultManager];


```

NSUserDefault
-------------

저장방법 - 서버 - Core data - plist (property list)

사용자의 정보를 저장하는 싱글톤 객체 - 간단한 사용자 정보를 저장/ 불러오기가 가능하게 만든 객체 - 내부적으로 plist 데이터에 저장되어 보안이 강하지 않다. (plist - 파일형태:뚫을 수 있다 / core data - 열기 힘들다)

#### 주요항목

```objc
+ (NSUserDefaults * )standardUserDefaults;
// data - Dictionary 형태 (jSON)

// 데이터 불러오기
- (nullable id)objectForKey:(NSString * )defaultName;

// 데이터 저장하기
- (void)setObject:(nullable id)value forKey:(NSString *)defaultName;

// 데이터 지우기
- (void)removeObjectForKey:(NSString * )defaultName;

// 예제
// *key값은 통일시켜야 한다.

// 데이터 저장
[[NSUserDefaults standardUserDefaults] setObject:@"sean" forKey:@"name"];

// 데이터 불러오기
NSString * nameData = [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
NSLog(@"저장된 이름은 %@입니다", nameData);
```

NOtification
============

-	Push Notification
-	Local Notification

Protocol
--------

복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 원활하게 하기 위해 필요한 통신규약. 신호 송신의 순서, 데이터의 표현법, 오류검출법 등을 정함.

> 객체지향에서는 두 클래스 간의 약속 이런 이름의 함수를 만들어라

-	Objective-C 에서는 Delegate 라는 이름으로 사용한다.

객체 간 통신
------------

-	Delegate 방식은 1:1 통신방식
	-	한번에 여러 객체와 통신하는 방법은 없을까?

NSNotificationCenter
--------------------

-	특정 이벤트가 발생하였음을 알리기 위해 불특정 다수의 객체에게 알리기 위해 사용하는 클래스

-	어떤 객체라도 특정 이벤트가 발생했다는 알림을 받을 것이라고 Observer로 등록을 해두면 NSNotificationCenter 가 모든 Observer 객체에게 Notification 을 보내준다.

-	페이스북에서 친구를 등록해주면 친구의 이벤트가 내 뉴스피드나 알림으로 오는 것과 같은 이치

Notification 구조
-----------------

1.	객체A (observer)가 NotificationCenter 에 자신이 Notification을 받을 거라고 등록 (addObserver)

2.	객체B 가 필요한 시점에 Notifacation 송출 (postNotifacation)

3.	NotifacationCenter 에서 적절한 객체와 메서드를 찾아서 호출

![](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Art/notificationcenter_2x.png)

Notifacation 주요 Method
------------------------

```objc

// Initializing

+ (NSNotificationCenter *)defaultCenter;

// Add Observer
- (void)addObserver:(id)Observer // self
           selector:(SEL)aSeletor  // @selector(noti:)
               name:(NSStirng *)aName // name:키값
             object:(id)anObject;  //object 필터역할 주로 nil


// Post Notification
- (void)postNotifacation:(NSNotification *)Notification;
- (void)postNotifacationName:(NSStirng *)aName
                      object:(id)anObject;
- (void)postNotifacationName:(NSStirng *)aName
                      object:(id)anObject
                    userInfo:(NSDictionary *)aUserInfo;
// Remove Observer
- (void)removeObserver:(id)Observer;

- (void)noti:(NSNotification *)notiSender {

}            


// 예제
// ========== Observer
- (void)addObserverMethod(
  [[NSNotificationCenter defaultCenter] addObserver:self      
                                           selector:@selector(trakingPost:)
                                               name:@"NotificationKey"
                                             object:nil];
}

- (void)trakingPost:(NSNotification *)noti{
  NSStirng * notiText = noti.object;
  // notiText == @"wing"

}

//=========== Poster
- (void)postMethod {
  [[NSNotificationCenter defaultCenter] postNotifacationName:@"NotificationKey"
                object:@"wing"];

}        

```

System Notification Key
-----------------------

```objc
NSStirng * const UIApplicationDidEnterBackgroundNotification;
NSStirng * const UIApplicationWillEnterForegroundNotification;

NSStirng * const UIKeyboardWillShowNotification;
NSStirng * const UIKeyboardDidShowNotification;
NSStirng * const UUIKeyboardWillHideNotification;
NSStirng * const UIKeyboardDidHideNotification;

NSStirng * const UITextFieldTextDid;
NSStirng * const UITextFieldTextDid;
NSStirng * const UITextFieldTextDid;


//예제
//============ Observer
- (void)addObserverMethod {
  [[NSNotificationCenter defaultCenter] addObserver:self      
                                           selector:@selector(trakingPost:)
                                           name:UIKeyboardDidShowNotification
                                           object:nil];
}

- (void)didShowkeyboardNoti:(NSNotification *)noti{
  // 키보드가 올라온 후 불리는 Method
}

//============ Poster

키보드가 올라올때 시스템에서 자동으로 Noti를 Post해준다.
```

```obcj

chief choi 예제

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell-v"];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
    }

    switch (indexPath.section) {
        case 0:{
            UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
            cell.accessoryView = switchInCell;
        }
            break;
        case 1:{

            UISwitch *s1 = [[UISwitch alloc] init];
            [s1 addTarget:self action:@selector(changedSwitchValue:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = s1;


//            NSUserDefaults *user = [NSUserDefaults standardUserDefaults];

//            NSLog(@"%ld %d", indexPath.row, ![user integerForKey:@"switch"]);
//            if ([[user objectForKey:@"switch"] integerValue]) {
//                [user setObject:@"1" forKey:@"switch"];
//            } else {
//                NSInteger cnt = [[user objectForKey:@"switch"] integerValue] + 1;
//                [user setObject:[NSString stringWithFormat:@"%ld", cnt] forKey:@"switch"];
//            }
//            
////            if (![user integerForKey:@"switch"]) {
////                [user setInteger:1 forKey:@"switch"];
////                NSLog(@"%ld", [user integerForKey: @"switch"]);
////            } else {
////                NSInteger temp = [user integerForKey:@"switch"] + 1;
////                NSLog(@"temp = %ld",temp);
////                [user setInteger:temp forKey:@"switch"];
////            }
//
//            NSString *str = [NSString stringWithFormat:@"switch%ld", [[user objectForKey:@"switch"] integerValue]];
//            s1.on = [NSNumber numberWithBool:[[NSUserDefaults standardUserDefaults] objectForKey:str]];
//            s1.tag = [[user objectForKey:@"switch"] integerValue];


//            [NSUserDefaults standardUserDefaults] setObject:<#(nullable id)#> forKey:<#(nonnull NSString *)#>


            break;
        }
        case 2:{

            UISwitch *switchInCell = [[UISwitch alloc] initWithFrame:CGRectZero];
            cell.accessoryView = switchInCell;

            break;
        }

    }
    //        switch (indexPath.section) {
    //            case 0:
    //                cell.textLabel.text = [self.array1 objectAtIndex:indexPath.row];
    //                break;
    //            case 1:
    //                cell.textLabel.text = [self.array2 objectAtIndex:indexPath.row];
    //                break;
    //            case 2:
    //                cell.textLabel.text = [self.array3 objectAtIndex:indexPath.row];
    //                break;
    //            default:
    //                cell.textLabel.text = [self.array4 objectAtIndex:indexPath.row];
    //                break;
    //        }]]
    cell.textLabel.text = self.array[indexPath.section][indexPath.row];

    if (indexPath.section == 3) {
        [cell.textLabel setTextColor:[UIColor redColor]];

    }


    //        if (cell == 0) {
    //            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell-v"];
    //
    //
    //        }






    return cell;
}

```
