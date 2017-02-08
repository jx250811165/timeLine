//
//  ProgressHeader.h
//  yydb
//
//  Created by 十六 on 16/11/15.
//  Copyright © 2016年 com.SG.SparklingGame. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressView : UIView<UITableViewDataSource,UITableViewDelegate>




/**
 *  多少个进度
 */
@property (nonatomic,assign)NSInteger rowNum;


/**
 *  默认颜色
 */
@property (nonatomic,strong)UIColor *defaultColor;


/**
 *  高亮颜色
 */
@property (nonatomic,strong)UIColor *highlightColor;



/**
 *  每个进度的高度
 */
@property (nonatomic,assign)CGFloat cellHeight;


- (instancetype)initWithFrame:(CGRect)frame;


-(void)headerWithType:(NSInteger)type andTime:(NSArray *)timeArr andTypeName:(NSArray *)typeName;

@end
