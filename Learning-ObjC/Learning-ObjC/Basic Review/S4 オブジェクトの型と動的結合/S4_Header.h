
//
//  S4_Header.h
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/21.
//  Copyright © 2018年 徐伟达. All rights reserved.
//
/*---------------------------------------------------------------------
						   第四章 任务表
 -----------------------------------------------------------------------
 
 ---------------------------------------------------------------------*/

//---------------------------------------------------------------------
//                           类型定义
//---------------------------------------------------------------------
#import "S3_Header.h"
@class S3_Basic;
//动态结合与多态
@interface S4_A : NSObject {
	
}
- (void)getLocationOfHierarchy;
- (void)getLocationOfHierarchy:(BOOL)isneedHello;
@end

@interface S4_B : S4_A {
@protected
	int sample_S4_B;
}
- (void)getLocationOfHierarchy; //重载
- (void)getLocationOfHierarchy:(BOOL)isneedHello; //重载
@end
static char *S4_Str = "还没初始化";
//类型宣言, 实例变量的封装
@interface S4_C : S4_B {
@public
	S3_Basic *temp;
@private
	int test;
}
- (S4_C *)init;
- (void)printSelfName;
+ (void)initialize;
@end

//---------------------------------------------------------------------
//                           测试函数
//---------------------------------------------------------------------
void S4Tester(void);
