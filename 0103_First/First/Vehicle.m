//
//  Vehicle.m
//  First
//
//  Created by ChoiJinYoung on 2/28/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
@synthesize seats;

//-(void)setWheels:(int)w{
//    wheels = w;
//}
//
//-(void)setSeats:(int)s{
//    seats = s;
//}

-(void)setWheels:(int)w Seats:(int)s{
    wheels = w;
    seats = s;
}

-(void)print{
    NSLog(@"wheels : %i, seats : %i",wheels,seats);
}

//-(int)wheels{
//    return wheels;
//}
//
//-(int)seats{
//    return seats;
//}
@end
