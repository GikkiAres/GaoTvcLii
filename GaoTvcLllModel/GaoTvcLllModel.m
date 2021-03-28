//
//  GaoTvcLllModel.m
//  OpenglDemo
//
//  Created by Gikki Ares on 2020/9/13.
//  Copyright © 2020 vgemv. All rights reserved.
//

#import "GaoTvcLllModel.h"

@implementation GaoTvcLllModel

- (instancetype)initWithIndex:(NSString *)index title:(NSString *)title desc:(NSString *)desc{
	if(self = [super init]) {
		self.mstr_index = index;
		self.mstr_title = title;
		self.mstr_desc = desc;
	}
	return self;
}




@end
