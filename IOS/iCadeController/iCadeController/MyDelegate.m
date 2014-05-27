//
//  MyDelegate.m
//  iCadeController
//
//  Created by Gustavo Parrado on 24/7/13.
//
//

#import "MyDelegate.h"

@implementation MyDelegate
@synthesize context;


- (void)buttonDown:(iCadeState)button {
    uint8_t *keyvalue = nil;
    switch (button) {
        case iCadeButtonA:
            keyvalue = (uint8_t*)"a";
            break;
        case iCadeButtonB:
            keyvalue = (uint8_t*)"b";
            break;
        case iCadeButtonC:
            keyvalue = (uint8_t*)"c";
            break;
        case iCadeButtonD:
            keyvalue = (uint8_t*)"d";
            break;
        case iCadeButtonE:
            keyvalue = (uint8_t*)"e";
            break;
        case iCadeButtonF:
            keyvalue = (uint8_t*)"f";
            break;
        case iCadeButtonG:
            keyvalue = (uint8_t*)"g";
            break;
        case iCadeButtonH:
            keyvalue = (uint8_t*)"h";
            break;
            
        case iCadeJoystickUp:
            keyvalue = (uint8_t*)"up";
            break;
        case iCadeJoystickRight:
            keyvalue = (uint8_t*)"right";
            break;
        case iCadeJoystickDown:
            keyvalue = (uint8_t*)"down";
            break;
        case iCadeJoystickLeft:
            keyvalue = (uint8_t*)"left";
            break;
        default:
            break;
    }
    
    FREDispatchStatusEventAsync( context, (uint8_t*)"keyDown",keyvalue);
}

- (void)buttonUp:(iCadeState)button {
    uint8_t *keyvalue = nil;
    switch (button) {
        case iCadeButtonA:
            keyvalue = (uint8_t*)"a_";
            break;
        case iCadeButtonB:
            keyvalue = (uint8_t*)"b_";
            break;
        case iCadeButtonC:
            keyvalue = (uint8_t*)"c_";
            break;
        case iCadeButtonD:
            keyvalue = (uint8_t*)"d_";
            break;
        case iCadeButtonE:
            keyvalue = (uint8_t*)"e_";
            break;
        case iCadeButtonF:
            keyvalue = (uint8_t*)"f_";
            break;
        case iCadeButtonG:
            keyvalue = (uint8_t*)"g_";
            break;
        case iCadeButtonH:
            keyvalue = (uint8_t*)"h_";
            break;
            
        case iCadeJoystickUp:
            keyvalue = (uint8_t*)"center";
            break;
        case iCadeJoystickRight:
            keyvalue = (uint8_t*)"center";
            break;
        case iCadeJoystickDown:
            keyvalue = (uint8_t*)"center";
            break;
        case iCadeJoystickLeft:
            keyvalue = (uint8_t*)"center";
            break;
        default:
            break;
    }
    
    FREDispatchStatusEventAsync( context, (uint8_t*)"keyDown",keyvalue);
}

@end
