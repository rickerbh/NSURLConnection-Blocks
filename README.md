README
======

A category on NSURLConnection that uses blocks to handle success or failure scenarios in async URL connections. The implementation was taken from http://blog.logichigh.com/2010/09/12/cocoa-blocks/

HOW TO USE IT
-------------

	NSURL *url = [NSURL URLWithString:@"http://awesomeservice.com"];
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
	[NSURLConnection asyncRequest:request
						  success:^(NSData *data, NSURLResponse *response) {
							NSLog(@"Success:");
						  }
						  failure:^(NSData *data, NSError *error) {
							NSLog(@"Error: %@", error);
						  }];
