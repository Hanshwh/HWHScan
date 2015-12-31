//
//  QrCodeViewController.m
//  自定义扫描二维码
//
//  Created by centling on 15/12/31.
//  Copyright © 2015年 Edward. All rights reserved.
//

#import "QrCodeViewController.h"
#import "LBXScanView.h"
#import "LBXScanViewController.h"

#import <objc/message.h>
@interface QrCodeViewController ()

@end

@implementation QrCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self recoCropRect];
}

- (void)recoCropRect
{
    //设置扫码区域参数
    LBXScanViewStyle *style = [[LBXScanViewStyle alloc]init];
    style.centerUpOffset = 44;
    style.photoframeAngleStyle = LBXScanViewPhotoframeAngleStyle_On;
    style.photoframeLineW = 6;
    style.photoframeAngleW = 24;
    style.photoframeAngleH = 24;
    style.isNeedShowRetangle = YES;
    
    style.anmiationStyle = LBXScanViewAnimationStyle_LineMove;
    
    //矩形框离左边缘及右边缘的距离
    style.xScanRetangleOffset = 50;
    
    UIImage *imgPartNet = [UIImage imageNamed:@"CodeScan.bundle/qrcode_scan_light_green"];
    
    style.animationImage = imgPartNet;
    
    LBXScanViewController *vc = [LBXScanViewController new];
    vc.style = style;
    //开启只识别框内
    vc.isOpenInterestRect = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
