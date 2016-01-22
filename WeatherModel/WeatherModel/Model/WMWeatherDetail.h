//
//  WMWeatherDetail.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "JSONModel.h"
#import "WMTempDetails.h"
#import "WMWeatherDescription.h"

@protocol WMWeatherDetail
@end

@interface WMWeatherDetail : JSONModel

@property (assign, nonatomic) double dt;
@property (nonatomic, strong) WMTempDetails *temp;
@property (nonatomic, assign) float pressure;
@property (nonatomic, assign) int humidity;
@property (nonatomic, strong) NSArray<WMWeatherDescription>* weather;
@property (assign, nonatomic) float speed;
@property (assign, nonatomic) float deg;
@property (assign, nonatomic) float clouds;



@end
