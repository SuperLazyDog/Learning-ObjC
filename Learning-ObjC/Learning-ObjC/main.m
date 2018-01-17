//
//  main.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/16.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicReview.h"
// TODO: 完成这个仓库的大体结构模板
int main(int argc, const char * argv[]) {
	@autoreleasepool {
	    // insert code here...
	    NSLog(@"Hello, World!");
	}
	
	[[[Volume alloc] initWithMin:1 max:2 step:1] print];
	return 0;
}
