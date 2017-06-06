//
//  MainViewController.m
//  WJDStudyLibrary
//
//  Created by wangjundong on 2017/3/24.
//  Copyright © 2017年 wangjundong. All rights reserved.
//

#import "MainViewController.h"
#import "JDMainDataModel.h"
#import "JDAboutUsViewController.h"

@interface MainViewController ()
@end

@implementation MainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //
    self.title =@"IOS 知识库";
    self.dataSoureArray =@[
                           //用于测试的页面
                           @{@"title":@"临时页面",@"ClassName":@"JDLocaNotificationViewController"},
                           @{@"title":@"知识大全",@"ClassName":@"JDKnowledgeViewController"},
                           @{@"title":@"视图效果",@"ClassName":@"JDViewListViewController"},
                           @{@"title":@"功能集合",@"ClassName":@"JDFunctionListViewController"},
                           @{@"title":@"网络封装",@"ClassName":@"JDNetWorkingViewController"},
                           @{@"title":@"加密解密",@"ClassName":@"JDEncryptionListViewController"},
                           @{@"title":@"图像处理",@"ClassName":@"ImageProcessingStoryboard"},
                           @{@"title":@"动画效果",@"ClassName":@"JDAnimationListViewController"},
                           @{@"title":@"自定义控件",@"ClassName":@"JDCustomControlsViewController"},
                           @{@"title":@"学习网站",@"ClassName":@"JDStudyWebListViewController"},
                           @{@"title":@"音视频播放",@"ClassName":@"JDStudyWebListViewController"},
                           @{@"title":@"常用工具集合",@"ClassName":@"JDCustomToolViewController"},

                           ];
    
    
    UIBarButtonItem *rightButton =[JDUtils createTextBarButtonWithTitle:@"关于" Target:self Action:@selector(aboutClick)];
    self.navigationItem.rightBarButtonItem =rightButton;
}



- (void)aboutClick {
    JDAboutUsViewController *avc =[[JDAboutUsViewController alloc]init];
    [self.navigationController pushViewController:avc animated:YES];
}

@end