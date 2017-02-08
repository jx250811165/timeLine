//
//  ProgressHeader.m
//  yydb
//
//  Created by 十六 on 16/11/15.
//  Copyright © 2016年 com.SG.SparklingGame. All rights reserved.
//

#import "ProgressView.h"
#import "ProgressViewCell.h"

@interface ProgressView()
{
    NSInteger recordState;
    NSArray *_timeArray;
    NSArray *_typeName;
}


@property (nonatomic,strong)UITableView *table;




@end



@implementation ProgressView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(UITableView *)table
{
    if (!_table) {
        _table  = [[UITableView alloc]initWithFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.cellHeight*self.rowNum) style:UITableViewStylePlain];
        _table.delegate = self;
        _table.dataSource = self;
        _table.scrollEnabled = NO;
        _table.separatorStyle =UITableViewCellSeparatorStyleNone;
    }
    return _table;
}



-(void)headerWithType:(NSInteger)type andTime:(NSArray *)timeArr andTypeName:(NSArray *)typeName
{

    
    [self addSubview:self.table];
    recordState = type;
    _timeArray = timeArr;
    _typeName = typeName;
    
    
    [self.table registerNib:[UINib nibWithNibName:@"ProgressViewCell"  bundle:nil]forCellReuseIdentifier:@"ProgressViewCellID"];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.rowNum;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ProgressViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProgressViewCellID"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.typeName.text = _typeName[indexPath.row];
    cell.timeLabel.text = _timeArray[indexPath.row];
    
    /**
     *  判断球得颜色
     */
    
    if (indexPath.row<=recordState)
    {
        cell.topLine.backgroundColor = self.highlightColor;
        cell.ball.backgroundColor = self.highlightColor;
        if (indexPath.row==recordState)
        {
            cell.belowLine.backgroundColor = self.defaultColor;
        }else
        {
            cell.belowLine.backgroundColor = self.highlightColor;
        }

    }else
    {
        cell.topLine.backgroundColor = self.defaultColor;
        cell.ball.backgroundColor = self.defaultColor;
        cell.belowLine.backgroundColor = self.defaultColor;
    }
    
    
    if (indexPath.row ==0)
    {
        cell.topLine.backgroundColor = [UIColor clearColor];
       
    }
    if (indexPath.row ==self.rowNum-1)
    {
        cell.belowLine.backgroundColor = [UIColor clearColor];
    }
    
    
    
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.cellHeight;
}




@end
