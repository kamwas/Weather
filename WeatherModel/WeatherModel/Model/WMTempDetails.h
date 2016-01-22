//
//  WMTempDetails.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "JSONModel.h"

@interface WMTempDetails : JSONModel

@property (nonatomic, assign) int day;
@property (nonatomic, assign) int min;
@property (nonatomic, assign) int max;
@property (nonatomic, assign) int night;
@property (nonatomic, assign) int eve;
@property (nonatomic, assign) int morn;

@end
