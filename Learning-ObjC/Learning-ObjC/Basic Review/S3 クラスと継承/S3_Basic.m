//
//  S3_Basic.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/20.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S3_Header.h"

//---------------------------------------------------------------------
//                           第三章全部
//---------------------------------------------------------------------
//------------------------------------------------
//                    类定义
//------------------------------------------------
// 继承
@implementation S3_Basic
- (void)printHello {
	puts("Hello, S3_Basic");
}
@end

@implementation S3_Basic_sub
- (void)printHello {
	printf("Hello, S3_Basic_sub\n");
}
@end

@implementation S3_Basic_sub_sub
- (void)printHello {
	[super printHello];
	printf("Hello, S3_Basic_sub_sub\n");
}
@end
// 构造函数
@implementation S3_Basic_Init
- (id)initWithLength:(int)length {
	printf("length: %d\n", length);
	self = [super init];
	if (self != nil) {
		int i;
		str = (char *)calloc(sizeof(char), length);
		for (i = 0; i < length; ++i) {
//			str[i] = 1;
			printf("str[%d]: %c %d\n", i, str[i], str[i]);
		}
		printf("str[%d]: %c %d\n", i, str[i], str[i]);
	}
	return self;
}
- (int)getStrLength {
	int count = 0;
	while (str != nil && (*str) != '0') {
		++count;
//		printf("count: %d char = %c\n", count, str[count]);
		++str;
	}
	return count;
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
void S3Tester(void) {
	puts("-----------------------------------------");
	puts("                  S3");
	puts("-----------------------------------------");
	
	// 继承
//	[[[S3_Basic alloc] init] printHello];
//	[[[S3_Basic_sub alloc] init] printHello];
//	[[[S3_Basic_sub_sub alloc] init] printHello];
	
	// 构造函数
	int count = [[[S3_Basic_Init alloc] initWithLength: 15] getStrLength];
	printf("字符串长度: %d\n", count); // TODO: fix here [为什么没办法正确计算字符串长度]
	
}
