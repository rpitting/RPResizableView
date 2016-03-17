#import <UIKit/UIKit.h>

NS_ENUM(NSInteger, RPResizableViewAnchorPointPosition) {
    RPResizableViewAnchorPointPositionTopLeft,
    RPResizableViewAnchorPointPositionTopRight,
    RPResizableViewAnchorPointPositionBottomLeft,
    RPResizableViewAnchorPointPositionRight
};

@interface RPResizableViewAnchorPoint : UIView

@property (nonatomic, strong) UIPanGestureRecognizer* panRecognizer;

@end

@interface RPResizableView : UIView

@property (nonatomic, strong) UIPanGestureRecognizer* panRecognizer;

/**
 *  Run after initialization of the view.
 *
 *  Setups views and gesture recognizers.
 */
- (void)setup;

@end