//
//  MyDelegate.h
//  iCadeController
//
//  Created by Gustavo Parrado on 24/7/13.
//
//

#import <Foundation/Foundation.h>
#import "iCadeReaderView.h"
#import "FlashRuntimeExtensions.h"

@interface MyDelegate : NSObject<iCadeEventDelegate>
@property FREContext *context;
@end
