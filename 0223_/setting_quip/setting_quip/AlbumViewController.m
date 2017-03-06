//
//  AlbumViewController.m
//  setting_quip
//
//  Created by Hanson Jung on 2017. 3. 2..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "AlbumViewController.h"

@interface AlbumViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *albumButton;
@property UIImagePickerController *album;
@end

@implementation AlbumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:imgView];
    
    UIImagePickerController *album = [[UIImagePickerController alloc] init];
    album.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    album.allowsEditing = NO;
    album.delegate = self;
    [self presentViewController:album animated:YES completion:nil];
    
    self.album = album;
    
    
    //    UIImagePickerController *camera = [[UIImagePickerController alloc] init];
    //    camera.sourceType = UIImagePickerControllerSourceTypeCamera;
    //    camera.allowsEditing = NO;
    //    camera.delegate = self;
    //    [self presentViewController:camera animated:YES completion:nil];

    
}
- (IBAction)album:(id)sender {
    [self presentViewController:self.album animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
//
//    NSLog(@"info %@", info);
//    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
//    self.imgView.image = image;
//
//
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
