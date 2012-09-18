//
//  Btn.h
//  CustomBtn
//
//  Created by 曹 聪 on 12-7-16.
//  Copyright (c) 2012年 曹 聪. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    kOriginal,
    kTouchDown,
}Status;

@interface Btn : UIButton {
    Status status;
}

@end
