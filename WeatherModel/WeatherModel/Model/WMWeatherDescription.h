//
//  WMWeatherDescription.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "JSONModel.h"

@protocol WMWeatherDescription
@end

@interface WMWeatherDescription : JSONModel
@property (nonatomic, assign) int id;
@property (nonatomic, assign) NSString* main;
@property (nonatomic, assign) NSString* desc;
@property (nonatomic, assign) NSString* icon;
@end
