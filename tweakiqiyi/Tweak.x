%hook QYAVPlayerController

- (void)pauseAndRequestAds {
	%log;
}

- (void)sendAdPingbackWithAdType:(long long)arg1 actionType:(int)arg2 adsId:(int)arg3 url:(id)arg4 properties:(id)arg5 {
	%log;
}
- (void)sendAdsCreativePingbackWithAdId:(unsigned int)arg1 event:(int)arg2 index:(int)arg3 url:(id)arg4{
	%log;
}
- (void)sendAdsCreativeLoadingPingbackWithAdId:(long long)arg1 url:(id)arg2{
	%log;
}
- (void)setAdSDKStateIsVertical:(_Bool)arg1{
	%log;
}
- (void)setAdSDKState{
	%log;
}
- (void)showRenderAdsViewWithData:(id)arg1{
	%log;
}
- (void)updateViewPointAdsItem:(id)arg1{
	%log;
}
- (void)updateRenderAdsItem:(id)arg1{
	%log;
}
- (void)updateAdsItem:(id)arg1 type:(int)arg2{
	%log;
}
- (void)updateCommonOverlayAdsItem:(id)arg1{
	%log;
}
- (void)updatePauseAdsItem:(id)arg1{
	%log;
}
- (void)sendSkipAdsPingback{
	%log;
}

%end

%hook QYAVPlayAdsManager
- (void)sendAdsCreativeLoadingPingbackWithAdId:(unsigned int)arg1 url:(id)arg2 {
	%log;
}
// - (void)sendAdsCreativeLoadingPingbackWithAdId:(long long)arg1 url:(NSString *)arg2 {
// 	%log;
// }
- (void)updateAdModel:(id)arg1 modelType:(int)arg2 templateType:(int)arg3 {
	%log;
}
- (void)showRenderAdsViewWithData:(NSDictionary *)arg1 {
	%log;
}
- (void)startRequestCornerAds:(QYAVPlayAdsManager *)arg1 startTime:(int)arg2 {
	%log;
}
%end

%hook IOSMctoPlayer
- (id)InvokeMctoPlayerCommand:(int)arg1 withParam:(id)arg2 {
	%log;
	return nil;
}
- (id)InvokeAdCommand:(int)arg1 withParam:(id)arg2 {
	%log;
	return nil;
}
%end

// %hook QYIphonePreAdControlView
// - (id)initWithFrame:(struct CGRect)arg1 andPlayerViewController:(id)arg2 {
// 	return nil;
// }
// %end

@interface QYPlayerViewController
- (void)closeAdsForChangeClarity;
- (void)closeAdsForVipRopenPlayer;
- (void)closeAdsForNextPlay;
- (void)removeAdsSubViewForAdsEnd;
- (void)showOrHideAdsCardView:(_Bool)arg1;
- (_Bool)avCloseMRAidAdView:(id)arg1;
- (void)sendAdsCreativePingbackWithAdId:(unsigned int)arg1 event:(int)arg2 index:(int)arg3 url:(id)arg4;
- (void)mrAdViewClosed;
@end

%hook QYPlayerViewController
- (void)viewDidAppear:(BOOL)animated {
	%orig;
	[self closeAdsForChangeClarity];
	[self closeAdsForVipRopenPlayer];
	[self closeAdsForNextPlay];
	[self removeAdsSubViewForAdsEnd];
	[self showOrHideAdsCardView:NO];
	[self mrAdViewClosed];

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"12321" message:@"message" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
}

- (void)updateAdsViewShowStatus:(_Bool)arg1 adsType:(int)arg2 {
	%log;
}
- (void)closeAdsForChangeClarity{
	%log;
}
- (void)closeAdsForVipRopenPlayer{
	%log;
}
- (void)closeAdsForNextPlay{
	%log;
}
- (void)showPreAdSubView{
	%log;
}
- (void)updateAdsViewWithAdTime:(double)arg1 isCanClick:(_Bool)arg2{
	%log;
}
- (void)removeAdsSubViewForAdsEnd{
	%log;
}
- (void)sendAdPingbackWithAdType:(long long)arg1 actionType:(int)arg2 adsId:(int)arg3 url:(id)arg4 properties:(id)arg5{
	%log;
}
- (void)pauseAndRequestAds{
	%log;
}
- (double)timeByRemovePreAds:(double)arg1{
	%log;
	return 0;
}
- (void)contentPlaying:(id)arg1 isPreAdsFinish:(_Bool)arg2{
	%log;
}
- (void)clearAdsBanner{
	%log;
}
- (void)showOrHideAdsCardView:(_Bool)arg1{
	%log;
}
- (unsigned long long)wholeProcessAdLocation{
	%log;
	return 0;
}
- (void)updateAdModel:(id)arg1 modelType:(int)arg2 templateType:(int)arg3{
	%log;
}
- (void)showRenderAdsViewWithData:(id)arg1{
	%log;
}
- (void)hadShowPlayLimitSupervine{
	%log;
}
- (void)AdplayEnd:(long long)arg1{
	%log;
}
- (void)AdPlayNext:(long long)arg1 model:(id)arg2{
	%log;
}
- (void)AdPlayBegin:(long long)arg1 model:(id)arg2{
	%log;
}
- (_Bool)avCloseMRAidAdView:(id)arg1{
	%log;
	return YES;
}
- (void)sendAdsCreativePingbackWithAdId:(unsigned int)arg1 event:(int)arg2 index:(int)arg3 url:(id)arg4{
	%log;
}
- (void)mrAdViewClosed {
	%log;
}
%end