//
//  S7_Basic.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/24.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S7_Header.h"

//---------------------------------------------------------------------
//                           第七章全部
//---------------------------------------------------------------------
//------------------------------------------------
//                    类定义
//------------------------------------------------
@implementation S7_A
@synthesize name, age;
@synthesize nameTest = NAMETEST;
- (id)initWithName:(char *)name {
	self = [super init];
	if (self != NULL) {
		self->name = name;
	}
	return self;
}
@dynamic dynmicTest;
- (int)dynmicTest {
	return age;
}
- (void)setDynmicTest:(int)dynmicTest {
	age = dynmicTest;
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
void S7Tester(void) {
	puts("-----------------------------------------");
	puts("                  S7");
	puts("-----------------------------------------");
	//声明属性
	S7_A *temp = [[S7_A alloc] initWithName:"weida"];
	[temp setAge:20];
	[temp setDynmicTest:1];
	[temp setDynmicTest:24];
	printf("name: %s, age: %d\n", [temp name], [temp age]);
}
