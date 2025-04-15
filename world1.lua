game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Wait()
	wait(7)
	print("running")
	while true do
		local sizing = plr.leaderstats.Cash.Value / 250
		game.ReplicatedStorage.ChangeProgressBar:FireClient(plr, sizing)
		if plr.leaderstats.Cash.Value > 249 then
			game.ReplicatedStorage.UpdateButtonColor:FireClient(plr, 1)
		else
			game.ReplicatedStorage.UpdateButtonColor:FireClient(plr, 0)
		end
		wait()
	end
end)

game.ReplicatedStorage.PurchaseArea.OnServerEvent:Connect(function(PLR, AREA, COST)
	print("caught")
	if PLR.leaderstats.Cash.Value >= COST then
		if AREA == 1 then
			print("continued")
			PLR.leaderstats.Cash.Value = PLR.leaderstats.Cash.Value - COST
			PLR.DataStorage.Area.Value = AREA
			game.ReplicatedStorage.AreaUnlock:FireClient(PLR, "PurchaseWorld1")
		end
	else
		print("wrong guy")
	end
end)
