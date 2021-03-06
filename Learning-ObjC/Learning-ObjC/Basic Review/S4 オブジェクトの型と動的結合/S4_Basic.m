//
//  S4_Basic.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/21.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S4_Header.h"

//---------------------------------------------------------------------
//                           第四章全部
//---------------------------------------------------------------------
//------------------------------------------------
//                    类定义
//------------------------------------------------
//动态结合与多态
@implementation S4_A
- (void)getLocationOfHierarchy {
	puts("this is A");
}
- (void)getLocationOfHierarchy:(BOOL)isneedHello {
	if (isneedHello) {
		puts("hello, this is A");
	} else {
		puts("need no hello, this is A");
	}
	
}
@end

@implementation S4_B
- (void)getLocationOfHierarchy {
	puts("this is B");
}
- (void)getLocationOfHierarchy:(BOOL)isneedHello {
	if (isneedHello) {
		puts("hello, this is B");
	} else {
		puts("need no hello, this is B");
	}
}
@end

//类型宣言, 实例变量的封装
@implementation S4_C
- (void)printSelfName {
	temp = [[S3_Basic alloc] init];
}
- (S4_C *)init {
	self = [super init];
	if (self != nil) {
		temp = [[S3_Basic alloc] init];
	}
	return self;
}
+ (void)initialize {
	S4_Str = "S4_C 已初始化";
	puts(S4_Str);
}
@end

//------------------------------------------------
//                   函数声明
//------------------------------------------------

//------------------------------------------------
//                   函数定义
//------------------------------------------------

//---------------------------------------------------------------------
//                             测试函数
//---------------------------------------------------------------------
void S4Tester(void) {
	puts("-----------------------------------------");
	puts("                  S4");
	puts("-----------------------------------------");
	id aTemp = [[S4_A alloc] init];
	[aTemp getLocationOfHierarchy];
	[aTemp getLocationOfHierarchy:NO];
	[aTemp getLocationOfHierarchy:YES];

	id bTemp = [[S4_B alloc] init];
	[bTemp getLocationOfHierarchy];
	[bTemp getLocationOfHierarchy:NO];
	[bTemp getLocationOfHierarchy:YES];
	
	[S4_C self]; // 什么都不做，只是初始化类
	S4_C *cTemp = [[S4_C alloc] init];
	[cTemp->temp printHello];
	
}
