	//
	//  GaoTvcLllModel.m
	//  OpenglDemo
	//
	//  Created by Gikki Ares on 2020/9/13.
	//  Copyright © 2020 vgemv. All rights reserved.
	//

#import "GaoTvcLllModel.h"
#import "GaoGeometryManager.h"

@interface GaoTvcLllModel()

{
	CGFloat mf_titleWidth;
}

@end

@implementation GaoTvcLllModel

- (instancetype)initWithIndex:(NSString *)index title:(NSString *)title desc:(NSString *)desc{
	if(self = [super init]) {
		
		_mFont_title = [UIFont systemFontOfSize:15];
		_mFont_desc = [UIFont systemFontOfSize:12];
		
		
		
		
		self.mstr_index = index;
		self.mstr_title = title;
		self.mstr_desc = desc;
	}
	return self;
}

- (CGFloat)cellHeight {
	mf_titleWidth = [UIScreen mainScreen].bounds.size.width - 50;
	CGFloat titleHeight = [GaoGeometryManager sizeForMultiLineStringWithContext:self.mstr_title font:_mFont_title maxWidth:mf_titleWidth].height + 10;
	CGFloat descHeight = [GaoGeometryManager sizeForMultiLineStringWithContext:self.mstr_desc font:_mFont_desc maxWidth:mf_titleWidth].height + 10;
	CGFloat height = titleHeight + descHeight;
	return height;
}



@end
