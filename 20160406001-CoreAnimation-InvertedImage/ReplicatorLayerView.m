//
//  ReplicatorLayerView.m
//  20160406001-CoreAnimation-InvertedImage
//
//  Created by Rainer on 16/4/6.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ReplicatorLayerView.h"

@implementation ReplicatorLayerView

/**
 *  重写该方法可以让view的图层返回一个复制层
 */
+ (Class)layerClass {
    return [CAReplicatorLayer class];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
