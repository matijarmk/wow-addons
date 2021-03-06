Tongues.Affect = {
	["<None>"] = {
		["substitute"] = {};
		["frequency"]  = 100;
	};

	---------------------------------------------------------------------
	["Stutter"] = {
		["substitute"] = {
			[1] = {
				["(\32\66)"] 	= " B-B",
				["(\32\98)"] 	= " b-b",
				["(\32\67)"]	= " C-C",
				["(\32\99)"]	= " c-c",
				["(\32\68)"]	= " D-D",
				["(\32\100)"]	= " d-d",
				["(\32\70)"]	= " F-F",
				["(\32\102)"]	= " f-f",
				["(\32\71)"]	= " G-G",
				["(\32\103)"] 	= " g-g",
				["(\32\75)"]	= " K-K",
				["(\32\107)"]	= " k-k",
				["(\32\77)"]	= " M-M",
				["(\32\109)"]	= " m-m",
				["(\32\83)"]	= " S-S",
				["(\32\115)"]	= " s-s",
				["(\32\87)"]	= " W-W",
				["(\32\119)"]	= " w-w",
				["(\32\90)"]	= " Z-Z", 
				["(\32\122)"]	= " z-z" 
			};
		};
		["frequency"]  = 100;
	}; 
	---------------------------------------------------------------------
	["Growl"] = {
		["substitute"] = {
			[1] = {
				["([rR])([rR]*)"] = "%1%1"
			};
		};
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
	["Hiss"] = {
		["substitute"] = {
			[1] = {
				["([Ss]+)([hH]*)"] 	= "%1%1%2",
				["as"] = "as",
			};
		};
		["ignore"] = { "as" };
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
	["Slur"] = {
		["substitute"] = {
			[1] = {
				["([sS])([sShH]*)"] 		= "%1h",
				["([cCxX])([cC]+)"] 		= "ksh",
				["([xX])([hH]*)"] 		= "ksh",
			};
		};
		["frequency"]  = 100
	};
	---------------------------------------------------------------------
	["Lisp"] = {
		["substitute"] = {
			[1] = {
				["([\90\83])([\122\115])"]	= "Th",
				["([\122\115])([\122\115])"]	= "th",
				["([\90\83])([\90\83])"]	= "TH",
				["([\122\115][h]*)"]		= "th",
				["([\90\83][h]*)"]		= "Th",
				["([\90\83][H]*)"]		= "TH",
			};
		};
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
	["Wordcut"] = {
		["substitute"] = {
			[1] = {
				["([Nn])([GgkK])([%A])"] = "%1'%3",
				["([Nn])([GgkK])$"] = "%1'",
							};
		};
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
	["L Vocalization"] = {
		["substitute"] = {
			[1] = {
				["([aAbBcCdDeEgGhHiIjJkKlLmMnNoOpPrRtTuUvVwWyYzZ'])[lL]+[eE]?"]  = "%1ow",
			};
		};
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
--[[
	["Non-Rhoic"] ={
		["substitute"] = {
			[1] = {

			};
		};
		["frequency"]  = 100;
	};
]]
	---------------------------------------------------------------------
	["WH Vocalization"] ={
		["substitute"] = {
			[1] = {
				["([Ww])[Hh]"] = "%1",
							};
		};
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
	["Glottal Stop"] = {
		--needs to be just medial and final
		["substitute"] = {
			[1] = {
				["([^sScCaAeEiIoOuU%s])([tT]+)([^hH%A])"] = "%1t'%3"
			};
		};
		["frequency"]  = 100;
	};
	---------------------------------------------------------------------
	["Ramble"] = {
		--needs to be just medial and final
		["substitute"] = {
			[1] = {
				["^(%a)"] = function(a)
					a = string.upper(a)
					return a
				end;
				["([%s]+)(%a)"] = function(a,b)
					b = string.upper(b)
					return b
				end;
			};
		};
		["frequency"]  = 100;
	};
};

-------------------------COMPOUND AFFECTS--------------------------------------
Tongues.Affect["Drunk"] = {
	["substitute"] = {
		[1] = merge({
			{ ["([%a]+)(%A*)$"] = "%1 ...hic!"},
			Tongues.Affect["Slur"]["substitute"][1]
		});
	};
	["frequency"]  = 100;
};

Tongues.Custom.Affect={};