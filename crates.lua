game.ReplicatedStorage.OpenCrate.OnServerEvent:Connect(function(plr, ID)
	if ID == 1 then
		if plr.leaderstats.Cash.Value >= 300 then
			plr.leaderstats.Cash.Value -= 300
			game.ReplicatedStorage.OpenCrate:FireClient(plr, 1)
		end
	end
	if ID == 2 then
		if plr.leaderstats.Cash.Value >= 1000 then
			plr.leaderstats.Cash.Value -= 1000
			game.ReplicatedStorage.OpenCrate:FireClient(plr, 2)
		end
	end
	if ID == 3 then
		if plr.leaderstats.Cash.Value >= 5000 then
			plr.leaderstats.Cash.Value -= 5000
			game.ReplicatedStorage.OpenCrate:FireClient(plr, 3)
		end
	end
end)
