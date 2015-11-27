//
//  QueryWebService.m
//  Bederr
//
//  Created by Raul Quispe on 9/24/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "QueryWebService.h"
#import "ApiConstants.h"

@implementation QueryWebService{
    NSURLSessionConfiguration *defaultConfigObject;
    NSURLSession *defaultSession;
}
+(QueryWebService *)sharedInstance{
    static dispatch_once_t pred;
    static QueryWebService *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[QueryWebService alloc] init];
    });
    return shared;
}
-(id)init{
    defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
    defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: nil delegateQueue: [NSOperationQueue mainQueue]];
    
    return self;
}
#pragma mark - Private Methods
-(NSMutableString*)dictionaryToStringValue:(NSDictionary*)dictionary{
    
    NSArray*key = [dictionary allKeys];
    NSArray*values = [dictionary allValues];
    NSMutableString * bodyString = [[NSMutableString alloc] init];
    for (int i=0; i<key.count; i++) {
        if (i<[key count]-1) {
             [bodyString appendString:[NSString stringWithFormat:@"%@=%@&",[key objectAtIndex:i],[values objectAtIndex:i]]];
        }else{
             [bodyString appendString:[NSString stringWithFormat:@"%@=%@",[key objectAtIndex:i],[values objectAtIndex:i]]];
        }
    }
    return bodyString;
}
#pragma mark - Public Methods

-(NSURLSessionDataTask*)getDataFromPath:(NSString *)path withMethod:(NSString*)method withParamData:(NSDictionary *)dictParam withNotification:(NSString*)nameNotification{

    NSString*methodName=path;
    NSString *stringUrl = [NSString stringWithFormat:@"%@%@",API_URL_BASE,methodName];
    NSString *properlyEscapedURL = [stringUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL * url = [NSURL URLWithString:properlyEscapedURL];
    
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPMethod:method];
    if (dictParam!=nil) {
//        NSError *error;
//        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictParam
//                                                           options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
//                                                             error:&error];
//        if (! jsonData) {
//            NSLog(@"Got an error: %@", error);
//        } else {
//            NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//            NSLog(@"jsonString: %@", jsonString);
//            NSData* data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
//           // [request setHTTPBody:data];
//            [request setHTTPBody:[@"{\n  \"document\": \"87654321\"\n}" dataUsingEncoding:NSUTF8StringEncoding]];
//            
//                   }
        NSMutableString *post = [self dictionaryToStringValue:dictParam];
        NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        [request setHTTPBody:postData];


    }
    NSURLSessionDataTask * dataTask = [defaultSession dataTaskWithRequest:request
                                                        completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
                                                            if(error == nil){
                                                                NSError *jsonError = nil;
                                                                id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];
                                                                
                                                                if ([jsonObject isKindOfClass:[NSArray class]]) {
                                                                    
                                                                    
                                                                    
                                                                } else {
                                                                    
                                                                    NSDictionary *jsonDictionary = (NSDictionary *)jsonObject;
                                                                    
                                                                    
                                                                    if (jsonDictionary==nil) {
                                                                        
                                                                        [[NSNotificationCenter defaultCenter] postNotificationName:nameNotification object:data];
                                                                    }else{

                                                                        [[NSNotificationCenter defaultCenter] postNotificationName:nameNotification object:jsonDictionary];
                                                                    }
                                                                }
                                                                
                                                            }
                                                            
                                                        }];
    
    [dataTask resume];
    return dataTask;
}
@end

