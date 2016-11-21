//
//  AVEventWithMapTableViewCell.h
//  Vastopa
//
//  Created by Adam Vastopa on 2016-11-19.
//  Copyright © 2016 wwfe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface AVEventWithMapTableViewCell : UITableViewCell

//closed cell properties
@property (nonatomic, strong) MKMapView *mapView;
@property (nonatomic, strong) UILabel   *title;
@property (nonatomic, strong) UILabel   *where;
@property (nonatomic, strong) UILabel   *when;
@property (nonatomic, strong) UILabel   *time;

//do custom view with daniel wellington style watch face as time
//open cell properties


@end
