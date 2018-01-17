//
//  S2_header.h
//  Learning-ObjC
//
//  Created by 徐伟达 on 2018/1/17.
//  Copyright © 2018年 徐伟达. All rights reserved.
//

#ifndef S2_Header_h
#define S2_Header_h

@interface Volume : NSObject {
	int val;
	int min, max, step;
}
- (id)initWithMin:(int)a max:(int)b step:(int)s;
- (int)value;
- (id)up;
- (id)down;
- (void)print;
@end

#endif /* S2_header_h */
