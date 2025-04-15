game.ReplicatedStorage.OpenCrate.OnClientEvent:Connect(function(ID)
	if ID == 1 then
		local StarterGui = game:GetService("StarterGui")
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		script.Parent.Parent.Parent.GameUI.Enabled = false
		game.Lighting.Blur.Size = 24
		script.Parent.Visible = true
		wait(0.5)

		local shakeTime = 0.75
		local shakeIntensity = 40
		local startTime = tick()

		while tick() - startTime < shakeTime do
			local randomRotation = math.random(-shakeIntensity, shakeIntensity)
			script.Parent.Rotation = randomRotation
			wait(0.03)
		end

		script.Parent.Rotation = 0

		local chances = math.random(1, 100)
		local outcome

		script.Parent.Visible = false
		if chances <= 40 then
			script.Parent.Parent.ToySword.Visible = true
			script.Parent.Parent.Title2.Visible = true
			script.Parent.Parent.Rarity2.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Toy Sword")
		elseif chances <= 65 then
			script.Parent.Parent.ShabbySword.Visible = true
			script.Parent.Parent.Title1.Visible = true
			script.Parent.Parent.Rarity1.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Shabby Sword")
		elseif chances <= 85 then
			script.Parent.Parent.SharpSword.Visible = true
			script.Parent.Parent.Title3.Visible = true
			script.Parent.Parent.Rarity3.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Sharp Sword")
		elseif chances <= 98 then
			script.Parent.Parent.TitaniumSword.Visible = true
			script.Parent.Parent.Title4.Visible = true
			script.Parent.Parent.Rarity4.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Titanium Sword")
		else
			script.Parent.Parent.PoweredSword.Visible = true
			script.Parent.Parent.Title5.Visible = true
			script.Parent.Parent.Rarity5.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Powered Sword")
		end
		wait(1)
		script.Parent.Parent.ToySword.Visible = false
		script.Parent.Parent.Title2.Visible = false
		script.Parent.Parent.Rarity2.Visible = false
		script.Parent.Parent.ShabbySword.Visible = false
		script.Parent.Parent.Title1.Visible = false
		script.Parent.Parent.Rarity1.Visible = false
		script.Parent.Parent.SharpSword.Visible = false
		script.Parent.Parent.Title3.Visible = false
		script.Parent.Parent.Rarity3.Visible = false
		script.Parent.Parent.TitaniumSword.Visible = false
		script.Parent.Parent.Title4.Visible = false
		script.Parent.Parent.Rarity4.Visible = false
		script.Parent.Parent.PoweredSword.Visible = false
		script.Parent.Parent.Title5.Visible = false
		script.Parent.Parent.Rarity5.Visible = false
		script.Parent.Parent.Parent.GameUI.Enabled = true
		game.Lighting.Blur.Size = 0
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)

	end
end)
