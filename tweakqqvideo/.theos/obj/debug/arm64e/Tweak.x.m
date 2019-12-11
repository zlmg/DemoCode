#line 1 "Tweak.x"

@interface QNBPlayerVideoAdsViewController
@property (nonatomic, strong) UIView *view;
@end

@interface QNBPlayerImageAdsViewController
@property (nonatomic, strong) UIView *view;
@end

@interface QNBPlayerLoadingTipsBarCtl
@property (nonatomic, strong) UIView *view;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class QNBPlayerVideoAdsViewController; @class QNBPlayerLoadingTipsBarCtl; @class QNBPlayerImageAdsViewController; 
static void (*_logos_orig$_ungrouped$QNBPlayerVideoAdsViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL QNBPlayerVideoAdsViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$QNBPlayerVideoAdsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL QNBPlayerVideoAdsViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$QNBPlayerImageAdsViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL QNBPlayerImageAdsViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$QNBPlayerImageAdsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL QNBPlayerImageAdsViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$QNBPlayerLoadingTipsBarCtl$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL QNBPlayerLoadingTipsBarCtl* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$QNBPlayerLoadingTipsBarCtl$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL QNBPlayerLoadingTipsBarCtl* _LOGOS_SELF_CONST, SEL, BOOL); 

#line 14 "Tweak.x"

static void _logos_method$_ungrouped$QNBPlayerVideoAdsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL QNBPlayerVideoAdsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {
    [self.view removeFromSuperview];
}




static void _logos_method$_ungrouped$QNBPlayerImageAdsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL QNBPlayerImageAdsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {
    [self.view removeFromSuperview];
}



static void _logos_method$_ungrouped$QNBPlayerLoadingTipsBarCtl$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL QNBPlayerLoadingTipsBarCtl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {
    [self.view removeFromSuperview];
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$QNBPlayerVideoAdsViewController = objc_getClass("QNBPlayerVideoAdsViewController"); MSHookMessageEx(_logos_class$_ungrouped$QNBPlayerVideoAdsViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$QNBPlayerVideoAdsViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$QNBPlayerVideoAdsViewController$viewDidAppear$);Class _logos_class$_ungrouped$QNBPlayerImageAdsViewController = objc_getClass("QNBPlayerImageAdsViewController"); MSHookMessageEx(_logos_class$_ungrouped$QNBPlayerImageAdsViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$QNBPlayerImageAdsViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$QNBPlayerImageAdsViewController$viewDidAppear$);Class _logos_class$_ungrouped$QNBPlayerLoadingTipsBarCtl = objc_getClass("QNBPlayerLoadingTipsBarCtl"); MSHookMessageEx(_logos_class$_ungrouped$QNBPlayerLoadingTipsBarCtl, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$QNBPlayerLoadingTipsBarCtl$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$QNBPlayerLoadingTipsBarCtl$viewDidAppear$);} }
#line 35 "Tweak.x"
