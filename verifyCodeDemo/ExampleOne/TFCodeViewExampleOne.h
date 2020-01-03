//
//  TFCodeViewExampleOne.h
//  verifyCodeDemo
//
//  Created by 咕咚咕咚 on 2020/1/3.
//  Copyright © 2020 醉醺醺的红毛衣. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TFCodeViewExampleOneDelegat <NSObject>
 
/// 当输入结束（可以根据需求:TODO......）
- (void)finish;
 
@end

@interface TFCodeViewExampleOne : UIView

/// 当前输入的内容
@property (nonatomic, copy, readonly) NSString *code;

- (instancetype)initWithCount:(NSInteger)count margin:(CGFloat)margin;

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
+ (instancetype)new UNAVAILABLE_ATTRIBUTE;


@property (nonatomic, weak) id<TFCodeViewExampleOneDelegat> delegate;

@end

