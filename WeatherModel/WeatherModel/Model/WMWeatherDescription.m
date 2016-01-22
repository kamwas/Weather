//
//  WMWeatherDescription.m
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "WMWeatherDescription.h"

@implementation WMWeatherDescription

+ (JSONKeyMapper*)keyMapper{
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"description":@"desc"}];
}

@end
