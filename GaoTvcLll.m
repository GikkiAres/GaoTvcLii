//
//  GaoTvcLl.m
//  GaoDisplayManagerDemo
//
//  Created by Gikki Ares on 2020/8/5.
//  Copyright © 2020 vgemv. All rights reserved.
//

#import "GaoTvcLll.h"

@implementation GaoTvcLll

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)displayContent:(NSArray <NSString *>*)arr {
	if(arr.count < 3) {
		return;
	}
	NSString * str_index = arr[0];
	NSString * str_title = arr[1];
	NSString * str_detail = arr[2];
	self.mLb_index.text = str_index;
	self.mLb_title.text = str_title;
	self.mLb_detail.text = str_detail;
}

+ (CGFloat)cellHeight {
	return 50;
}

-(void)displayModel:(GaoTvcLllModel *)model {
	self.mLb_index.text = model.mstr_index;
	self.mLb_title.text = model.mstr_title;
	self.mLb_detail.text = model.mstr_desc;
}

@end
