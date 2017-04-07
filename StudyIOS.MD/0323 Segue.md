## Segue
 segue는 object
![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/segue_defined_2x.png)

![](https://i.stack.imgur.com/esrYF.png)


show detail 은 뷰 스위치
modally 밑에서 위로
popover 위에서 아래로 pop

 ![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG_displaying-view-controller-using-segue_9-4_2x.png)
 
 
 
###  shouldPerformSegueWithIdentifier:sender:
 
 override해서 identifier 가져와서, 로그인할거냐 말거냐, 세그위에를 진행할거냐 말거냐를 정한다.
 
###  prepareForSegue:sender:
 
 
 
### awakeFromNib:

커스텀뷰를 만드는데 스토리보드가 사용될때 여기서 한다.


## Unwind Segue

여기서 맞춰야할건 액션과 세그웨이
Exit 된다음에 돌아올 때 아래 메서드가 불림

```
- (IBAction)myUnwindAction:(UIStoryboardSegue * )unwindSegue
(unwindSegue 목적지)
```

![](https://cocoacasts.s3.amazonaws.com/how-do-unwind-segues-work/figure-create-unwind-segue-1.jpg)


## Manual Segue (수동 세그웨이)

> "Segue를 코드로 짜겠다"

```
 [self performSegueWithIdentifier:@"segueName" sender:self];
```


![](http://2.bp.blogspot.com/-WlSaBYQKoJ8/VUm4kXl55AI/AAAAAAAAFYc/qQfqlNbkVDA/s1600/%E8%9E%A2%E5%B9%95%E5%BF%AB%E7%85%A7%2B2015-05-06%2B%E4%B8%8B%E5%8D%882.40.01.png)

```
[self performSegueWithIdentifier:@"segueName" sender:self];
```



## ViewController 생성 이동 3가지

```objc

1. 코드로 alloc (근데 alloc init 타임때문에 넘어갈때 렉이 걸렸다. 
//        PinModificationViewController *pinModiVC = [[PinModificationViewController alloc] init];
        
 2. 스토리보드에서 만들어서 그 스토리보드의 ViewController를 부른다.       
//        PinModificationViewController *pinModiVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PinModificationViewController"];
//        [self.navigationController pushViewController:pinModiVC animated:YES];

3. 스토리보드에서 segue까지 만들어서 segue를 identifier로 부른다.         
        [self performSegueWithIdentifier:@"pinModiSegue" sender:self];
        ```