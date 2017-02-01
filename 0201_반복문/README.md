## 반복문

### while문 과 for문에 대해 알아보자
## 증감연산

|증감연산자|예제|설명|
|:---:|:---:|:---:|
|++| a++|1씩 증가 (a = a + 1)|     
|**- -**|b **- -**|1씩 감소 (b = b - 1)|
(ㄴ 증감연산자는 Swift에서 없어졌다)

|복합연산자|예제|설명|
|:---:|:---:|:---:|
|++| a+=3|a값3씩증가 (a = a + 3)|
|**- -**|b **-** = 2 |1씩감소 (b = b - 1)|

## while문

```objc
- (void)method:(NSInteger)number
{
	NSInteger index = 0;
	//카운팅변수 생성
	
	while(index < number) 
	// 실행조건: index가 number보다 작으면 계속-

	{ 
		NSLog(@"현재 반복횟수는 %d 번 입니다", index);
		index += 1;
		//변수 증가	
}

```



### 예제) n! 팩토리얼

```objc
//팩토리얼 while 문

+ (void)pactorialWhile:(NSInteger)num
{
    NSInteger index = 1;
    //카운팅 변수
    NSInteger result = 1;
    
    while (index <= num) {
    //      실행조건  
        result = result * index; 구문실행
        NSLog(@"while문 %ld! = %ld",num, result);
        index += 1; 변수증감
        
    }
}

```


```objc
//팩토리얼 for 문

+(void)pactorialFor:(NSInteger)num
{
    
    NSInteger result = 1;
    for (NSInteger i = 1; i <= num; i += 1) {
    
    // 카운팅 변수      ;    실행조건   ;  변수증감  >> 세미콜론;으로 구분한다
        
        result = result * i;  구문실행
        NSLog(@"for문 %ld! = %ld", num, result);
        
    }
}

```



