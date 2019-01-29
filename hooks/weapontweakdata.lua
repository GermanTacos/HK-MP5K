Hooks:PostHook( WeaponTweakData, "init", "STG58modInit", function(self)

if ( self.fusil_762 ) then
--- Base stuff ---	
	self:SetupAttachmentPoint("fusil_762", {
		name = "a_ns", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, 5.15, -0.25 ), -- -16
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("fusil_762", {
		name = "a_fl", 
        base_a_obj = "a_fl", 
        position = Vector3( -2, 14, -2.8 ), 
        rotation = Rotation( 0, 0, 90 ) 
	})
	self:SetupAttachmentPoint("fusil_762", {
		name = "a_gl", 
        base_a_obj = "a_fl", 
        position = Vector3( -2.88, 27.2, -3.1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("fusil_762", {
		name = "a_o", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -7, 0.5 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("fusil_762", {
		name = "a_os", 
        base_a_obj = "a_os", 
        position = Vector3( 0, 1.5, 1.1 ), 
        rotation = Rotation( 0, 10, 0 )
	})
	
	self:SetupAttachmentPoint("fusil_762", {
		name = "a_o_sa58", 
        base_a_obj = "a_o", 
        position = Vector3( 0, -9, -1.5 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
end

end )