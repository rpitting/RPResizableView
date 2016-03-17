#import "RPResizableView.h"

@interface RPResizableView ()

@end

@implementation RPResizableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    UIPanGestureRecognizer* panGestureRecognizer = [[UIPanGestureRecognizer alloc] init];
    [panGestureRecognizer addTarget:self action:@selector(pan:)];
    [self addGestureRecognizer:panGestureRecognizer];
    
    self.panRecognizer = panGestureRecognizer;
}

- (void)pan:(UIPanGestureRecognizer*)panGestureRecognizer {
    CGPoint translation = [panGestureRecognizer translationInView:self.superview];
    
    self.center = CGPointMake(self.center.x + translation.x, self.center.y + translation.y);
}

@end