Push Notification - OS에서 관장. launchWithOption

Local Notification 

#NSNotificationCenter
싱글턴

특정 이벤트가 발생하였음을 알리기 위해 불특정 다수의 객체에게 알리기위해 사용하는 클래스

event 보내는 쪽이 post

observer 들에게 event 가 왔음을 알려줌 (broadcast)

![](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Art/notificationcenter_2x.png)


add observer

```objc

//viewDidLoad에 만듬
[NSNotificationCenter defaultCenter] addObserver:self 
											selector:method
											name:@"key" object:nil];



dealloc이나 didReceiveMemoryWarning에서 remove를 해줘야 한다

add observer랑 페어링											
											
```
