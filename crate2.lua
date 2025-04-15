game.ReplicatedStorage.OpenCrate.OnClientEvent:Connect(function(ID)
	if ID == 2 then
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
			wait(0.03) -- Adjust the frequency of shakes
		end

		script.Parent.Rotation = 0

		local chances = math.random(1, 100)
		local outcome

		script.Parent.Visible = false
		if chances <= 40 then
			script.Parent.Parent.LongSword.Visible = true
			script.Parent.Parent.TitleA1.Visible = true
			script.Parent.Parent.RarityA1.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Long Sword")
		elseif chances <= 75 then
			script.Parent.Parent.DiamondSword.Visible = true
			script.Parent.Parent.TitleA2.Visible = true
			script.Parent.Parent.RarityA2.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Diamond Sword")
		elseif chances <= 95 then
			script.Parent.Parent.EnhancedSword.Visible = true
			script.Parent.Parent.TitleA3.Visible = true
			script.Parent.Parent.RarityA3.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Enhanced Sword")
		else
			script.Parent.Parent.RadioactiveSword.Visible = true
			script.Parent.Parent.TitleA4.Visible = true
			script.Parent.Parent.RarityA4.Visible = true
			game.ReplicatedStorage.AddItem:FireServer("Radioactive Sword")
		end
		wait(1)
		script.Parent.Parent.LongSword.Visible = false
		script.Parent.Parent.TitleA1.Visible = false
		script.Parent.Parent.RarityA1.Visible = false
		script.Parent.Parent.DiamondSword.Visible = false
		script.Parent.Parent.TitleA2.Visible = false
		script.Parent.Parent.RarityA2.Visible = false
		script.Parent.Parent.EnhancedSword.Visible = false
		script.Parent.Parent.TitleA3.Visible = false
		script.Parent.Parent.RarityA3.Visible = false
		script.Parent.Parent.RadioactiveSword.Visible = false
		script.Parent.Parent.TitleA4.Visible = false
		script.Parent.Parent.RarityA4.Visible = false
		script.Parent.Parent.Parent.GameUI.Enabled = true
		game.Lighting.Blur.Size = 0
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)

	end
end)
