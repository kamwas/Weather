//
//  WAWeatherViewController.m
//  WatherApp
//
//  Created by Kamil Wasag on 22/01/16.
//  Copyright © 2016 Figure8. All rights reserved.
//

#import "WAWeatherViewController.h"
#import <WeatherModel/WeatherModel.h>
#import "WAWeatherCell.h"

@interface WAWeatherViewController()

@property (nonatomic, strong) WMWatherData *data;

@end

@implementation WAWeatherViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [self downloadData];
}


-(void)downloadData{
    [[WMServerConnection sharedInstance] downloadWeatherForDefaultCityWithCompletionHandler:^(WMWatherData *data, NSError *error) {
        if (!error) {
            self.data = data;
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
            });
        }
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.list.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* reuseIdentifier = @"WeatherTableViewCell";
    WAWeatherCell* cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    WMWeatherDetail* detail = self.data.list[indexPath.row];
    
    cell.cityName.text = self.data.city.name;
    cell.maxTemp.text = [NSString stringWithFormat:@"%d",detail.temp.max];
    cell.minTemp.text = [NSString stringWithFormat:@"%d",detail.temp.min];
    cell.pressure.text = [NSString stringWithFormat:@"%.2f",detail.pressure];
    cell.humidity.text = [NSString stringWithFormat:@"%d",detail.humidity];
    cell.windSpeed.text = [NSString stringWithFormat:@"%.2f",detail.speed];
    
    NSMutableString* stringWeatherDescription = [NSMutableString new];
    
    for (WMWeatherDescription* descr in detail.weather) {
        [stringWeatherDescription appendString:descr.desc];
    }
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSDate* date = [NSDate dateWithTimeIntervalSince1970:detail.dt];
    cell.date.text = [dateFormat stringFromDate:date];
    cell.desc.text = stringWeatherDescription;
    
    return cell;
}

@end
