//
//  Vehicle.h
//  First
//
//  Created by ChoiJinYoung on 2/28/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject{
    //member variable
}

//member method
@property int wheels;
@property int seats;

-(void)setWheels:(int)w Seats:(int)s;
//(void)drawCircle(int x,int y,int r);
-(void)drawCircleX:(int)x Y:(int)y R:(int)r;
-(void)drawCircleXYR:(int)x :(int)y :(int)r;
//-(void)setWheels:(int)w;
//-(void)setSeats:(int)s;
//-(int)wheels;
//-(int)seats;
-(void)print;


@end
