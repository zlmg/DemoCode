
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
- (void)viewDidLoad {
    %log;
}
- (void)viewWillAppear:(BOOL)animated {
    %log;
}
- (void)viewDidAppear:(BOOL)animated {
    %log;
}
%end


// %hook QNBPlayerImageAdsViewController
// - (void)viewDidAppear:(BOOL)animated {
//     [self.view removeFromSuperview];
// }
// %end

// %hook QNBPlayerLoadingTipsBarCtl
// - (void)viewDidAppear:(BOOL)animated {
//     [self.view removeFromSuperview];
// }
// %end

// %hook QNBPlayerVideoAdsView
// - (instancetype)initWithFrame:(CGRect)frame
// {
//     %log;
//     return nil;
// }
// %end


// %hook QLPlayerViewController

// - (void)player:(id)player startShowLinkageAds:(int)show {

// }

// %end


/*
QLAdJointPlayerBaseViewController
- (id)initWithJointPlayerItem:(id)arg1;
- (id)initWithVid:(id)arg1 title:(id)arg2;
*/


/*
QLVideoDetailViewController
QLSmallPlayerHeaderView

QLPlayerViewController
[&"isAdPlaying",
&"player:startShowLinkageAds:",
&"player:finishedShowLinkageAds:"]



*/


/* QNBPlayerVideoAdsViewController MJIvars(#0x150872d70,/Ad/)
{isa:QNBPlayerVideoAdsViewController,
_view:#"<QNBPlayerVideoAdsView: 0x15086bd70; 
frame = (0 0; 375 211); 
autoresize = W+H; 
layer = <CALayer: 0x150869c80>

*/



