//
//  main.c
//  Test
//
//  Created by Hanson Jung on 2016. 12. 29..
//  Copyright © 2016년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[])
{
    Car *car = [[Car alloc] init];
    car.brandName = @"hyundai";
    
    
    NSLog(@"%@",car.brandName);
    
    Car *sportCar = [[Car alloc] init];
    sportCar.brandName = @"bmw";
    NSLog(@"%@",sportCar.brandName);
    
    
    return 0;
    
    

    
}


//int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
//    return 0;
//}

//
//void HanoiTower(char from, char by, char to, int num)
//{
//    if (num == 1)
//        //탈출조건//
//    {
//        cout << "1 번째 쟁반이 " << from << "에서" << to <<
//        "로 이동" << endl;
//        return;
//    }
    
//    HanoiTower(from, to, by, num - 1);
//    cout << num << "번째 쟁반이" << from << "에서" << to << "로 이동" << endl;
//    HanoiTower(by, from, to, num - 1)'
//    '
//    }
//}
//
