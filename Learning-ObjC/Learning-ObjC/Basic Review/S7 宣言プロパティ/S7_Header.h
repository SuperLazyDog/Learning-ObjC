//
//  S7_Header.h
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/24.
//  Copyright © 2018年 徐伟达. All rights reserved.
//
/*---------------------------------------------------------------------
						   第七章 任务表
 -----------------------------------------------------------------------
 
 ---------------------------------------------------------------------*/

//---------------------------------------------------------------------
//                           类型定义
//---------------------------------------------------------------------
@interface S7_A : NSObject { // 测试声明属性
}
@property(readonly) char *name;
@property int age;
- (id)initWithName:(char *)name;
@property int dynmicTest;
@property(setter=SetNameTestBySelf:, getter=getNameTestBySelf) int nameTest;
- (void)showInfo;
- (void)showInfo: isUpcase;
@end

//---------------------------------------------------------------------
//                           测试函数
//---------------------------------------------------------------------
void S7Tester(void);
