//
//  WMWatherData.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "JSONModel.h"
#import "WMCity.h"
#import "WMWeatherDetail.h"

@interface WMWatherData : JSONModel

@property (nonatomic, strong) WMCity *city;
@property (nonatomic, assign) int cod;
@property (nonatomic, assign) int message;
@property (nonatomic, assign) int cnt;
@property (nonatomic, strong) NSArray<WMWeatherDetail>* list;

@end
