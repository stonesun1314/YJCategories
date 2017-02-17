//
//  UIView+YJExtention.h
//  YJCategoriesGather
//
//  Created by YJHou on 2017/2/17.
//  Copyright © 2017年 Houmanager. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 得到中心点 */
CGPoint CGRectGetCenter(CGRect rect);

@interface UIView (YJExtention)

@property (nonatomic, assign) CGPoint origin; /**< 坐标点 */
@property (nonatomic, assign) CGSize size;    /**< 大小 */

@property (nonatomic, assign) CGFloat x;    /**< 左 */
@property (nonatomic, assign) CGFloat y;     /**< 上 */
@property (nonatomic, assign) CGFloat bottom;  /**< 下 */
@property (nonatomic, assign) CGFloat right;   /**< 右 */
@property (nonatomic, assign) CGFloat width;     /**< 宽 */
@property (nonatomic, assign) CGFloat height;    /**< 高 */

@property (nonatomic, assign) CGPoint leftTop;    /**< 左上 */
@property (nonatomic, assign) CGPoint rightTop;    /**< 右上 */
@property (nonatomic, assign) CGPoint leftBottom;    /**< 左下 */
@property (nonatomic, assign) CGPoint rightBottom;    /**< 右下 */

/** 移动 */
- (void)moveOriginToPoint:(CGPoint)point;
/** 缩放 */
- (void)scaleWidth:(CGFloat)widthFactor height:(CGFloat)heightFactor;
/** 适应缩放 */
- (void)fitScaleInSize:(CGSize)size;

@end