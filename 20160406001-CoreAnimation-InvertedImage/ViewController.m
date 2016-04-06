//
//  ViewController.m
//  20160406001-CoreAnimation-InvertedImage
//
//  Created by Rainer on 16/4/6.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ViewController.h"
#import "ReplicatorLayerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ReplicatorLayerView *replicatorLayerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.取得自定义view的图层（自定义返回复制图层）
    CAReplicatorLayer *replicatorLayer = (CAReplicatorLayer *)self.replicatorLayerView.layer;
    
    // 2.设置复制图层的数量
    replicatorLayer.instanceCount = 2;
    
    // 3.创建一个图层的形变属性
    CATransform3D transform3D = CATransform3DMakeTranslation(0, self.replicatorLayerView.bounds.size.height, 0);
    
    // 4.按照X轴旋转赋值图层180度
    transform3D = CATransform3DRotate(transform3D, M_PI, 1, 0, 0);
    
    // 5.设置复制图层的形变属性
    replicatorLayer.instanceTransform = transform3D;
    
    // 6.设置复制图层的形变颜色属性
    replicatorLayer.instanceRedOffset = -0.1;
    replicatorLayer.instanceGreenOffset = -0.1;
    replicatorLayer.instanceBlueOffset = -0.1;
    replicatorLayer.instanceAlphaOffset = -0.1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
