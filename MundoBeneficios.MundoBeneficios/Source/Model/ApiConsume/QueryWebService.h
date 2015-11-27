//
//  QueryWebService.h
//  Bederr
//
//  Created by Raul Quispe on 9/24/15.
//  Copyright © 2015 Dipoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QueryWebService : NSObject
+(QueryWebService *)sharedInstance;
-(NSURLSessionDataTask*)getDataFromPath:(NSString *)path withMethod:(NSString*)method withParamData:(NSDictionary *)dictParam withNotification:(NSString*)nameNotification;
@end
