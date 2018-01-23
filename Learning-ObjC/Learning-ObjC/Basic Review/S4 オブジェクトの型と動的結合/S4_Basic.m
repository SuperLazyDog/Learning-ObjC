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
//                           第二章全部
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

//类型宣言
@implementation S4_C
- (void)printSelfName {
	temp = [[S3_Basic alloc] init];
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
	
}
