@interface SBElasticVolumeViewController : UIViewController
-(void)transitionToState:(NSInteger)state animated:(BOOL)animated completion:(id)completion;
@end

%hook SBElasticVolumeViewController
-(void)viewDidAppear:(BOOL)animated{
	%orig();
	[self transitionToState:2 animated:animated completion:nil];
}
%end