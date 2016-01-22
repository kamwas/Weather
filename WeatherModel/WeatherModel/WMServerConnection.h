//
//  WMServerConnection.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WMWatherData.h"

@interface WMServerConnection : NSObject

+ (WMServerConnection*)sharedInstance;
- (void)downloadWeatherForDefaultCityWithCompletionHandler:(void(^)(WMWatherData* data, NSError* error))cHandler;

@end
