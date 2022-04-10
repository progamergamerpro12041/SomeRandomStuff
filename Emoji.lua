local StarId = {
	[60935213] = true,
	[530191889] = true,
	[1628316979] = true,
	[2857717795] = true,
	[2788184005] = true,
	[3207880708] = true,
	[2932921962] = true,
	[273745938] = true,
	[2562629415] = true,
	[1788647547] = true,
	[1274852399] = true,
	[109202930] = true,
	[3270320985] = true,
	[3376845876] = true,
	[2551611755] = true,
	[2832101336] = true,
	[3053730650] = true,
	[1058942985] = true,
	[3233223400] = true,
	[2594137875] = true,
	[140135317] = true,
	[1828261036] = true,
	[244331908] = true,
	[3360782059] = true,
	[1266167773] = true,
	[3360799567] = true,
	[554156590] = true,
	[79287609] = true,
	[1786232937] = true,
	[2512185196] = true,
	[62639400] = true,
	[2411740048] = true,
	[154220234] = true,
	[2820724269] = true,
	[1084932595] = true,
	[490432634] = true,
	[106067330] = true,
	[465676149] = true,
	[181748271] = true,
	[1277602974] = true,
	[988783311] = true,
	[2530699406] = true,
	[1009221814] = true,
	[3172002177] = true,
	[315693697] = true,
	[1547314554] = true,
	[3140798308] = true,
	[140573843] = true,
	[512687855] = true,
	[3354893474] = true,
	[1593266270] = true,
	[723769846] = true,
	[113080976] = true,
	[3053468015] = true,
	[2663753979] = true,
	[504570373] = true,
	[2351021062] = true,
	[3426663599] = true,
	[2411807466] = true,
	[2495349052] = true,
	[63877643] = true,
	[1511465503] = true,
	[2432531355] = true,
	[516773317] = true,
	[2428985663] = true,
	[145153137] = true,
	[529565492] = true,
	[2267519533] = true,
	[3004172027] = true,
}

local CrownId = {}

local DiamondId = {
	[3453214450] = true,
	[953043143] = true,
	[99087422] = true,
}

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif CrownId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif DiamondId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🙂]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
