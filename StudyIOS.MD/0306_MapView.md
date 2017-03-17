## MapKit

- TARGETS, Linked Frameworks and Libraries에서 Framework 추가
- CoreLocation Framework과 한 쌍

##  용어
- Region : 지역 (MKCoordinateRegion 사용)

### Region을 표현하기 위해 필요한 내용들
- Span : 펼쳐진 영역(zoom level) - (MKCoordinateSpan사용)   
 	MKCoordinateSpan span = MKCoordinationSpanMake(0.1, 0.1);   // 여기서 1은 111km
- Location Coordinate : 좌표
- latitude : 위도 (wgs84 좌표계 사용)
- longitude : 경도 (wgs84 좌표계 사용)


- GPS 보통 10m 정도 오차가 있다고 gksek
- Pin은 mapView가 갖고 있음
- Annotation은 MKAnnotation Delegate protocol로 구현
- mapView의 Delegate protocol 메서드로 커스텀 핀 구현 가능


## 사용자 위치 설정

- location 과 map은 다르다
- delegate 를 꼭 추가해야하는 이유 - map도, annotation도 view 이다.

- 사용자 허용
 1. info.plist 항목추가 (택1) - ios 10 이상 (안하면 에러)
	- Privacy - Location When In Use Usage Description : YES
	- Privacy - Location Always Usage Description : YES
	- 
### Location Manager 객체 생성 (CLLocationManager)

1. 현위치 요청인증
	- [self.locationManager requestWhenInUseAuthorizition];
	- [self.locationManager requestAlwaysAuthorizition];
	
2. 업데이트
	- [self.locationManager startUpdatingLocation];
	- [self.locationManager stopUpdatingLocation];
	
 


### 예제코드

```objc

// ViewController.m

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1. coordinate, span 정해서 지도 보여주기

    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.001, 0.001);

    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapView setRegion:region];


    // 2. 내 위치 정보 받아서 지도 위에 띄우기

    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;

    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager startUpdatingLocation];

    // display user location
    [self.mapView setShowsUserLocation:YES];

    self.mapView.delegate = self;
}


// 3. 델리게이트 메소드를 통해, 내 위치 정보 중심으로 지도 보여주기
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {

    [manager stopUpdatingLocation];

    CLLocationCoordinate2D coordinate = ((CLLocation *)locations.lastObject).coordinate;
    MKCoordinateSpan span = MKCoordinateSpanMake(0.001, 0.001);

    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapView setRegion:region];


    // 4. Pin 추가 (Add Annotation)
    self.anno = [[Annotation alloc] initWithTitle:@"myPosition" AndCoordinate:coordinate];
    [self.mapView addAnnotation:self.anno];

}

// 5. Annotation Custom Pin 적용
- (MKAnnotationView * )mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {

    MKAnnotationView *newAnnotation = (MKAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:@"pin"];

    if(!newAnnotation) {
        Annotation *myAnnotation = (Annotation *)annotation;
        newAnnotation = [[MKAnnotationView alloc] initWithAnnotation:myAnnotation reuseIdentifier:@"pin"];

        UIView *anView = [[UIView alloc] init];
        anView.backgroundColor = [UIColor blueColor];
        anView.frame = CGRectMake(0, 0, 30, 30);

        newAnnotation.frame = CGRectMake(0, 0, 30, 30);     // frame 안줘도 subView들 잘 나옴
        [newAnnotation addSubview:anView];

    }

    return newAnnotation;
}

```
```objc

// Annotation.h
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject
<MKAnnotation>

@property (nonatomic, copy) NSString *title;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (instancetype)initWithTitle:(NSString *)title AndCoordinate:(CLLocationCoordinate2D)coordinate;

@end

```

```objc

// Annotation.m
#import "Annotation.h"

@interface Annotation ()

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;

@end

@implementation Annotation

- (instancetype)initWithTitle:(NSString *)title AndCoordinate:(CLLocationCoordinate2D)coordinate {

    self = [super init];
    if (self) {
        self.title = title;
        self.coordinate = coordinate;
    }
    return self;
}

@end

```