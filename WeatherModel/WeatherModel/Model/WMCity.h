//
//  WMCity.h
//  WeatherModel
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "JSONModel.h"
#import "WMCoord.h"

@interface WMCity : JSONModel

@property (nonatomic, assign) int id;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) WMCoord* coord;
@property (nonatomic, strong) NSString* country;
@property (nonatomic, assign) int population;


@end
