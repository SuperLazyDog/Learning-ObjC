//
//  S9_Basic.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/2/2.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>

//---------------------------------------------------------------------
//                           第九章 ?? TODO: 填上
//---------------------------------------------------------------------
//------------------------------------------------
//                    类定义
//------------------------------------------------
//------------------------------------------------
//                   函数声明
//------------------------------------------------

//------------------------------------------------
//                   函数定义
//------------------------------------------------

//---------------------------------------------------------------------
//                             测试函数
//---------------------------------------------------------------------
void S9Tester(void) {
	puts("-----------------------------------------");
	puts("                  S9");
	puts("-----------------------------------------");
	//--------------------------------------------------
	//            NSString/NSMutableString
	//--------------------------------------------------
	NSString *stringTemp = [NSString stringWithFormat: @"%d + %d = %d", 12, 12, 12 + 12];
	printf("%s\n" ,[stringTemp cStringUsingEncoding: NSASCIIStringEncoding]); //获取c字符串
	
	// 路径相关
	printf("%s\n", [NSHomeDirectory() cStringUsingEncoding:NSASCIIStringEncoding]); //获取根路径
	printf("%s\n", [[@"~/sample/math.m" stringByDeletingPathExtension] fileSystemRepresentation]);
	char * cStrTemp = (char *)calloc(100, sizeof(char));
	[@"~/sample/math.m" getFileSystemRepresentation:cStrTemp maxLength:100];
	printf("description: %s\n", [[stringTemp description] cStringUsingEncoding:NSASCIIStringEncoding]);
	
	//--------------------------------------------------
	//             NSData/NSMutableData
	//--------------------------------------------------
	
	//--------------------------------------------------
	//             NSArray/NSMutableArray
	//--------------------------------------------------
	NSArray *arrayA = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", nil];
	NSArray *arrayB = [NSArray arrayWithObjects:@"4", @"5", @"6", nil];
	NSMutableArray *arrayC = [NSMutableArray arrayWithArray:arrayA];
	NSLog(@"arrayC[1] = %@", arrayC[1]);
	NSLog(@"%@", [arrayC description]);
	[arrayC insertObject:@"9" atIndex:3];
	NSLog(@"arrayC[1] = %@", arrayC[1]);
	NSLog(@"%@", [arrayC description]);
}
