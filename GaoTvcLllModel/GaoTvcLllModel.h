	//
	//  GaoTvcLllModel.h
	//  OpenglDemo
	//
	//  Created by Gikki Ares on 2020/9/13.
	//  Copyright © 2020 vgemv. All rights reserved.
	//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GaoTvcLllModel : NSObject

	//外部访问的变量统一用属性
@property (nonatomic,strong)NSString * mstr_index;
@property (nonatomic,strong)NSString * mstr_title;
@property (nonatomic,strong)NSString * mstr_desc;

@property (nonatomic,strong)UIFont * mFont_title;
@property (nonatomic,strong)UIFont * mFont_desc;
	//附加的数据.
@property (nonatomic,strong)id attachedData;

- (instancetype)initWithIndex:(NSString *)index title:(NSString *)title desc:(NSString *)desc;
- (CGFloat)cellHeight;
@end

NS_ASSUME_NONNULL_END
