//
//  ListItemView.h
//  buyIt
//
//  Created by Alla Pogotskaya on 4/18/14.
//  Copyright (c) 2014 alla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListItemView : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *listImage;
@property (weak, nonatomic) IBOutlet UIButton *listNameButton;
@end
