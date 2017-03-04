예제) UIWindow project
----------------------

스토리보드 없이 raw한 방법으로 하드코딩 접근해서 시작점을 지정하는 테스트

appDelegate.m에서 접근

1.	스토리보드에서 시작점을 지우고  
2.	스토리보드에서 identity >> storyboard id "ViewController"파일이름 써준다. 그래야 파일명으로 접근할 수 있다.
3.	옵션에서 main interface 파일명 maim 삭제. portrait를 제외한 다른것 해제

appDelegate에서 navigation controller도 넣어보자

```objc
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions //{

// 1.윈도우만들기
self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];


// 2.RootViewController 만들기
UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
ViewController *rootVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"ViewController"];


ViewController *rootVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"ViewController"];

UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
//navigationController를 만들어서 삽입.  

// 3.윈도우에 RootViewController 지정
self.window.rootViewController = naviVC;
//rootVC 대신 naviVC를 얹는다.
[self.window makeKeyAndVisible];
return YES;
}
```

```objc

//페이지 전환
//[self presentViewController:xVC animated:YES completion:nil];
 [self.navigationController pushViewController:xVC animated:YES];

 - (void)onSelectedBtn:(UIButton *)sender {
    //이전페이지로 이동. 내리기

    //[self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];

```

예제) 0207 login 프로젝트에 덧붙이는 연습
