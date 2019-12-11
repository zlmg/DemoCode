
@interface QNBPlayerVideoAdsViewController
@property (nonatomic, strong) UIView *view;
@end

@interface QNBPlayerImageAdsViewController
@property (nonatomic, strong) UIView *view;
@end

@interface QNBPlayerLoadingTipsBarCtl
@property (nonatomic, strong) UIView *view;
@end

%hook QNBPlayerVideoAdsViewController
- (void)viewDidAppear:(BOOL)animated {
    [self.view removeFromSuperview];
}
%end


%hook QNBPlayerImageAdsViewController
- (void)viewDidAppear:(BOOL)animated {
    [self.view removeFromSuperview];
}
%end

%hook QNBPlayerLoadingTipsBarCtl
- (void)viewDidAppear:(BOOL)animated {
    [self.view removeFromSuperview];
}
%end



