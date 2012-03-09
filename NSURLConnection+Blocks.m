#import "NSURLConnection+Blocks.h"

@implementation NSURLConnection (Blocks)

#pragma mark API
+ (void)asyncRequest:(NSURLRequest *)request 
						 success:(void(^)(NSData *, NSURLResponse *))successBlock_ 
						 failure:(void(^)(NSData *, NSError *))failureBlock_ {
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		NSURLResponse *response = nil;
		NSError *error = nil;
		NSData *data = [NSURLConnection sendSynchronousRequest:request 
																				 returningResponse:&response 
																										 error:&error];
		
		if (error) {
			failureBlock_(data,error);
		} else {
			successBlock_(data,response);
		}
	});
}

@end
