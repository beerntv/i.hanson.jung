## UINavigationBar만 사용하기.

우선 공식문서

스테이터스 바 배경 넣는 방법 UINavigationBarDelegate 설정 후

```objc

- (UIBarPosition)positionForBar:(id<UIBarPositioning>)bar {
    return UIBarPositionTopAttached;
}
```


## 형식지정자

이 [블로그](http://ownstory.tistory.com/18)를 참조하자!

숫자에 0패딩을 주고 싶으면 아래와 같이 하자.

NSInteger i = 77;
NSLog(@"%03ld",i); // -> 077