Hooks:PostHook( PlayerTweakData, "init", "M45A1CQBPModStanceTweakData", function(self)

    self.stances.m45a1_ads = deep_clone(self.stances.p226)
	self.stances.m45a1_ads.steelsight.shoulders.translation = Vector3(-8.55, -3, 3.45)
    self.stances.m45a1_ads.steelsight.shoulders.rotation = Rotation( 0, 1.4, 0 )

end )