//
//  QQStyleQRScanViewController.h
//  LBXScanDemo
//  github:https://github.com/MxABC/LBXScan
//  Created by lbxia on 15/10/21.
//  Copyright © 2015年 lbxia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "LBXScanView.h"
#import "LBXScanWrapper.h"

@interface LBXScanViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>



/**
 @brief  扫码功能封装对象
 */
@property (nonatomic,strong) LBXScanWrapper* scanObj;



#pragma mark - 扫码界面效果及提示等
/**
 @brief  扫码区域视图,二维码一般都是框
 */
@property (nonatomic,strong) LBXScanView* qRScanView;


/**
 @brief  扫码当前图片
 */
@property(nonatomic,strong)UIImage* scanImage;


/**
 *  界面效果参数
 */
@property (nonatomic, strong) LBXScanViewStyle *style;

/**
 @brief  启动区域识别功能
 */
@property(nonatomic,assign)BOOL isOpenInterestRect;


/**
 @brief  扫码区域上方提示文字
 */
@property (nonatomic, strong) UILabel *topTitle;




#pragma mark -相册
//相册
@property (nonatomic, strong) UIButton *btnPhoto;







@end
