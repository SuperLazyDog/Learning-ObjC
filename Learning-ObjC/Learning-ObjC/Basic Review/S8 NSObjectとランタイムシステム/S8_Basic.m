//
//  S8_Basic.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/25.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S8_Header.h"

//---------------------------------------------------------------------
//                           第八章全部
//---------------------------------------------------------------------
//------------------------------------------------
//                    类定义
//------------------------------------------------
@implementation S8_A
- (int)getOne {
	return 1;
}
+ (int)getTwo {
	return 2;
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
void S8Tester(void) {
	puts("-----------------------------------------");
	puts("                  S8");
	puts("-----------------------------------------");
//	SEL a = @selector(s8Test:param2:param3:);
	//判断是否能回应信息
	S8_A *temp = [[S8_A alloc] init];
	printf("-能不能回应getONE: %s\n", [temp respondsToSelector:@selector(getOne)] ? "OK":"NO");
	printf("+instance能不能回应getONE: %s\n", [S8_A instanceMethodForSelector:@selector(getOne)] ? "OK":"NO");
	
	printf("-能不能回应getTwo: %s\n", [temp respondsToSelector:@selector(getTwo)] ? "OK":"NO");
	printf("+instance能不能回应getTwo: %s\n", [S8_A instanceMethodForSelector:@selector(getTwo)] ? "OK":"NO");
	
	printf("[[NSObject class] isKindOfClass: [NSObject class = %s\n", [[NSObject class] isKindOfClass: [NSObject class]] ? "YES":"NO" );
}
