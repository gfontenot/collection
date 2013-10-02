//
//  HPSDetailViewController.h
//  collection
//
//  Created by Gordon Fontenot on 10/2/13.
//  Copyright (c) 2013 Gordon Fontenot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HPSDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
