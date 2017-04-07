```objc
- (void)textFieldDidBeginEditing:(UITextField *)textField {

    self.lastFirstResponderTextField = textField;
    //4개의 텍스트필드중 두번째걸 작성하고 있다면 그게 마지막 텍스트필드.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([self.lastFirstResponderTextField isFirstResponder] && ([touch view] != self.lastFirstResponderTextField)) {
        //늘 내가 작성중인 텍스트필드가 마지막이라 바깥 어딜 눌러도 키보드가 내려간다.
        [self.lastFirstResponderTextField resignFirstResponder];
    }
}
```

아래는 원시적으로 동일하게

```objc
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch = [[event allTouches] anyObject];
    if (([self.idTextField isFirstResponder] || [self.pwTextField isFirstResponder] || [self.pwReEnterTextField isFirstResponder] || [self.emailTextField isFirstResponder]) && (([touch view] != self.idTextField) || ([touch view] != self.pwTextField)  || ([touch view] != self.pwReEnterTextField) || ([touch view] != self.emailTextField))) {
        [self.idTextField resignFirstResponder];
        [self.pwTextField resignFirstResponder];
        [self.pwReEnterTextField resignFirstResponder];
        [self.emailTextField resignFirstResponder];
    }
}
```




