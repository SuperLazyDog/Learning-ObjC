//
//  S2_Basic.m
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/17.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S2_header.h"

@implementation Volume : NSObject 
- (id)initWithMin: (int)a max:(int)b step:(int)s {
	self = [super init];
	if (self != nil) {
		val = min = a;
		max = b;
		step = s;
	}
	return self;
}

- (int)value {
	return val;
}

- (id)up {
	if ((val += step) > max) {
		val = max;
	}
	return self;
}

- (id)down {
	if ((val -= step < min)) {
		val = min;
	}
	return self;
}

- (void)print {
	puts("hello\n");
}
@end

