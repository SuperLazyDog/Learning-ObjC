//
//  S3_Header.h
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/20.
//  Copyright © 2018年 徐伟达. All rights reserved.
//
/*---------------------------------------------------------------------
						   第三章 任务表
 -----------------------------------------------------------------------
 
 ---------------------------------------------------------------------*/

//---------------------------------------------------------------------
//                           类型定义
//---------------------------------------------------------------------
// 继承
@interface S3_Basic : NSObject {
	
}
- (void)printHello;
@end

@interface S3_Basic_sub : S3_Basic {
	
}
- (void)printHello; // 重载
@end

@interface S3_Basic_sub_sub : S3_Basic_sub {
	
}
- (void)printHello; // 重载
@end
// 构造函数
@interface S3_Basic_Init : NSObject {
	char *str;
	int length;
}
- (id)initWithLength: (int)length;
- (int)getStrLength;
@end
//---------------------------------------------------------------------
//                           测试函数
//---------------------------------------------------------------------
void S3Tester(void);
