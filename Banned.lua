local function Banned(UserID, Reason)
	if game:GetService('Players').LocalPlayer.UserId == UserID then
		game:GetService('Players').LocalPlayer:Kick('RAYX BANNED : '..Reason)
	end
end

Banned(2985941001, 'Banned ALT')
