------------- Client Code -----------
-------------------------------------

-------------- Services/Locals ---------------

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
LocalPlayer.CharacterAdded:Wait() -- Wait for character to load
local KillClientEvent = game.ReplicatedStorage.ClientKillEvents.Kill
local KillClientEvent2 = game.ReplicatedStorage.ClientKillEvents.Kill2
local KillClientEvent3 = game.ReplicatedStorage.ClientKillEvents.Kill3
local KillClientEvent4 = game.ReplicatedStorage.ClientKillEvents.Kill4
local KillClientEvent5 = game.ReplicatedStorage.ClientKillEvents.Kill5
local KillClientEvent6 = game.ReplicatedStorage.ClientKillEvents.Kill6
local KillClientEvent7 = game.ReplicatedStorage.ClientKillEvents.Kill7
local KillClientEvent8 = game.ReplicatedStorage.ClientKillEvents.Kill8
local KillClientEvent9 = game.ReplicatedStorage.ClientKillEvents.Kill9
local KillClientEvent10 = game.ReplicatedStorage.ClientKillEvents.Kill10
local KillClientEvent11 = game.ReplicatedStorage.ClientKillEvents.Kill11
local KillClientEvent12 = game.ReplicatedStorage.ClientKillEvents.Kill12
local ContextActionService = game:GetService("ContextActionService")
local cash = game.ReplicatedStorage.Cash
local cash2 = game.ReplicatedStorage.Cash2
local cash3 = game.ReplicatedStorage.Cash3
local XP = game.ReplicatedStorage.XP
local XP2 = game.ReplicatedStorage.XP2
local XP3 = game.ReplicatedStorage.XP3
local XP4 = game.ReplicatedStorage.XP4
local XP5 = game.ReplicatedStorage.XP5
local XP6 = game.ReplicatedStorage.XP6
local XP7 = game.ReplicatedStorage.XP7
local XP8 = game.ReplicatedStorage.XP8
local XP9 = game.ReplicatedStorage.XP9
local XP10 = game.ReplicatedStorage.XP10
local XP11 = game.ReplicatedStorage.XP11
local XP12 = game.ReplicatedStorage.XP12
local cash4= game.ReplicatedStorage.Cash4
local cash5= game.ReplicatedStorage.Cash5
local cash6= game.ReplicatedStorage.Cash6
local cash7= game.ReplicatedStorage.Cash7
local cash8= game.ReplicatedStorage.Cash8
local cash9= game.ReplicatedStorage.Cash9
local cash10= game.ReplicatedStorage.Cash10
local cash11= game.ReplicatedStorage.Cash11
local cash12= game.ReplicatedStorage.Cash12
local recieveXP = game.ReplicatedStorage.RecieveXP
local recieveCash = game.ReplicatedStorage.RecieveCash
local canCompareArea = true
local tweenService = game:GetService("TweenService")

-------------- Objects --------------

local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChild("Humanoid")
local Tool = script.Parent:FindFirstChild("ClassicSword")


-------------- Functions --------------

