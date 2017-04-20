## UIAlertController

이전에는 UIActionSheet와 UIAlertView가 사용되었는데 ios8부터 UIAlertController라는 클래스를 대체 사용하여야 한다

2가지방식 - alert, action sheet
![](http://ezcocoa.com/wp-content/uploads/2016/02/actionsheetNewImage3.png)

원래 UIAlertView는 selector로 되어있었다. 근데 controller로 바뀌면서 block으로 바뀌었다. (GCD)


```objc

UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"어맛!"
                                                                                          message:@"이미 존재하는 아이디예요"
                                                                                   preferredStyle:UIAlertControllerStyleAlert];
                 
                 UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인"
                                                                    style:UIAlertActionStyleDefault
                                                                  handler:^(UIAlertAction * _Nonnull action) {
                                                                      NSLog(@"확인버튼이 클릭되었습니다");
                                                                      
                                                                  }];
                 [alertController addAction:okButton];
                 
                 [self presentViewController:alertController animated:YES completion:nil];
                 
                 
```