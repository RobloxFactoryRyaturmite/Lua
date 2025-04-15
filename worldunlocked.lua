game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Wait()
	wait(7)
	if plr.DataStorage.Area.Value >= 1 then
		game.ReplicatedStorage.WorldUnlocked:FireClient(plr, "PurchaseWorld1")
		print("FIRED")
	end
	if plr.DataStorage.Area.Value >= 2 then
		game.ReplicatedStorage.WorldUnlocked:FireClient(plr, "PurchaseWorld2")
		print("FIRED")
	end
	if plr.DataStorage.Area.Value >= 3 then
		game.ReplicatedStorage.WorldUnlocked:FireClient(plr, "PurchaseWorld3")
		print("FIRED")
	end
end)
