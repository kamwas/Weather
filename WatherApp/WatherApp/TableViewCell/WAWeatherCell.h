//
//  WAWeatchrCell.h
//  WatherApp
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WAWeatherCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel* cityName;
@property (nonatomic, weak) IBOutlet UILabel* maxTemp;
@property (nonatomic, weak) IBOutlet UILabel* minTemp;
@property (nonatomic, weak) IBOutlet UILabel* pressure;
@property (nonatomic, weak) IBOutlet UILabel* humidity;
@property (nonatomic, weak) IBOutlet UILabel* windSpeed;
@property (nonatomic, weak) IBOutlet UILabel* desc;
@property (weak, nonatomic) IBOutlet UILabel *date;

@end