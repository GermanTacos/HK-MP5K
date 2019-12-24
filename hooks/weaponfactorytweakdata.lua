Hooks:PostHook( WeaponFactoryTweakData, "init", "MP5KmodInit", function(self)
	local vanilla_mp5ksight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_acog",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
	}

	--- Gun ---
	for id, o_id in pairs(vanilla_mp5ksight) do
		self.wpn_fps_smg_kurz_919.adds[o_id] = {"wpn_fps_smg_kurz_919_sm_claw"}
	end
	
	--- Vanilla sights ---
	for id, o_id in pairs(vanilla_mp5ksight) do
		if self.parts[o_id].stance_mod.wpn_fps_smg_schakal then
			self.parts[o_id].stance_mod.wpn_fps_smg_kurz_919 = deep_clone(self.parts[o_id].stance_mod.wpn_fps_smg_schakal)
		else
			log("[MP5K] [ERROR] WHO THE FUCK MESSED WITH SIGHT STANCES THIS TIME!? " .. o_id)
		end
	end
end )