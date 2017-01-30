//
//  Fraction.h
//  PractionTest
//
//  Created by Hanson Jung on 2017. 1. 27..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject

- (void) print;
- (void) setNumerator: (int) nl;
- (void) setDenominator: (int) d;
- (void) numerator;
- (void) denominator;
- (void) convertToNum;


@end
