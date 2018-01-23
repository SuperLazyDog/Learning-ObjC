//
//  BasicReview.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/17.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicReview.h"


//---------------------------------------------------------------------
//                            基础学习
//---------------------------------------------------------------------
//------------------------------------------------
//                    型声明
//------------------------------------------------


//------------------------------------------------
//                    测试函数
//------------------------------------------------
void basicReviewSelector(enum BasicReview section) {
	switch (section) {
		case S1:
			break;
		case S2:
			S2Tester();
			break;
		case S3:
			S3Tester();
			break;
		case S4:
			S4Tester();
			break;
		case S7:
			S7Tester();
		default:
			break;
	}
}
