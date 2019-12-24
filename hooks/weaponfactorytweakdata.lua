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
	local all_mp5k_ext = {
	"wpn_fps_upg_ns_ass_smg_large",
	"wpn_fps_upg_ns_ass_smg_medium",
	"wpn_fps_upg_ns_ass_smg_small",
	"wpn_fps_upg_ns_ass_smg_firepig",
	"wpn_fps_upg_ns_ass_smg_stubby",
	"wpn_fps_upg_ns_ass_smg_tank",
	"wpn_fps_upg_ns_ass_pbs1",
	"wpn_fps_upg_ass_ns_jprifles",
	"wpn_fps_upg_ass_ns_linear",
	"wpn_fps_upg_ass_ns_surefire",
	"wpn_fps_upg_ass_ns_battle"
}

--- CAFCW aka better later then never also holy shit this actually works ---
if attach_tables then
	for _, md_id in pairs(attach_tables.Barrel_Extensions) do
		if self.parts[md_id] then
			table.insert(all_mp5k_ext, md_id)
		end
	end
	for _, md_id in pairs(attach_tables.Suppressors) do
		if self.parts[md_id] then
			table.insert(all_mp5k_ext, md_id)
		end
	end
	--[[
	for _, fl_id in pairs(attach_tables.Gadgets) do
		if self.parts[fl_id] then
			table.insert(all_akmfl, fl_id)
		end
	end
	for _, o_id in pairs(attach_tables.ACOG) do
		if self.parts[o_id] then
			table.insert(vanilla_akmsight, o_id)
		end
	end
	for _, o_id in pairs(attach_tables.Custom) do
		if self.parts[o_id] then
			table.insert(vanilla_akmsight, o_id)
		end
	end
	for _, o_id in pairs(attach_tables.Specter) do
		if self.parts[o_id] then
			table.insert(vanilla_akmsight, o_id)
		end
	end
	]]
end


	--- Gun ---
	for id, o_id in pairs(vanilla_mp5ksight) do
		self.wpn_fps_smg_kurz_919.adds[o_id] = {"wpn_fps_smg_kurz_919_sm_claw"}
	end
	
	for id, md_id in pairs(all_mp5k_ext) do
		self.parts.wpn_fps_smg_kurz_919_ba_mp5kn.override[md_id] = {a_obj="a_ns_n"}
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