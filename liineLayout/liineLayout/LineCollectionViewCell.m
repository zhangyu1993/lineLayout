//
//  LineCollectionViewCell.m
//  liineLayout
//
//  Created by LNXD1 on 16/8/10.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import "LineCollectionViewCell.h"

@implementation LineCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.cellLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.cellLab.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        self.cellLab.textAlignment = NSTextAlignmentCenter;
        self.cellLab.font = [UIFont systemFontOfSize:40];
        self.cellLab.backgroundColor = [UIColor redColor];
        self.cellLab.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_cellLab];
        self.contentView.layer.borderWidth = 1;
        self.contentView.layer.borderColor = [UIColor yellowColor].CGColor;
    }
    return self;
}

@end
