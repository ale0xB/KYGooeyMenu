//
//  KYContainerView.m
//  Pods
//
//  Created by Alejandro Benito on 09/07/2015.
//
//

#import "KYContainerView.h"

@implementation KYContainerView

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    for (UIView *subview in self.subviews) {
        if ([subview pointInside:[subview convertPoint:point fromView:self] withEvent:event]) {
            return YES;
        }
    }
    return NO;
    
}

@end
