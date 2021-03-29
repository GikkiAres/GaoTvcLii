	//
	//  GaoTvcLl.m
	//  GaoDisplayManagerDemo
	//
	//  Created by Gikki Ares on 2020/8/5.
	//  Copyright © 2020 vgemv. All rights reserved.
	//

#import "GaoTvcLll.h"
#import "GaoGeometryManager.h"
@interface GaoTvcLll()
{
	GaoTvcLllModel * mModel;
}
@end

@implementation GaoTvcLll

- (void)awakeFromNib {
	[super awakeFromNib];
	[self setupUi];
		// Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
	if(self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
		[self setupUi];
	}
	return self;
}

- (void)setupUi {
	{
		if(!_mLb_index) {
			_mLb_index = [UILabel new];
			[self.contentView addSubview:_mLb_index];
		}
		_mLb_index.frame = CGRectMake(0,0,50,self.bounds.size.height);
		_mLb_index.textColor = [UIColor blackColor];
		_mLb_index.textAlignment = NSTextAlignmentCenter;
	}
	
	{
		if(!_mLb_title) {
			_mLb_title = [UILabel new];
			[self.contentView addSubview:_mLb_title];
		}
		int x = _mLb_index.frame.origin.x + _mLb_index.frame.size.width;
		int w = self.frame.size.width - x;
		int h =  [GaoGeometryManager sizeForMultiLineStringWithContext:mModel.mstr_title font:self.mLb_title.font maxWidth:self.mLb_title.frame.size.width].height + 10;
		_mLb_title.frame = CGRectMake(x,0,w,h);
		_mLb_title.textColor = [UIColor blackColor];
		_mLb_title.font = [UIFont systemFontOfSize:15];
	}
	
	{
		if(!_mLb_detail) {
			_mLb_detail = [UILabel new];
			[self.contentView addSubview:_mLb_detail];
		}
		int x = _mLb_title.frame.origin.x;
		int h = [GaoGeometryManager sizeForMultiLineStringWithContext:mModel.mstr_desc font:self.mLb_detail.font maxWidth:self.mLb_detail.frame.size.width].height + 10;
		int y = _mLb_title.frame.size.height + _mLb_title.frame.origin.y;
		int w = _mLb_title.frame.size.width;
		
		
		_mLb_detail.frame = CGRectMake(x,y,w,h);
		_mLb_detail.textColor = [UIColor blackColor];
		_mLb_detail.font = [UIFont systemFontOfSize:12];
	}
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

-(void)displayModel:(GaoTvcLllModel *)model {
	mModel = model;
	self.mLb_index.text = model.mstr_index;
	self.mLb_title.text = model.mstr_title;
	self.mLb_detail.text = model.mstr_desc;
	[self setupUi];
}

@end
