//
//  Annotation.m
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 7..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "Annotation.h"

@interface Annotation ()
@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;


@end


@implementation Annotation

-(instancetype)initWithTitle:(NSString *)title AndCoordinate:(CLLocationCoordinate2D)Coordinate {
    self = [super init];
    
    if (self) {
        self.title = title;
        self.coordinate = Coordinate;
    }
    
    return self;
}


@end
