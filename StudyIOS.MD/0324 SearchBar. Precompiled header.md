## Search Bar

```objc
<UISearchResultsUpdating>

UISearchBar

UISearchController 

- (instancetype)initWithSearchResultsController:(nullable UIViewController *)searchResultsController;

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController;

```


## Precompiled Header

- 컴파일전에 자주 사용하는 헤더파일을 미리 컴파일하여 캐쉬에 저장
- 해더파일 컴피알 시간을 다눅시기키 위해 사용
- 전역적으로 사용하고 싶은 데이터를 헤더 파일 선언하고  Prefix.pch 


ViewController.h 에 있는 #import <UIKit/UIKit.h> 를 
PrefixHeader.pch 파일에  옮겨준다.
그안에 새로만든 헤더파일 #import "BaseBox.h"을 넣어주면 전역적으로 사용 가능하다.

![](https://beerntv.files.wordpress.com/2017/03/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-03-24-e1848be185a9e18492e185ae-2-40-32.png)

<br><br>

## Prefix.pch 설치

![](https://beerntv.files.wordpress.com/2017/03/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-03-24-e1848be185a9e18492e185ae-2-07-19.png)
<br><br>
![](https://beerntv.files.wordpress.com/2017/03/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-03-24-e1848be185a9e18492e185ae-2-24-07.png)
#### * 경로는 해당 프로젝트아래의 폴더명부터 넣으면 된다.


[[UIDevice currentDevice] systemVersion]


## Preprocessor Macros - Debug


#### debug mode 

- 내 test code가 배포(release)될때 실수로 실행되지 않게 할 때 유용하다
- setting
![](https://beerntv.files.wordpress.com/2017/03/e18489e185b3e1848fe185b3e18485e185b5e186abe18489e185a3e186ba-2017-03-24-e1848be185a9e18492e185ae-2-30-12.png)

<br>

```
# ifdef DEBUG 

	// debug only code 
	// DEBUG=1
	
	NSLog(@"debug mode");
#endif	
```

#### 혹은 release 될 때만 실행

```
# ifdef RELEASE

	// debug only code 
	// RELEASE=1
	
	NSLog(@"debug mode");
#endif	
```



<br><br>

####  #ifdef TARGET_OS_SIMULATOR