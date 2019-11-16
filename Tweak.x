@interface SBElasticVolumeViewController : UIViewController
-(void)transitionToState:(NSInteger)state animated:(BOOL)animated completion:(id)completion;
@end

%hook SBElasticVolumeViewController
-(void)viewDidAppear:(BOOL)animated{
	%orig();
	[self transitionToState:2 animated:TRUE completion:nil];
}
-(void)transitionToState:(NSInteger)state animated:(BOOL)animated completion:(id)completion{
	//All my homies hate state 3
	if(state == 3)
		state = 1;
	%orig(state, animated, completion);
}
%end