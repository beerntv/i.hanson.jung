//
//  MapViewController.m
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 7..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "MapViewController.h"
// MapKit, CoreLocation 프레임워크 상속받고
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>


static const CGFloat BASE_LATITUDE = 37.563214; // 위도
static const CGFloat BASE_LONGITUDE = 127.006686; // 경도

@interface MapViewController ()
@property (nonatomic, weak) IBOutlet MKMapView *mapView;



@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.005, 0.005);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    [self.mapView setRegion:region];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
   
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
