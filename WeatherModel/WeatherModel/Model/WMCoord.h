//
//  WMCoord.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "JSONModel.h"

@interface WMCoord : JSONModel
@property (nonatomic, assign) float lon;
@property (nonatomic, assign) float lat;
@end
