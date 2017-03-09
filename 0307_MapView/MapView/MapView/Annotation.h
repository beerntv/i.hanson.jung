//
//  Annotation.h
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 7..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface Annotation : NSObject
<MKAnnotation> // 프로토콜을 상속받은 애는 꼭 그의 프로퍼티를 써야한다

@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (instancetype)initWithTitle:(NSString *)title AndCoordinate:(CLLocationCoordinate2D)Coordinate;

@end
