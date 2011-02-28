//
//  NSURLConnection+Blocks.h
//
//  Created by Kevin Lohman on 9/12/10.
//  Copyright 2010 Logic High Software. All rights reserved.
//  Free to use in your code commercial or otherwise, as long as you leave this comment block in
// http://blog.logichigh.com/2010/09/12/cocoa-blocks/

#import <Foundation/Foundation.h>

@interface NSURLConnection (Blocks)

#pragma mark Class API Extensions
+ (void)asyncRequest:(NSURLRequest *)request 
						 success:(void(^)(NSData *, NSURLResponse *))successBlock_ 
						 failure:(void(^)(NSData *, NSError *))failureBlock_;

@end
