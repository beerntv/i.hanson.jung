//
//  ViewController.m
//  Newwork
//
//  Created by Hanson Jung on 2017. 3. 15..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIImageView *imgView1;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UIImageView *imgView3;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // plist 에서 ATS 세팅 수정
    
    NSArray *urlArr = @[@"http://image.bugsm.co.kr/album/images/original/200261/20026112.jpg",
                        @"https://www.tesla.com/tesla_theme/assets/img/modelx/section-hero-background.jpg?20161201",
                        @"https://www.tesla.com/sites/default/files/about/media/models_interior-medium.jpg?201501121530"
                        ];
    
//    NSData *imgData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@""]];
//    self.imgView.image = [UIImage imageWithData:imgData];
//    [NSData dataWithContentsOfURL:http://image.bugsm.co.kr/album/images/original/200261/20026112.jpg];
    
    
//    [self.imgView setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://image.bugsm.co.kr/album/images/original/200261/20026112.jpg"]]]];
//    
//    [self.imgView2 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.tesla.com/tesla_theme/assets/img/modelx/section-hero-background.jpg?20161201"]]]];
//    
//    [self.imgView3 setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.tesla.com/sites/default/files/about/media/models_interior-medium.jpg?201501121530"]]]];
//    
//    
//    
//    NSURL *thumbnailURL = [NSURL URLWithString:@"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSGeRlnQ_5Rl5WVqJPCw_Bwv9w3W0gdg2R8CJ2wmZ7dIS1ho8MK"];
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//    
//    NSURLSessionTask *task = [session dataTaskWithURL:request
//                                             fromData:[requestData dataUsingEncoding:NSUTF8StringEncoding]
//                                    completionHandler:^(NSData * _Nullable data,
//                                                  NSURLResponse *_Nullable response,
//                                                  NSError *_Nullable error) {
//                                  if (error == nil) {
//                                      NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
//                                      NSLog(@"%@", responsData);
//                                      
//                                  } else {
//     
//                                      completion(NO, error);
//                                  }
//                              }];
// 
//    [task resume];

   
    for (NSInteger i = 0 ; i < urlArr.count ; i++) {
        
        NSURL *thumbnailURL = [NSURL URLWithString:[urlArr objectAtIndex:i]];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL
                                        completionHandler:^(NSData * _Nullable data,
                                                            NSURLResponse * _Nullable response,
                                                            NSError * _Nullable error) {
                                            NSLog(@"i = %ld, isMainThread ? : %d", i, [NSThread isMainThread]);
                                            
                                            if (data) {
                                                UIImage *image = [UIImage imageWithData:data];
                                                if (image) {
                                                    //UI변경 코드
                                                    //변경을 위해 GCD사용
                                                    dispatch_async(dispatch_get_main_queue(), ^{
                                                        NSLog(@"i = %ld, dispatch_get_main_queue ? : %d", i, [NSThread isMainThread]);
                                                        
                                                        switch (i) {
                                                            case 0:
                                                                _imgView1.image = image;
                                                                break;
                                                                
                                                            case 1:
                                                                _imgView2.image = image;
                                                                break;
                                                                
                                                            default:
                                                                _imgView3.image = image;
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
