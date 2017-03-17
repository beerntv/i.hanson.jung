//
//  ViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 16..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

@interface ViewController ()


//static NSString *const BASE_URL     = @"https://fc-ios.lhy.kr/api";
//static NSString *const LOGIN_URL    = @"/member/login/";
//static NSString *const LOGOUT_URL   = @"/member/logout/";
//static NSString *const SIGNUP_URL   = @"/member/signup/";
//
//static NSString *const POST_METHOD  = @"POST";
//static NSString *const GET_METHOD   = @"GET";


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Request 객체 생성
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://fc-ios.lhy.kr/api/post/"]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    request.HTTPMethod = @"POST";
    //[request setValue:[self tokenValue] forHTTPHeaderField:TOKEN_KEY];
    [request setValue:@"multipart/formed-data" forHTTPHeaderField:@"Content-Type"];
    
    
    /****************************Multipart Data**************************/
    NSString *boundary = @"------------0x0x0x0x0x0x0x0x";
    NSMutableData *body = [NSMutableData data];
    //start boundary
    ///////////타이틀 정보
    
    NSString *title = @"내가 쓴 title";
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"title\"\r\n\r\n%@", title] dataUsingEncoding:NSUTF8StringEncoding]];
    //    [body appendData:[[NSString stringWithFormat:@"%@",title] dataUsingEncoding:NSUTF8StringEncoding]];
    
    ///////////컨텐츠  정보
    NSString *content = @"내가 쓴 글 content";
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"content\"\r\n\r\n%@", content] dataUsingEncoding:NSUTF8StringEncoding]];
    ///////////이미지 정보
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"img_cover\"; filename=\"image.jpg\"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
//    [body appendData:imageData];
// imagepicker 의 경우 dictionary형태로 데이터가 나오는데 거기서 image data만 뽑아서 보낸다. 아래는 이경로 대신 프로젝트에 사진을 직접 첨부했을 경우
// 이미지도 데이터로 만들어서  post해야한다
    UIImage *image = [UIImage imageNamed:@"asd"];
    NSData *data = UIImageJPEGRepresentation(image, 0.5);
    [body appendData:data];
    
    //End boundary
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    /****************************Multipart Data End**************************/
    
    //bady에 셋팅
    request.HTTPBody = body;
    NSString* MultiPartContentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary];
    [request setValue:MultiPartContentType forHTTPHeaderField: @"Content-Type"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
