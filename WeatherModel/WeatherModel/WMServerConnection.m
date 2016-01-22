//
//  WMServerConnection.m
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "WMServerConnection.h"
#import "WMConstans.h"


@interface WMServerConnection()

@property (nonatomic, strong) NSURLSession* session;

@end

@implementation WMServerConnection

+ (WMServerConnection*)sharedInstance{
    static WMServerConnection* singleton;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        singleton = [WMServerConnection new];
    });
    return singleton;
}


- (void)downloadWeatherForDefaultCityWithCompletionHandler:(void(^)(WMWatherData* data, NSError* error))cHandler{
    [self downloadWeathercastForCidy:KWMDefaultCity forDays:kWMDefaultNumberOfDays withCompletionHandler:^(WMWatherData *data, NSError *error) {
        cHandler(data,error);
    }];
}

- (void)downloadWeathercastForCidy:(NSString*)city forDays:(int)days withCompletionHandler:(void(^)(WMWatherData* data, NSError* error))cHandler {
    NSURLRequest* request = [self buildRequestForParameters:@{@"q":city,
                                                              @"cnt":[NSString stringWithFormat:@"%d",days],
                                                              @"units":@"metric"}];
    [self downloadDataForRequest:request withCompletionHandler:^(NSData * _Nullable data, NSError * _Nullable error) {
        if (cHandler) {
            if (!error) {
                NSError *error2;
                WMWatherData *weather = [[WMWatherData alloc] initWithData:data error:&error];
                if (!error2) {
                    cHandler(weather,nil);
                }else{
                    cHandler(nil,error2);
                }
            }else{
                cHandler(nil,error);
            }
        }
    }];
}

- (NSURLSession *)session{
    if (!_session) {
        _session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    }
    return _session;
}

- (NSURLSessionDataTask *)downloadDataForRequest:(NSURLRequest *)request withCompletionHandler:(void(^ _Nullable)(NSData* _Nullable data, NSError* _Nullable error))cHandler{
    NSURLSessionDataTask *task = [self.session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (cHandler) {
            cHandler(data,error);
        }
    }];
    [task resume];
    return task;
}

- (NSURLRequest *)buildRequestForParameters:(NSDictionary<NSString*,NSString*>*)parameters{
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"%@?",kWMBaseURL];
    
    for (NSString *key in parameters){
        [urlString appendFormat:@"%@=%@&",key, parameters[key]];
    }
    
    [urlString appendFormat:@"APPID=%@",kWMWeatherAPIKey];
    
    return [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
}

@end
