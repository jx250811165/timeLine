//
//  SLTiMELlineCell.m
//  timeLine
//
//  Created by 江星 on 16/11/16.
//  Copyright © 2016年 江星. All rights reserved.
//

#import "SLTiMELlineCell.h"

@implementation SLTiMELlineCell

- (void)awakeFromNib {
    // Initialization code
}


//@property (strong, nonatomic)  UILabel *topLine;
//
//@property (strong, nonatomic)  UILabel *ball;
//
//@property (strong, nonatomic)  UILabel *belowLine;
//
//@property (strong, nonatomic)  UILabel *typeName;
//
//@property (strong, nonatomic)  UILabel *timeLabel;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _ball = [[UILabel alloc]init];
        _topLine = [[UILabel alloc]init];
        _belowLine = [[UILabel alloc]init];
    }
    return self;
}






- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
