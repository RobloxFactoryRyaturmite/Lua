game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Wait()
	wait(8)
	print("running")
	while true do
		local sizing = plr.leaderstats.Cash.Value / 2000
		game.ReplicatedStorage.ChangeProgressBar3:FireClient(plr, sizing)
		if plr.leaderstats.Cash.Value > 1999 then
			game.ReplicatedStorage.UpdateButtonColor3:FireClient(plr, 1)
		else
			game.ReplicatedStorage.UpdateButtonColor3:FireClient(plr, 0)
		end
		wait()
	end
end)

game.ReplicatedStorage.PurchaseArea.OnServerEvent:Connect(function(PLR, AREA, COST)
	print("caught")
	if PLR.leaderstats.Cash.Value >= COST then
		if AREA == 3 then
			print("continued")
			PLR.leaderstats.Cash.Value = PLR.leaderstats.Cash.Value - COST
			PLR.DataStorage.Area.Value = AREA
			game.ReplicatedStorage.AreaUnlock:FireClient(PLR, "PurchaseWorld3")
		end
	else
		print("wrong guy")
	end
end)