local function ToolFunctions()
	
	local ToolEquipped = false

	local function toggleTool(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			if Tool and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
				if ToolEquipped then
					Tool.Parent = LocalPlayer.Backpack
					ToolEquipped = false
				else
					Tool.Parent = LocalPlayer.Character
					LocalPlayer.Character.Humanoid:EquipTool(Tool)
					ToolEquipped = true
				end
			end
		end
	end

	ContextActionService:BindAction("ToggleTool", toggleTool, false, Enum.KeyCode.One)
end

local function DisableBackpack()
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
end

local function NeutralizeWalkspeed()
	if Humanoid then
		Humanoid.WalkSpeed = 15
	end
end


-------------- Neutralizers ---------------


DisableBackpack() -- Disable the Default Toolbar 
NeutralizeWalkspeed() -- Neutralize the Player Walkspeed
--ToolFunctions() -- Activate the Tool Functions


-------------- Kill Events ---------------

KillClientEvent.OnClientEvent:Connect(function(ID)
	print("/execution 1")
	local newCash = cash:Clone()
	local newXP = XP:Clone()
	local moneyRecieved = math.random(7, 15)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved
	
	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(10)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)


KillClientEvent2.OnClientEvent:Connect(function(ID)
	print("/execution 2")
	local newCash = cash2:Clone()
	local newXP = XP2:Clone()
	local moneyRecieved = math.random(7, 15)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(10)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)


KillClientEvent3.OnClientEvent:Connect(function(ID)
	print("/execution 3")
	local newCash = cash3:Clone()
	local newXP = XP3:Clone()
	local moneyRecieved = math.random(7, 15)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(10)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)







KillClientEvent4.OnClientEvent:Connect(function(ID)
	print("/execution 4")
	local newCash = cash4:Clone()
	local newXP = XP4:Clone()
	local moneyRecieved = math.random(20, 40)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(25)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)




KillClientEvent5.OnClientEvent:Connect(function(ID)
	print("/execution 5")
	local newCash = cash5:Clone()
	local newXP = XP5:Clone()
	local moneyRecieved = math.random(20, 40)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(25)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)


KillClientEvent6.OnClientEvent:Connect(function(ID)
	print("/execution 6")
	local newCash = cash6:Clone()
	local newXP = XP6:Clone()
	local moneyRecieved = math.random(20, 40)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(25)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)

KillClientEvent7.OnClientEvent:Connect(function(ID)
	print("/execution 7")
	local newCash = cash7:Clone()
	local newXP = XP7:Clone()
	local moneyRecieved = math.random(50, 80)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(50)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)

KillClientEvent8.OnClientEvent:Connect(function(ID)
	print("/execution 8")
	local newCash = cash8:Clone()
	local newXP = XP8:Clone()
	local moneyRecieved = math.random(50, 80)
	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(50)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)


KillClientEvent9.OnClientEvent:Connect(function(ID)
	print("/execution 9")
	local newCash = cash9:Clone()
	local newXP = XP9:Clone()
	local moneyRecieved = math.random(50, 80)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(50)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)

KillClientEvent10.OnClientEvent:Connect(function(ID)
	print("/execution 10")
	local newCash = cash10:Clone()
	local newXP = XP10:Clone()
	local moneyRecieved = math.random(200, 400)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(200)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)

KillClientEvent11.OnClientEvent:Connect(function(ID)
	print("/execution 11")
	local newCash = cash11:Clone()
	local newXP = XP11:Clone()
	local moneyRecieved = math.random(200, 400)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(200)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)


KillClientEvent12.OnClientEvent:Connect(function(ID)
	print("/execution 12")
	local newCash = cash12:Clone()
	local newXP = XP12:Clone()
	local moneyRecieved = math.random(200, 400)

	newCash.Parent = game.Workspace
	newXP.Parent = game.Workspace

	newCash.BillboardGui.amount.Text = "$"..moneyRecieved

	if Character and Character:FindFirstChild("HumanoidRootPart") then
		local hrp = Character.HumanoidRootPart

		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {Position = hrp.Position}

		local tween = tweenService:Create(newXP, tweenInfo, goal)
		tween:Play()

		tween.Completed:Connect(function()
			wait(0.2)
			newXP:Destroy()
			recieveXP:FireServer(200)
		end)
	end

	newCash.ClickDetector.MouseClick:Connect(function(plr)
		if plr then
			print("$"..moneyRecieved.." cash for "..plr.Name)
			recieveCash:FireServer(moneyRecieved)
			newCash:Destroy()
		end
	end)
end)






-------------- Worlds -----------


wait(7)
-------------- Progress Bars --------------
if canCompareArea then
	game.ReplicatedStorage.ChangeProgressBar.OnClientEvent:Connect(function(value)
		local sld = game.Workspace:FindFirstChild("PurchaseWorld1")
		if sld then
			sld.SurfaceGui.MainFrame.ProgressBar.Filler.Size = UDim2.new(value, 0, 1, 0)
		else
			return
		end
	end)
	
	game.ReplicatedStorage.ChangeProgressBar2.OnClientEvent:Connect(function(value)
		local sld = game.Workspace:FindFirstChild("PurchaseWorld2")
		if sld then
			sld.SurfaceGui.MainFrame.ProgressBar.Filler.Size = UDim2.new(value, 0, 1, 0)
		else
			return
		end
	end)
	
	game.ReplicatedStorage.ChangeProgressBar3.OnClientEvent:Connect(function(value)
		local sld = game.Workspace:FindFirstChild("PurchaseWorld3")
		if sld then
			sld.SurfaceGui.MainFrame.ProgressBar.Filler.Size = UDim2.new(value, 0, 1, 0)
		else
			return
		end
	end)

	game.ReplicatedStorage.UpdateButtonColor.OnClientEvent:Connect(function(value)
		if value == 0 then
			local sld = game.Workspace:FindFirstChild("PurchaseWorld1")
			if sld then
				sld.Purchase.SurfaceGui.TextLabel.BackgroundColor3 = Color3.new(0.321569, 0.345098, 0.368627)
				sld.Purchase.ClickDetector.MaxActivationDistance = 0
			end
		end
		if value == 1 then
			local sld = game.Workspace:FindFirstChild("PurchaseWorld1")
			if sld then
				sld.Purchase.SurfaceGui.TextLabel.BackgroundColor3 = Color3.new(0.0980392, 1, 0.231373)
				sld.Purchase.ClickDetector.MaxActivationDistance = 80
			end
		end
	end)

	game.ReplicatedStorage.UpdateButtonColor2.OnClientEvent:Connect(function(value)
		if value == 0 then
			local sld = game.Workspace:FindFirstChild("PurchaseWorld2")
			if sld then
				sld.Purchase.SurfaceGui.TextLabel.BackgroundColor3 = Color3.new(0.321569, 0.345098, 0.368627)
				sld.Purchase.ClickDetector.MaxActivationDistance = 0
			end
		end
		if value == 1 then
			local sld = game.Workspace:FindFirstChild("PurchaseWorld2")
			if sld then
				sld.Purchase.SurfaceGui.TextLabel.BackgroundColor3 = Color3.new(0.0980392, 1, 0.231373)
				sld.Purchase.ClickDetector.MaxActivationDistance = 80
			end
		end
	end)

	game.ReplicatedStorage.UpdateButtonColor3.OnClientEvent:Connect(function(value)
		if value == 0 then
			local sld = game.Workspace:FindFirstChild("PurchaseWorld3")
			if sld then
				sld.Purchase.SurfaceGui.TextLabel.BackgroundColor3 = Color3.new(0.321569, 0.345098, 0.368627)
				sld.Purchase.ClickDetector.MaxActivationDistance = 0
			end
		end
		if value == 1 then
			local sld = game.Workspace:FindFirstChild("PurchaseWorld3")
			if sld then
				sld.Purchase.SurfaceGui.TextLabel.BackgroundColor3 = Color3.new(0.0980392, 1, 0.231373)
				sld.Purchase.ClickDetector.MaxActivationDistance = 80
			end
		end
	end)
end

----------- Areas Unlocked ---------------

game.ReplicatedStorage.WorldUnlocked.OnClientEvent:Connect(function(worldName)
	local assumedWorld = game.Workspace:FindFirstChild(worldName)
	if assumedWorld then
		assumedWorld:Destroy()
	end
end)
local TweenService = game:GetService("TweenService")

game.ReplicatedStorage.AreaUnlock.OnClientEvent:Connect(function(worldName)
	local assumedWorld = game.Workspace:FindFirstChild(worldName)
	if assumedWorld then
		local tweens = {}

		for _, descendant in ipairs(assumedWorld:GetDescendants()) do
			if descendant:IsA("BasePart") then
				local tween = TweenService:Create(
					descendant,
					TweenInfo.new(2),
					{ Transparency = 1 }
				)
				tween:Play()
				table.insert(tweens, tween)
			elseif descendant:IsA("GuiObject") then
				if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
					local tween = TweenService:Create(
						descendant,
						TweenInfo.new(2),
						{ BackgroundTransparency = 1, TextTransparency = 1 }
					)
					tween:Play()
					table.insert(tweens, tween)
				else
					local tween = TweenService:Create(
						descendant,
						TweenInfo.new(2),
						{ BackgroundTransparency = 1 }
					)
					tween:Play()
					table.insert(tweens, tween)
				end
			end
		end
		
		task.delay(2, function()
			assumedWorld:Destroy()
		end)
	end
end)

---------- Purchase Areas ----------------

game.Workspace.PurchaseWorld1.Purchase.ClickDetector.MouseClick:Connect(function(plr)
	game.ReplicatedStorage.PurchaseArea:FireServer(1, 250)
end)

game.Workspace.PurchaseWorld2.Purchase.ClickDetector.MouseClick:Connect(function(plr)
	game.ReplicatedStorage.PurchaseArea:FireServer(2, 550)
end)


game.Workspace.PurchaseWorld3.Purchase.ClickDetector.MouseClick:Connect(function(plr)
	game.ReplicatedStorage.PurchaseArea:FireServer(3, 2000)
end)




-------------- Animations/Cutscenes -------------
wait(0.5)

game.Workspace.StartMatch.Touched:Connect(function(plr)
	if plr.Parent:FindFirstChild("Humanoid") and plr.Parent.Name ~= "BaconHairGuy" then
		game.ReplicatedStorage.MoveBack:FireServer(plr.Parent.HumanoidRootPart)
		wait(2)
		local baconHairGuy = game.Workspace:FindFirstChild("BaconHairGuy")
		if baconHairGuy then
			local humanoid = baconHairGuy:FindFirstChild("Humanoid")
			local humanoidRootPart = baconHairGuy:FindFirstChild("HumanoidRootPart")

			if humanoid and humanoidRootPart then
				local animation = Instance.new("Animation")
				animation.AnimationId = "rbxassetid://105098349235986"
				local animationTrack = humanoid:LoadAnimation(animation)

				animationTrack:Play()

				wait(4.8)
				local player = Players:GetPlayerFromCharacter(plr.Parent)
				local tweenInfo = TweenInfo.new(
					1.8,
					Enum.EasingStyle.Quad
				)
				local tween = TweenService:Create(
					player.PlayerGui.GameUI.Frame,
					tweenInfo,
					{ BackgroundTransparency = 0 }
				)
				local tween2 = TweenService:Create(
					player.PlayerGui.GameUI.Frame,
					tweenInfo,
					{ BackgroundTransparency = 1 }
				)
				tween:Play()
				game.ReplicatedStorage.TeleportToBossFight:FireServer()
			else
				warn("No HumanoidRootPart or Humanoid found in BaconHairGuy.")
			end
		else
			warn("BaconHairGuy not found.")
		end
	end
end)


