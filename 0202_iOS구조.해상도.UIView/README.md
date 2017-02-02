## iOS의 구조

## The Structure of an App - MVC



Xcode는 많은 델리게이트들을 만들어 놓았고, 델리게이트안에는 특정 시점에 동작을 하는 메소드들이 정의가 되어있다. 이 메소드들을 프로그래머가 호출해서 사용하면 되는 것이다.

위 스크린샷에서는 UIApplicationDelegate(프로토콜)란 놈을 사용하고 있고, 그 안에있는 다음의 메소드들을 호출하고 있다.
![](http://mblogthumb4.phinf.naver.net/20141230_79/seotaji_1419902374303KMBUq_PNG/%BD%BA%C5%A9%B8%B0%BC%A6_2014-12-30_%BF%C0%C0%FC_10.19.11.png?type=w2)

![](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)

![](https://i.stack.imgur.com/wYKPZ.png)

![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG-root-view-controller_2-1_2x.png)

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