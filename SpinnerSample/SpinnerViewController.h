//
//  SpinnerViewController.h
//  SpinnerSample
//
//  Created by Allen Hsu on 10/15/13.
//  Copyright (c) 2013 Allen Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpinnerView.h"

@interface SpinnerViewController : UITableViewController

@property (strong, nonatomic) SpinnerView *spinnerView;
@property (strong, nonatomic) UIImageView *spinnerBackground;

@end
