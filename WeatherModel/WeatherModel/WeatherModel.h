//
//  WeatherModel.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for WeatherModel.
FOUNDATION_EXPORT double WeatherModelVersionNumber;

//! Project version string for WeatherModel.
FOUNDATION_EXPORT const unsigned char WeatherModelVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <WeatherModel/PublicHeader.h>

#import <WeatherModel/WMServerConnection.h>
#import <WeatherModel/WMConstans.h>
#import <WeatherModel/WMWatherData.h>
#import <WeatherModel/JSONModel.h>
#import <WeatherModel/JSONModelError.h>
#import <WeatherModel/JSONValueTransformer.h>
#import <WeatherModel/JSONModelArray.h>
#import <WeatherModel/JSONKeyMapper.h>
#import <WeatherModel/WMCity.h>
#import <WeatherModel/WMCoord.h>
#import <WeatherModel/WMWeatherDetail.h>
#import <WeatherModel/WMTempDetails.h>
#import <WeatherModel/WMWeatherDescription.h>