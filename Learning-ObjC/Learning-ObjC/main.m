//
//  main.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/16.
//  Copyright © 2018年 徐伟达. All rights reserved.
//
//---------------------------------------------------------------------
//                             头文件
//---------------------------------------------------------------------
#import <Foundation/Foundation.h>
#import "BasicReview.h"

//---------------------------------------------------------------------
//                             函数声明
//---------------------------------------------------------------------
void basicReviewRunner(void);
//---------------------------------------------------------------------
//                             接口函数
//---------------------------------------------------------------------
int main(int argc, const char * argv[]) {
//	@autoreleasepool {
//	    // insert code here...
//	    NSLog(@"Hello, World!");
//	}
//	
//	[[[Volume alloc] initWithMin:1 max:2 step:1] print];
	//---------------------------------------------------------------------------
	//                              基础学习的测试
	//---------------------------------------------------------------------------
	basicReviewRunner();
	return 0;
}

//---------------------------------------------------------------------
//                           声明函数的实现
//---------------------------------------------------------------------
void basicReviewRunner(void) {
	basicReviewSelector(v2);
}
