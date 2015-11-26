//
//  Created by Alberto Pasca on 27/02/14.
//  Copyright (c) 2014 albertopasca.it. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface APRoundedButton : UIButton

@property (nonatomic) IBInspectable BOOL    topLeft;
@property (nonatomic) IBInspectable BOOL    topRigth;
@property (nonatomic) IBInspectable BOOL    bottomLeft;
@property (nonatomic) IBInspectable BOOL    bottomRigth;
@property (nonatomic) IBInspectable int     cornerRadius;
@property (nonatomic) IBInspectable UIColor *fillColor;

@end
