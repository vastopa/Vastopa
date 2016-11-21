//
//  AVEventWithMapTableViewCell.m
//  Vastopa
//
//  Created by Adam Vastopa on 2016-11-19.
//  Copyright © 2016 wwfe. All rights reserved.
//

#import "AVEventWithMapTableViewCell.h"

@interface AVEventWithMapTableViewCell ()

//private ui elements
@property (nonatomic, strong) UIView *contentBackground;

//constraint properties
@property (nonatomic, strong) NSDictionary *views;
@property (nonatomic, strong) NSDictionary *metrics;
@property (nonatomic, strong) NSArray *initialConstraints;

@end

@implementation AVEventWithMapTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor blackColor];
        
        [self.contentView addSubview:self.contentBackground];
        [self.contentView addSubview:self.mapView];
        [self.contentView addSubview:self.title];
        [self.contentView addSubview:self.where];
        [self.contentView addSubview:self.when];
        [self.contentView addSubview:self.time];
        
        [self.contentView addConstraints:self.initialConstraints];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - UI Elements Accessors

- (UIView *)contentBackground {
    if (!_contentBackground) {
        _contentBackground = [[UIView alloc] initWithFrame:CGRectZero];
        _contentBackground.backgroundColor = [UIColor whiteColor];
        [_contentBackground setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _contentBackground;
}

- (MKMapView *)mapView {
    if (!_mapView) {
        _mapView = [[MKMapView alloc] init];
        [_mapView setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _mapView;
}

- (UILabel *)title {
    if (!_title) {
        _title = [UILabel new];
        [_title setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _title;
}

- (UILabel *)where {
    if (!_where) {
        _where = [UILabel new];
        [_where setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _where;
}

- (UILabel *)when {
    if (!_when) {
        _when = [UILabel new];
        [_when setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _when;
}

- (UILabel *)time {
    if (!_time) {
        _time = [UILabel new];
        [_time setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return _time;
}

#pragma mark - Constraints Accessors

- (NSDictionary *)views {
    if (!_views) {
        _views = NSDictionaryOfVariableBindings(_contentBackground, _mapView, _title, _where, _when, _time);
    }
    return _views;
}

- (NSDictionary *)metrics {
    if (!_metrics) {
        _metrics = @{};
    }
    return _metrics;
}

- (NSArray *)initialConstraints {
    if (!_initialConstraints) {
        _initialConstraints = [NSArray array];
        
        NSLayoutConstraint *contentBackgroundCL = [NSLayoutConstraint constraintWithItem:self.contentBackground attribute:NSLayoutAttributeLeadingMargin relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeadingMargin multiplier:1.0 constant:0.0];
        NSLayoutConstraint *contentBackgroundCT = [NSLayoutConstraint constraintWithItem:self.contentBackground attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:0.0];
        NSLayoutConstraint *contentBackgroundCB = [NSLayoutConstraint constraintWithItem:self.contentBackground attribute:NSLayoutAttributeBottomMargin relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:0.0];
        NSLayoutConstraint *contentBackgroundCR = [NSLayoutConstraint constraintWithItem:self.contentBackground attribute:NSLayoutAttributeTrailingMargin relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailingMargin multiplier:1.0 constant:0.0];
        
        NSLayoutConstraint *mapViewCL = [NSLayoutConstraint constraintWithItem:self.mapView attribute:NSLayoutAttributeLeadingMargin relatedBy:NSLayoutRelationEqual toItem:self.contentBackground attribute:NSLayoutAttributeLeadingMargin multiplier:1.0 constant:0.0];
        NSLayoutConstraint *mapViewCT = [NSLayoutConstraint constraintWithItem:self.mapView attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self.contentBackground attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:0.0];
        NSLayoutConstraint *mapViewCB = [NSLayoutConstraint constraintWithItem:self.mapView attribute:NSLayoutAttributeBottomMargin relatedBy:NSLayoutRelationEqual toItem:self.contentBackground attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:0.0];
        NSLayoutConstraint *mapViewCW = [NSLayoutConstraint constraintWithItem:self.mapView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.contentBackground attribute:NSLayoutAttributeWidth multiplier:0.25 constant:0.0];
        
        _initialConstraints = @[ contentBackgroundCL, contentBackgroundCT, contentBackgroundCB, contentBackgroundCR,
                                 mapViewCL, mapViewCT, mapViewCB, mapViewCW ];
    }
    return _initialConstraints;
}

@end
