//
//  ViewController.m
//  Newwork_dispatch
//
//  Created by Hanson Jung on 2017. 3. 15..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    NSArray *arrayUrl = @[@"http://www.newhdtour.com/images/area/51_1.jpg",
                          @"http://iaufrance.org/Content/Uploads/CMS/Images/barcelona-spain.jpg",
                          @"http://www.v3wall.com/wallpaper/1600_1200/1111/1600_1200_20111117091303772935.jpg"
                          ];
    
    for (NSInteger i = 0; i < arrayUrl.count; i++) {
        NSLog(@"%ld, for", i);
        
        NSURL *url = [NSURL URLWithString:[arrayUrl objectAtIndex:i]];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        NSURLSessionTask *task = [session dataTaskWithURL:url
                                        completionHandler:^(NSData * _Nullable data,
                                                            NSURLResponse * _Nullable response,
                                                            NSError * _Nullable error) {
                                            NSLog(@"%ld, NSURLSessionTask", i);
                                            if (data) {
                                                NSLog(@"%ld, data", i);
                                                UIImage *image = [UIImage imageWithData:data];
                                                
                                                if (image) {
                                                    NSLog(@"%ld, image", i);
                                                    dispatch_async(dispatch_get_main_queue(), ^{
                                                    
                                                        
                                                        switch (i) {
                                                            case 0:
                                                                _image1.image = image;
                                                                break;
                                                                
                                                            case 1:
                                                                _image2.image = image;
                                                                break;
                                                                
                                                                
                                                            default:
                                                                _image3.image = image;
                                                                break;
                                                        }
                                                    });
                                                    
                                                }
                                                
                                            }
                                        }];
        [task resume];
        
        
        
    }
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
