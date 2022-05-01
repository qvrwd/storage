loadstring(game:HttpGet("https://pastebin.com/raw/eHEyzZST", true))()

spawn(function()
	Admins = {"JokeTheFool","ITopStarI" ,"Sherosama", "Papa_Mbaye",
		"AStrongMuscle", "iRenn", "NikoSenpai", "UziGarage", "iumu",
		"Benoxa", "Luutyy", "clubstar54", "givkitheth", "zakblak20",
		"MarTheWise", "BeeTheKidd", "qtCeleste", "coreten", "LegacyCross",
		"NatsuDBlaze", "Asuyia", "POMPKUN", "Untold_Joke", "MoodJesus", "AfroDs",
		"MarkoSumisu", "Greed_Ocean","givkitheth", "DrxcoBaby" , "DrxcoRxsh", "XavierWildYT",
		"dtbbullet", "ATKDrizzy", "bull_bot"
	} 
	for i, players in pairs(game:GetService("Players"):GetPlayers()) do
		if players.Name == unpack(Admins) then
			game:GetService("Players").LocalPlayer:Kick("Crystal Defense : Admin Joined, Kicked To Prevent Ban")
		end
	end

	game:GetService("Players").PlayerAdded:Connect(function(Player)
		if Player.Name == unpack(Admins) then
			game:GetService("Players").LocalPlayer:Kick("Crystal Defense : Admin Joined, Kicked To Prevent Ban") 
		end
	end)
end)

-- // Vars
local detectionVectors = {
	CHECKER_1 = true,
	TeleportDetect = true,
	OneMoreTime = true,
	BANREMOTE = true,
	KICKREMOTE = true
}

-- // Metatable vars
local mt = getrawmetatable(game)
local backupnamecall = mt.__namecall
setreadonly(mt, false)

-- // Hook
mt.__namecall = newcclosure(function(...)
	-- // Vars
	local method = getnamecallmethod()
	local args = {...}

	-- // Check if it trying to do naughty
	if (method == "FireServer" and tostring(args[1]) == "MainEvent" and detectionVectors[args[2]]) then
		return wait(9e9)
	end

	if (method == "CHECKER_1" and tostring(args[1]) == "MainEvent" and detectionVectors[args[2]]) then
		return wait(9e9)
	end

	if (method == "KICKREMOTE" and tostring(args[1]) == "MainEvent" and detectionVectors[args[2]]) then
		return wait(9e9)
	end

	if (method == "BANREMOTE" and tostring(args[1]) == "MainEvent" and detectionVectors[args[2]]) then
		return wait(9e9)
	end


	-- // Fly Bypass
	if (not checkcaller() and getfenv(1).crash ~= nil and getfenv(1).checkChild ~= nil) then
		getcallingscript():Destroy()
		return wait(9e9)
	end

	-- // Return
	return backupnamecall(...)
end)

-- // End Metatable
setreadonly(mt, true)


function toTarget(d, C, D)
	local E = game:service"TweenService"
	local F = TweenInfo.new((C - d).Magnitude / 170, Enum.EasingStyle.Quad)
	local G = tick()
	local H, I = pcall(function()
		local H = E:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], F, {
			CFrame = D
		})
		H:Play()
	end)
	if not H then
		return I
	end
end;

function ToShoes(d, C, D)
	local E = game:service"TweenService"
	local F = TweenInfo.new((C - d).Magnitude / 50, Enum.EasingStyle.Quad)
	local G = tick()
	local H, I = pcall(function()
		local H = E:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], F, {
			CFrame = D
		})
		H:Play()
	end)
	if not H then
		return I
	end
end;
local function J(K, L)
	local M = (K.Position - L.Position).magnitude;
	if M <= 50 then
		fireclickdetector(L:FindFirstChild("ClickDetector"), 4)
		return M
	end
end;


function GetPlayer(String)
	local Found = {}
	local strl = String:lower()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
			table.insert(Found,v.Name)
		end
	end    
	return Found    
end

local function FindPlrOnMouse()
	for i, v in pairs(game.Workspace:FindPartsInRegion3(Region3.new(game.Players.LocalPlayer:GetMouse().Hit.Position, game.Players.LocalPlayer:GetMouse().Hit.Position))) do
		local plr = game.Players:GetPlayerFromCharacter(v.Parent)
		if plr ~= nil and plr ~= game.Players.LocalPlayer then
			return plr
		end
	end
	return nil
end

spawn(function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/CrystalManMan/CrystalCentral/main/BlacklistedMain"))()
end)



-- // Starter \\ --
CreateWindow("Crystal Central - Da Hood")
CreateMenu("Home")
CreateMenu("Player")
CreateMenu("Combat")
CreateMenu("God Stuff")
CreateMenu("Target")
CreateMenu("Auto Farms")
CreateMenu("AutoBuy")
CreateMenu("Teleports")
CreateMenu("Animations")
CreateMenu("Money")
CreateMenu("Extras")
CreateMenu("Credits")
CreateSearchBar("Player")
CreateSearchBar("Combat")
CreateSearchBar("God Stuff")
CreateSearchBar("Target")
CreateSearchBar("Auto Farms")
CreateSearchBar("AutoBuy")
CreateSearchBar("Teleports")
CreateSearchBar("Animations")
CreateSearchBar("Money")
CreateSearchBar("Extras")
CreateSearchBar("Credits")

-- // Main \\ --

CreateNote("Welcome To Crystal Central || Discord : discord.gg/mjt89HRmjf", "Home")
CreateNote("Top Suppoerter: | Condensed Milk |#7800", "Home")
CreateNote("Re-open Keybind : J", "Home")
CreateNote("no mod prems, fuck wrehas", "Home")
CreateRegButton("Copy Discord Invite", "Home", function()
	if syn then
		setclipboard("https://discord.gg/mjt89HRmjf")
		CreateNotification("Copied To Clipboard!", 5)
	else
		CreateNotification("You're Not Using Synapse! Heres The Link, https://discord.gg/mjt89HRmjf", 15)
	end
end)

CreateValueButton("Fly", "Player", "Fly Speed", function(NumberSpeed)
	pcall(function()
		CreateNotification("Set Keybind For Fly Is X", 15)
		if NumberSpeed == nil then
			NumberSpeed = 15 
		end

		local plr = game:GetService("Players").LocalPlayer
		local mouse = plr:GetMouse()


		localplayer = game:GetService("Players").LocalPlayer

		if workspace:FindFirstChild("Core") then
			workspace.Core:Destroy()
		end

		local Core = Instance.new("Part")
		Core.Name = "Core"
		Core.Size = Vector3.new(0.05, 0.05, 0.05)

		spawn(function()
			Core.Parent = workspace
			local Weld = Instance.new("Weld", Core)
			Weld.Part0 = Core
			Weld.Part1 = game:GetService("Players").LocalPlayer.Character.LowerTorso
			Weld.C0 = CFrame.new(0, 0, 0)
		end)

		workspace:WaitForChild("Core")

		local torso = game:GetService("Players").LocalPlayer.Character.LowerTorso
		flying = true
		local speed=NumberSpeed
		local keys={a=false,d=false,w=false,s=false} 
		local e1
		local e2
		local function start()
			pcall(function()
				local pos = Instance.new("BodyPosition", game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso"))
				local gyro = Instance.new("BodyGyro", game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso"))
				pos.Name="EPIXPOS"
				pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				pos.position = game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso").Position
				gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
				gyro.cframe = game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso").CFrame
				repeat
					wait()
					game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand=true
					local new=gyro.cframe - gyro.cframe.p + pos.position
					if not keys.w and not keys.s and not keys.a and not keys.d then
						speed=NumberSpeed
					end
					if keys.w then 
						new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
						speed=speed+0
					end
					if keys.s then 
						new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
						speed=speed+0
					end
					if keys.d then 
						new = new * CFrame.new(speed,0,0)
						speed=speed+0
					end
					if keys.a then 
						new = new * CFrame.new(-speed,0,0)
						speed=speed+0
					end
					if speed>NumberSpeed*2 then
						speed=NumberSpeed
					end
					pos.position=new.p
					if keys.w then
						gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
					elseif keys.s then
						gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
					else
						gyro.cframe = workspace.CurrentCamera.CoordinateFrame
					end
				until flying == false
				if gyro then gyro:Destroy() end
				if pos then pos:Destroy() end
				flying=false
				game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = false
				speed=NumberSpeed
			end)
		end
		e1=mouse.KeyDown:connect(function(key)
			if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso").Parent then flying=false e1:disconnect() e2:disconnect() return end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			elseif key=="x" then
				if flying==true then
					flying=false
				else
					flying=true
					start()
				end
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start()
	end)
end)

CreateRegButton("Shamzan Fly [X]", "Player", function()

	local mouse = game.Players.LocalPlayer:GetMouse() 
	local plr = game.Players.LocalPlayer 
	local torso = plr.Character.Head 
	local flying = false
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 5000
	local speed = 5000 


	local player = game.Players.LocalPlayer
	local char = game.Players.LocalPlayer.Character

	local cam = workspace.CurrentCamera
	local uis = game:GetService("UserInputService")

	local hoh = Instance.new("Animation", game.Workspace)
	hoh.Name = "Fly"
	hoh.AnimationId = "rbxassetid://3541044388"

	local heh = Instance.new("Animation", game.Workspace)
	heh.Name = "Hover"
	heh.AnimationId = "rbxassetid://3541114300"

	local wPressed = false
	local sPressed = false
	local aPressed = false
	local dPressed = false


	local idleAnim = char.Humanoid:LoadAnimation(game.Workspace.Fly)
	local forwardAnim = char.Humanoid:LoadAnimation(game.Workspace.Hover)

	function Fly() 
		local bg = Instance.new("BodyGyro", torso) 
		bg.P = 9e4 
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		bg.cframe = torso.CFrame 
		local bv = Instance.new("BodyVelocity", torso) 
		bv.velocity = Vector3.new(0,0.1,0) 
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
		repeat wait() 
			plr.Character.Humanoid.PlatformStand = true 
			if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then 
				speed = speed+.0+(speed/maxspeed) 
				if speed > maxspeed then 
					speed = maxspeed 
				end 
			elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then 
				speed = speed-5
				if speed > 5 then 
					speed = -2 
				end 
			end 
			if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
			elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			else 
				bv.velocity = Vector3.new(0,0.1,0) 
			end 
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
		until not flying 
		ctrl = {f = 0, b = 0, l = 0, r = 0} 
		lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		speed = 5 
		bg:Destroy() 
		bv:Destroy() 
		plr.Character.Humanoid.PlatformStand = false 
	end 

	mouse.KeyDown:connect(function(key) 
		if key:lower() == "x" then 
			if flying then flying = false 
				forwardAnim:Stop()
				idleAnim:Stop()
			else 
				flying = true 
				Fly() 
				forwardAnim:Stop()
				idleAnim:Stop()
			end 
		elseif key:lower() == "w" then 
			ctrl.f = 45
			wPressed = false
		elseif key:lower() == "s" then 
			ctrl.b = -45 
			sPressed = false
		elseif key:lower() == "a" then 
			ctrl.l = -45 
			aPressed = false
		elseif key:lower() == "d" then 
			ctrl.r = 45
			dPressed = false
		end 
	end) 
	mouse.KeyUp:connect(function(key) 
		if key:lower() == "w" then 
			ctrl.f = 0
			wPressed = true
			forwardAnim:Play()
		elseif key:lower() == "s" then 
			ctrl.b = 0
			sPressed = true
			forwardAnim:Play()
		elseif key:lower() == "a" then 
			ctrl.l = 0
			aPressed = true
			forwardAnim:Play()
		elseif key:lower() == "d" then 
			ctrl.r = 0
			dPressed = true
			forwardAnim:Play()
		end 
	end)
	Fly()

	while wait() do
		if flying then
			idleAnim:Stop()	
			if not wPressed then
				idleAnim:Play()
			end
			if not sPressed then
				idleAnim:Play()
			end
			if not aPressed then
				idleAnim:Play()
			end
			if not dPressed then
				idleAnim:Play()
			end
		else
			forwardAnim:Stop()	
			if wPressed then
				forwardAnim:Stop()
			end
			if sPressed then
				forwardAnim:Stop()
			end
			if aPressed then
				forwardAnim:Stop()
			end
			if dPressed then
				forwardAnim:Stop()
			end
		end
	end
end)

_G.Noclip = false
CreateTogButton("Noclip", "Player", (_G.Noclip), function()
	if _G.Noclip == true then
		_G.Noclip = false
	else
		_G.Noclip = true
	end

	while _G.Noclip == true and game:GetService("RunService").Heartbeat:Wait() do
		game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11) 
	end
end)

CreateRegButton("Teleport [Q]", "Player", function()
	plr = game.Players.LocalPlayer
	hum = plr.Character.HumanoidRootPart 
	mouse = plr:GetMouse()

	mouse.KeyDown:connect(function(key)
		if key == "q" then
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
			end
		end
	end)
end)


CreateRegButton("Flash", "Player", function()
	local snd = Instance.new("Sound",workspace)
	snd.PlaybackSpeed = 1.5
	snd.Volume = 1.2
	snd.SoundId = "rbxassetid://858154930"
	snd.PlayOnRemove = true
	snd:Destroy()


	local Animate = game.Players.LocalPlayer.Character.Animate
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	local e = Instance.new("Part", game.Workspace)
	e.Name = "Bolt"
	e.Size = Vector3.new(154.149, 7.976, 8.415)
	e.Material = "Neon"
	e.Orientation = Vector3.new(0, 0.1, 45)
	e.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
	e.BrickColor = BrickColor.new("Really red")
	e.Anchored = true
	e.CanCollide = false
	e.Transparency = 0.1
	e.Orientation = Vector3.new(0, 0.1, 45)
	wait(0.6)
	game.Players.LocalPlayer.Character.Pants.PantsTemplate = "rbxassetid://2151646445"
	game.Players.LocalPlayer.Character.Shirt.ShirtTemplate ="rbxassetid://576383249"
	game.Players.LocalPlayer.Character.Head.face.Texture="http://www.roblox.com/asset/?id=129003756"
	e.Transparency = 0.5
	e.Orientation = Vector3.new(0, 0.1, 45)
	wait(0.5)
	e.Transparency = 1
	e.Orientation = Vector3.new(0, 0.1, 45)

	local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
	humanoid:RemoveAccessories()
	wait(0.5)
	e:Destroy()
	flash = false
	mouse = game.Players.LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "SuperSpeed"
	tool.TextureId = "http://www.roblox.com/asset/?id=37786702"
	tool.ToolTip = "Hold To Use SuperSpeed."
	tool.Parent = game.Players.LocalPlayer.Backpack
	tool.Activated:Connect(function()
		flash = true
		game.Players.LocalPlayer.Character.Humanoid.Name = "Flash!"
		game.Players.LocalPlayer.Character.Flash.WalkSpeed = 520
	end)
	tool.Deactivated:Connect(function()
		flash = false
		game.Players.LocalPlayer.Character.Flash.Name = "Humanoid"
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end)
end)

CreateRegButton("Super Human [Z]", "Player", function()
	superhuman = false
	plr = game.Players.LocalPlayer
	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key == "z" and superhuman == false then
			superhuman = true
			game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
			game.Players.LocalPlayer.Character.Humz.WalkSpeed = 100
			game.Players.LocalPlayer.Character.Humz.JumpPower = 200
		elseif key == "z" and superhuman == true then
			superhuman = false
			game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
			game.Players.LocalPlayer.Character.Humz.JumpPower = 50
			game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
		end
	end)
end)


CreateRegButton("Force Reset", "Player", function()
	local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
			v:Destroy() 
		end
	end
	wait(1)
	repeat
		wait()
	until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	repeat
		wait()
	until game:GetService("Players").LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
end)


CreateRegButton("Headless", "Player", function()
	game.Players.LocalPlayer.Character.Head.Transparency = 1
	for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
		if (v:IsA("Decal")) then
			v:Destroy()
		end
	end
end)

CreateRegButton("Korblox", "Player", function()
	local ply = game.Players.LocalPlayer
	local chr = ply.Character
	chr.RightLowerLeg.MeshId = "902942093"
	chr.RightLowerLeg.Transparency = "1"
	chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
	chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
	chr.RightFoot.MeshId = "902942089"
	chr.RightFoot.Transparency = "1"
end)


_G.AntiBag = false
CreateTogButton("AntiBag", "Player", (_G.AntiBag), function()
	if _G.AntiBag == true then
		_G.AntiBag = false
	else
		_G.AntiBag = true
	end

	while _G.AntiBag == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Christmas_Sock"):Destroy() 
		end)
	end
end)

_G.AntiSlow = false
CreateTogButton("AntiSlow", "Player", (_G.AntiSlow), function()
	if _G.AntiSlow == true then
		_G.AntiSlow = false
	else
		_G.AntiSlow = true
	end

	while _G.AntiSlow == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			for i,v in pairs(game:GetService'Players'.LocalPlayer.Character.BodyEffects.Movement:GetChildren()) do
				if v:IsA("NumberValue") then
					v:Destroy()
				end
			end
		end)
	end
end)


_G.NoStomp = false
CreateTogButton("AntiStomp", "Player", (_G.NoStomp), function()
	if _G.NoStomp == true then
		_G.NoStomp = false
	else
		_G.NoStomp = true
	end

	while _G.NoStomp == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true then
				game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
				for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
						v:Destroy()
					end
				end
			end
		end)
	end
end)

_G.NoStompv2 = false
CreateTogButton("AntiStomp v2", "Player", (_G.NoStomp), function()
	if _G.NoStompv2 == true then
		_G.NoStompv2 = false
	else
		_G.NoStompv2 = true
	end

	while _G.NoStompv2 == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true then
				game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):Destroy()
			end
		end)
	end
end)


_G.Spinx = false
CreateTogButton("Spin", "Player", (_G.Spinx), function()
	if _G.Spinx == true then
		_G.Spinx = false
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Spinning"):Destroy()
	else
		_G.Spinx = true
		local spinSpeed = 50
		local speaker = game.Players.LocalPlayer
		for i,v in pairs(speaker.Character.HumanoidRootPart:GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end
		local Spin = Instance.new("BodyAngularVelocity", speaker.Character.HumanoidRootPart)
		Spin.Name = "Spinning"
		Spin.MaxTorque = Vector3.new(0, math.huge, 0)
		Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
	end
end)


CreateRegButton("No Pepperspray Effects", "Player", function()
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("PepperSpray"):Destroy()
	end)
end)    

CreateRegButton("No Snowball Effects", "Player", function()
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainScreenGui"):WaitForChild("SNOWBALLFRAME"):Destroy()
	end)
end)  

CreateRegButton("No Trail Effects", "Player", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.TrailEffects:Destroy()
end)  


CreateRegButton("Silent Block", "Player", function()
	game:GetService("Players").LocalPlayer.DataFolder.Information.Jail.Value = 0
	game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("K.O").Value = false
	wait()
	game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(15)
	wait()
	local Char = game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
	local Fold = Instance.new("Folder")
	Fold.Name = "FULLY_LOADED_CHAR"
	Fold.Parent = Char
	Char:WaitForChild("RagdollConstraints"):Destroy()
	local Val = Instance.new("BoolValue", Char)
	Val.Name = "RagdollConstraints"
	local ps = game:GetService("Players")
	local lp = ps.LocalPlayer
	local char = lp.Character
	repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")
	char.BodyEffects.Armor:Destroy()
	char.BodyEffects.Defense:Destroy()

	local Clone1 = Instance.new("IntValue")
	Clone1.Name = "Armor"
	Clone1.Parent = char.BodyEffects

	local Clone2 = Instance.new("NumberValue")
	Clone2.Name = "Defense"
	Clone2.Parent = char.BodyEffects
	wait()
	while wait() do
		for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
			if (v.Animation.AnimationId:match("rbxassetid://2788354405")) then
				v:Stop();
			end;
		end;
	end
	wait()
end)  

CreateRegButton("Invisble Taser", "Player", function()
	function delete()
		game:GetService("Workspace").Players[game.Players.LocalPlayer.Name]["[Taser]"].Handle.Attachment:Destroy()
		game:GetService("Workspace").Players[game.Players.LocalPlayer.Name]["[Taser]"].Handle.Mesh:Destroy()
		--game:GetService("Workspace").Players[game.Players.LocalPlayer.Name]["[Taser]"].Handle.Sound:Destroy()
	end
	delete()
end)  

CreateRegButton("Pumpkin Grenade", "Player", function()
	local function work()
		local e = game:GetService("Workspace").Ignored.Handle.Mesh 
		e.MeshId = 'rbxassetid://430748458'
		e.Scale = Vector3.new(0.01, 0.01, 0.01)
		e.TextureId = 'http://www.roblox.com/asset/?id=430751682'
	end

	function char()
		for i,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
			if v.Name == "[Grenade]" and v:IsA("Tool") then
				v.Handle.Mesh.MeshId = 'rbxassetid://430748458'
				v.Handle.Mesh.Scale = Vector3.new(0.01, 0.01, 0.01)
				v.Handle.Mesh.TextureId = 'http://www.roblox.com/asset/?id=430751682'
			end
		end
	end

	local function hand()
		for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v.Name == "[Grenade]" and v:IsA("Tool") then
				v.Handle.Mesh.MeshId = 'rbxassetid://430748458'
				v.Handle.Mesh.Scale = Vector3.new(0.01, 0.01, 0.01)
				v.Handle.Mesh.TextureId = 'http://www.roblox.com/asset/?id=430751682'
			end
		end
	end



	while wait() do
		pcall(function()
			hand()
			char()
			work()
		end)
	end
end)  

CreateValueButton("FOV Changer", "Player", "FOV Here", function(NumberInput)
	game:GetService("Workspace").CurrentCamera.FieldOfView = NumberInput
end)


_G.MuteBoxes = false
CreateTogButton("Mute Boomboxes", "Player", (_G.MuteBoxes), function()
	if _G.MuteBoxes == true then
		_G.MuteBoxes = false
	else
		_G.MuteBoxes = true
	end

	pcall(function()
		for i, v in pairs(game:GetService("Workspace").Players:GetChildren()) do
			if _G.MuteBoxes == true and v:FindFirstChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND") then
				v:FindFirstChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND"):Destroy()
			end
		end
	end)

	pcall(function()
		game:GetService("Workspace").Players.ChildAdded:Connect(function(AddedPlr)
			AddedPlr.LowerTorso.ChildAdded:Connect(function(AddedObj)
				if _G.MuteBoxes == true and AddedObj.Name == "BOOMBOXSOUND" then
					AddedObj:Destroy() 
				end
			end)
		end)
	end)
end)


CreateRegButton("Infinite Jump", "Player", function()
	local Player = game:GetService"Players".LocalPlayer;
	local UIS = game:GetService'UserInputService';

	_G.JumpHeight = 50;

	function Action(Object, Function)
		if Object ~= nil then
			Function(Object);
		end
	end

	UIS.InputBegan:connect(function(UserInput)
		if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
			Action(Player.Character.Humanoid, function(self)
				if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
					Action(self.Parent.HumanoidRootPart, function(self)
						self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
					end)
				end
			end)
		end
	end)
end)	

CreateRegButton("Anonymous", "Player", function()
	pcall(function()
		game.Players.LocalPlayer.Character.Shirt:Destroy()
		game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.RightUpperLeg.Size = Vector3.new(0,0,0)
		game.Players.LocalPlayer.Character.RightUpperLeg.Massless = true
		game.Players.LocalPlayer.Character.RightUpperLeg.CanCollide = false

		heazd = true

		while heazd == true do 
			pcall(function()  
				game.Players.LocalPlayer.Character.RightUpperLeg.RightHipRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.RightUpperLeg.CFrame = CFrame.new(0, 100000.4736328125, 0)
			end)
			wait()
		end
	end)
	wait(0.10)
	pcall(function()
		game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
		game.Players.LocalPlayer.Character.Pants:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.LeftUpperLeg.Size = Vector3.new(0,0,0)
		game.Players.LocalPlayer.Character.LeftUpperLeg.Massless = true
		game.Players.LocalPlayer.Character.LeftUpperLeg.CanCollide = false

		heazd = true

		while heazd == true do 
			pcall(function()  
				game.Players.LocalPlayer.Character.LeftUpperLeg.LeftHipRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.LeftUpperLeg.CFrame = CFrame.new(0, 100000.4736328125, 0)
			end)
			wait()
		end
	end)
	wait(0.10)
	pcall(function()
		game.Players.LocalPlayer.Character.Head.Neck:Destroy()
		game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
		game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0,0)
		game.Players.LocalPlayer.Character.Head.Massless = true
		game.Players.LocalPlayer.Character.Head.CanCollide = false

		heazd = true

		while heazd == true do 
			pcall(function()  
				game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
				game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000.4736328125, 0)
			end)
			wait()
		end
	end)
end)	



CreateRegButton("Free Cam [B]", "Player", function()
	local pi    = math.pi
	local abs   = math.abs
	local clamp = math.clamp
	local exp   = math.exp
	local rad   = math.rad
	local sign  = math.sign
	local sqrt  = math.sqrt
	local tan   = math.tan

	local ContextActionService = game:GetService("ContextActionService")
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local StarterGui = game:GetService("StarterGui")
	local UserInputService = game:GetService("UserInputService")
	local Workspace = game:GetService("Workspace")

	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end

	local Camera = Workspace.CurrentCamera
	Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
		local newCamera = Workspace.CurrentCamera
		if newCamera then
			Camera = newCamera
		end
	end)

	------------------------------------------------------------------------

	local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
	local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
	local FREECAM_MACRO_KB = Enum.KeyCode.B

	local NAV_GAIN = Vector3.new(1, 1, 1)*64
	local PAN_GAIN = Vector2.new(0.75, 1)*8
	local FOV_GAIN = 300

	local PITCH_LIMIT = rad(90)

	local VEL_STIFFNESS = 1.5
	local PAN_STIFFNESS = 1.0
	local FOV_STIFFNESS = 4.0

	------------------------------------------------------------------------

	local Spring = {} do
		Spring.__index = Spring

		function Spring.new(freq, pos)
			local self = setmetatable({}, Spring)
			self.f = freq
			self.p = pos
			self.v = pos*0
			return self
		end

		function Spring:Update(dt, goal)
			local f = self.f*2*pi
			local p0 = self.p
			local v0 = self.v

			local offset = goal - p0
			local decay = exp(-f*dt)

			local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
			local v1 = (f*dt*(offset*f - v0) + v0)*decay

			self.p = p1
			self.v = v1

			return p1
		end

		function Spring:Reset(pos)
			self.p = pos
			self.v = pos*0
		end
	end

	------------------------------------------------------------------------

	local cameraPos = Vector3.new()
	local cameraRot = Vector2.new()
	local cameraFov = 0

	local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
	local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
	local fovSpring = Spring.new(FOV_STIFFNESS, 0)

	------------------------------------------------------------------------

	local Input = {} do
		local thumbstickCurve do
			local K_CURVATURE = 2.0
			local K_DEADZONE = 0.15

			local function fCurve(x)
				return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
			end

			local function fDeadzone(x)
				return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
			end

			function thumbstickCurve(x)
				return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
			end
		end

		local gamepad = {
			ButtonX = 0,
			ButtonY = 0,
			DPadDown = 0,
			DPadUp = 0,
			ButtonL2 = 0,
			ButtonR2 = 0,
			Thumbstick1 = Vector2.new(),
			Thumbstick2 = Vector2.new(),
		}

		local keyboard = {
			W = 0,
			A = 0,
			S = 0,
			D = 0,
			E = 0,
			Q = 0,
			U = 0,
			H = 0,
			J = 0,
			K = 0,
			I = 0,
			Y = 0,
			Up = 0,
			Down = 0,
			LeftShift = 0,
			RightShift = 0,
		}

		local mouse = {
			Delta = Vector2.new(),
			MouseWheel = 0,
		}

		local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
		local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
		local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
		local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
		local FOV_WHEEL_SPEED    = 1.0
		local FOV_GAMEPAD_SPEED  = 0.25
		local NAV_ADJ_SPEED      = 0.75
		local NAV_SHIFT_MUL      = 0.25

		local navSpeed = 1

		function Input.Vel(dt)
			navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

			local kGamepad = Vector3.new(
				thumbstickCurve(gamepad.Thumbstick1.x),
				thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
				thumbstickCurve(-gamepad.Thumbstick1.y)
			)*NAV_GAMEPAD_SPEED

			local kKeyboard = Vector3.new(
				keyboard.D - keyboard.A + keyboard.K - keyboard.H,
				keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
				keyboard.S - keyboard.W + keyboard.J - keyboard.U
			)*NAV_KEYBOARD_SPEED

			local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

			return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
		end

		function Input.Pan(dt)
			local kGamepad = Vector2.new(
				thumbstickCurve(gamepad.Thumbstick2.y),
				thumbstickCurve(-gamepad.Thumbstick2.x)
			)*PAN_GAMEPAD_SPEED
			local kMouse = mouse.Delta*PAN_MOUSE_SPEED
			mouse.Delta = Vector2.new()
			return kGamepad + kMouse
		end

		function Input.Fov(dt)
			local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
			local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
			mouse.MouseWheel = 0
			return kGamepad + kMouse
		end

		do
			local function Keypress(action, state, input)
				keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
				return Enum.ContextActionResult.Sink
			end

			local function GpButton(action, state, input)
				gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
				return Enum.ContextActionResult.Sink
			end

			local function MousePan(action, state, input)
				local delta = input.Delta
				mouse.Delta = Vector2.new(-delta.y, -delta.x)
				return Enum.ContextActionResult.Sink
			end

			local function Thumb(action, state, input)
				gamepad[input.KeyCode.Name] = input.Position
				return Enum.ContextActionResult.Sink
			end

			local function Trigger(action, state, input)
				gamepad[input.KeyCode.Name] = input.Position.z
				return Enum.ContextActionResult.Sink
			end

			local function MouseWheel(action, state, input)
				mouse[input.UserInputType.Name] = -input.Position.z
				return Enum.ContextActionResult.Sink
			end

			local function Zero(t)
				for k, v in pairs(t) do
					t[k] = v*0
				end
			end

			function Input.StartCapture()
				ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
					Enum.KeyCode.W, Enum.KeyCode.U,
					Enum.KeyCode.A, Enum.KeyCode.H,
					Enum.KeyCode.S, Enum.KeyCode.J,
					Enum.KeyCode.D, Enum.KeyCode.K,
					Enum.KeyCode.E, Enum.KeyCode.I,
					Enum.KeyCode.Q, Enum.KeyCode.Y,
					Enum.KeyCode.Up, Enum.KeyCode.Down
				)
				ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
				ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
				ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
				ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
				ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
			end

			function Input.StopCapture()
				navSpeed = 1
				Zero(gamepad)
				Zero(keyboard)
				Zero(mouse)
				ContextActionService:UnbindAction("FreecamKeyboard")
				ContextActionService:UnbindAction("FreecamMousePan")
				ContextActionService:UnbindAction("FreecamMouseWheel")
				ContextActionService:UnbindAction("FreecamGamepadButton")
				ContextActionService:UnbindAction("FreecamGamepadTrigger")
				ContextActionService:UnbindAction("FreecamGamepadThumbstick")
			end
		end
	end

	local function GetFocusDistance(cameraFrame)
		local znear = 0.1
		local viewport = Camera.ViewportSize
		local projy = 2*tan(cameraFov/2)
		local projx = viewport.x/viewport.y*projy
		local fx = cameraFrame.rightVector
		local fy = cameraFrame.upVector
		local fz = cameraFrame.lookVector

		local minVect = Vector3.new()
		local minDist = 512

		for x = 0, 1, 0.5 do
			for y = 0, 1, 0.5 do
				local cx = (x - 0.5)*projx
				local cy = (y - 0.5)*projy
				local offset = fx*cx - fy*cy + fz
				local origin = cameraFrame.p + offset*znear
				local _, hit = Workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
				local dist = (hit - origin).magnitude
				if minDist > dist then
					minDist = dist
					minVect = offset.unit
				end
			end
		end

		return fz:Dot(minVect)*minDist
	end

	------------------------------------------------------------------------

	local function StepFreecam(dt)
		local vel = velSpring:Update(dt, Input.Vel(dt))
		local pan = panSpring:Update(dt, Input.Pan(dt))
		local fov = fovSpring:Update(dt, Input.Fov(dt))

		local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

		cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
		cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
		cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

		local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
		cameraPos = cameraCFrame.p

		Camera.CFrame = cameraCFrame
		Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
		Camera.FieldOfView = cameraFov
	end

	------------------------------------------------------------------------

	local PlayerState = {} do
		local mouseBehavior
		local mouseIconEnabled
		local cameraType
		local cameraFocus
		local cameraCFrame
		local cameraFieldOfView
		local screenGuis = {}
		local coreGuis = {
			Backpack = true,
			Chat = true,
			Health = true,
			PlayerList = true,
		}
		local setCores = {
			BadgesNotificationsActive = true,
			PointsNotificationsActive = true,
		}

		-- Save state and set up for freecam
		function PlayerState.Push()
			for name in pairs(coreGuis) do
				coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
			end
			for name in pairs(setCores) do
				setCores[name] = StarterGui:GetCore(name)
				StarterGui:SetCore(name, false)
			end
			local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
			if playergui then
				for _, gui in pairs(playergui:GetChildren()) do
					if gui:IsA("ScreenGui") and gui.Enabled then
						screenGuis[#screenGuis + 1] = gui
						gui.Enabled = false
					end
				end
			end

			cameraFieldOfView = Camera.FieldOfView
			Camera.FieldOfView = 70

			cameraType = Camera.CameraType
			Camera.CameraType = Enum.CameraType.Custom

			cameraCFrame = Camera.CFrame
			cameraFocus = Camera.Focus

			mouseIconEnabled = UserInputService.MouseIconEnabled
			UserInputService.MouseIconEnabled = false

			mouseBehavior = UserInputService.MouseBehavior
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		end

		-- Restore state
		function PlayerState.Pop()
			for name, isEnabled in pairs(coreGuis) do
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
			end
			for name, isEnabled in pairs(setCores) do
				StarterGui:SetCore(name, isEnabled)
			end
			for _, gui in pairs(screenGuis) do
				if gui.Parent then
					gui.Enabled = true
				end
			end

			Camera.FieldOfView = cameraFieldOfView
			cameraFieldOfView = nil

			Camera.CameraType = cameraType
			cameraType = nil

			Camera.CFrame = cameraCFrame
			cameraCFrame = nil

			Camera.Focus = cameraFocus
			cameraFocus = nil

			UserInputService.MouseIconEnabled = mouseIconEnabled
			mouseIconEnabled = nil

			UserInputService.MouseBehavior = mouseBehavior
			mouseBehavior = nil
		end
	end

	local function StartFreecam()
		local cameraCFrame = Camera.CFrame
		cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
		cameraPos = cameraCFrame.p
		cameraFov = Camera.FieldOfView

		velSpring:Reset(Vector3.new())
		panSpring:Reset(Vector2.new())
		fovSpring:Reset(0)

		PlayerState.Push()
		RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
		Input.StartCapture()
	end

	local function StopFreecam()
		Input.StopCapture()
		RunService:UnbindFromRenderStep("Freecam")
		PlayerState.Pop()
	end

	------------------------------------------------------------------------

	do
		local enabled = false

		local function ToggleFreecam()
			if enabled then
				StopFreecam()
			else
				StartFreecam()
			end
			enabled = not enabled
		end

		local function HandleActivationInput(action, state, input)
			if state == Enum.UserInputState.Begin then
				if input.KeyCode == FREECAM_MACRO_KB then
					ToggleFreecam()
				end
			end
			return Enum.ContextActionResult.Pass
		end

		ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB)
	end
end)


CreateRegButton("Invisble Boombox", "Player", function()
	game:GetService("Players").LocalPlayer.Character:FindFirstChild("BOOMBOXHANDLE"):Destroy()
end)

CreateRegButton("Low GFX", "Player", function()
	for _,v in pairs(workspace:GetDescendants()) do
		if v.ClassName == "Part"
			or v.ClassName == "SpawnLocation"
			or v.ClassName == "WedgePart"
			or v.ClassName == "Terrain"
			or v.ClassName == "MeshPart" then
			v.Material = "Plastic"
			v.CastShadow = false
		elseif v:IsA("Decal") then
			if v.Name ~= "face" then
				v:Destroy()
			end
		end
	end
	wait()
end)

CreateRegButton("Boneless", "Player", function()
	local Stuff = {
		"RightHand",
		"LeftHand",
		"RightUpperArm",
		"RightLowerArm",
		"LeftUpperArm",
		"LeftLowerArm",
		"Head",
		"UpperTorso"
	}

	pcall(function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			for z, BreakingStuff in ipairs(Stuff) do
				if v.Name == BreakingStuff then
					if v:FindFirstChildOfClass("Motor6D") then
						local Weld = v:FindFirstChildOfClass("Motor6D")
						Weld:Destroy()
					end
				end
			end
		end
	end)
end)

CreateRegButton("Break Neck", "Player", function()
	a = a
	a = va
	a = a.Character
	a = a.Head
	b = a
	a = a.BreakJoints
	a(b)
end)

CreateRegButton("Suicide [FE]", "Player", function()
	a = a
	a = game
	a = a.ReplicatedStorage
	a = a.DefaultChatSystemChatEvents
	a = a.SayMessageRequest
	b = a
	a = a.FireServer
	c = "Goodbye."
	d = "All"
	a(b, c, d)
	a = wait
	b = 1
	a(b)
	a = game
	a = a.Players
	a = a.LocalPlayer
	a = a.Character
	a = a.UpperTorso
	b = a
	a = a.Destroy
	a(b)
	a = game
	a = a.Players
	a = a.LocalPlayer
	a = a.Character
	a = a.Head
	b = a
	a = a.Destroy
	a(b)
	a = game
	a = a.Players
	a = a.LocalPlayer
	a = a.Character
	a = a.RightUpperLeg
	b = a
	a = a.Destroy
	a(b)
	a = game
	a = a.Players
	a = a.LocalPlayer
	a = a.Character
	a = a.RightLeg
	b = a
	a = a.Destroy
	a(b)
	a = game
	a = a.Players
	a = a.LocalPlayer
	a = a.Character
	a = a.LeftUpperLeg
	b = a
	a = a.Destroy
	a(b)
	a = game
	a = a.Players
	a = a.LocalPlayer
	a = a.Character
	a = a.LeftLeg
	b = a
	a = a.Destroy
	a(b)
end)


_G.AutoBlock = false
CreateTogButton("AutoBlock", "Player", (_G.AutoBlock), function()
	if _G.AutoBlock == true then
		_G.AutoBlock = false
	else
		_G.AutoBlock = true
	end

	if _G.AutoBlock == true then

		for i, v in pairs(game:GetService("Workspace").Players:GetChildren()) do
			spawn(function()
				v:WaitForChild("BodyEffects"):WaitForChild("Attacking").Changed:Connect(function()
					if _G.AutoBlock == true and v:WaitForChild("BodyEffects"):WaitForChild("Attacking").Value == true and (v:WaitForChild("HumanoidRootPart").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
						repeat
							game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", true)
							wait()
						until v:WaitForChild("BodyEffects"):WaitForChild("Attacking").Value ~= true
						game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", false)
					end
				end)
			end)
		end

		game:GetService("Workspace").Players.ChildAdded:Connect(function(Added)
			Added:WaitForChild("BodyEffects"):WaitForChild("Attacking").Changed:Connect(function()
				if _G.AutoBlock == true and Added:WaitForChild("BodyEffects"):WaitForChild("Attacking").Value == true and (Added:WaitForChild("HumanoidRootPart").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
					repeat
						game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", true)
						wait()
					until Added:WaitForChild("BodyEffects"):WaitForChild("Attacking").Value ~= true
					game:GetService("ReplicatedStorage").MainEvent:FireServer("Block", false)
				end
			end)
		end)

	end
end)


CreateRegButton("No Bank Sirens", "Player", function()
	pcall(function()
		game:GetService("Workspace").Ignored.Siren.Siren:Destroy()
	end)
end)

CreateRegButton("Remove Air Sounds", "Player", function()
	pcall(function()
		game:GetService("Workspace").AirSounds:Destroy()
	end)
end)

_G.AutoStand = false
CreateTogButton("Anti-Grab", "Player", (_G.AutoStand), function()
	if _G.AutoStand == true then
		_G.AutoStand = false
	else
		_G.AutoStand = true
	end

	while _G.AutoStand == true and game:GetService("RunService").Heartbeat:Wait() do
		local LS = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT"):Destroy()
			wait(.5)
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanid").PlatformStand = false
		end
	end
end)

CreateRegButton("Skinny", "Player", function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyWidthScale").Value = 0.5
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyDepthScale").Value = 0.5
end)

CreateRegButton("Normal", "Player", function()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyWidthScale").Value = 1
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyDepthScale").Value = 1
end)


CreateRegButton("Server Crash", "Player", function()
	local player = game.Players.LocalPlayer
	local MainEvent = game.ReplicatedStorage.MainEvent


	if player.DataFolder.Currency.Value >= 765 then 
		-- Bypass Destroy
		game:GetService("Players").LocalPlayer.DataFolder.Information.Jail.Value = 0
		game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("K.O").Value = false
		wait()
		game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(15)
		wait()
		local Char = game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
		local Fold = Instance.new("Folder")
		Fold.Name = "FULLY_LOADED_CHAR"
		Fold.Parent = Char
		Char:WaitForChild("RagdollConstraints"):Destroy()
		local Val = Instance.new("BoolValue", Char)
		Val.Name = "RagdollConstraints"
		repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")

		-- Hide Method

		coroutine.resume(coroutine.create(function()
			game:GetService("RunService").RenderStepped:Connect(function()
				game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Enabled = false
				game:GetService('Players').LocalPlayer.PlayerGui.Framework.CurrencySound.Volume = 0
				workspace.CurrentCamera.CameraType = Enum.CameraType.Fixed
				workspace.CurrentCamera.CFrame = CFrame.new(0, 999, 0)
				game:GetService("CoreGui").RobloxGui.Backpack:Destroy()
			end)
		end))  

		-- Godblock
		game:GetService("Players").LocalPlayer.Character.BodyEffects.Defense:Destroy()
		Instance.new("NumberValue").Name = "Defense"
		Instance.new("NumberValue").Parent = game:GetService("Players").LocalPlayer.Character.BodyEffects

		-- Main
		local backpack = game.Players.LocalPlayer.Backpack
		local a = 1

		local found = backpack:FindFirstChild("[Lemonade]")
		game:GetService("RunService").Heartbeat:Connect(function()
			local plr = game:GetService'Players'.LocalPlayer
			local MAINITEM = '[Lemonade] - $3'
			local ITEM = game.Workspace.Ignored.Shop[MAINITEM]
			local datplace = plr.Character.HumanoidRootPart.Position

			if not player.Character.BodyEffects:FindFirstChild('Block') then
				MainEvent:FireServer('Block', player.Name)
			end				

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ITEM.Head.CFrame + Vector3.new(0, 3, 0)
			wait(0.5)
			fireclickdetector(game.Workspace.Ignored.Shop[MAINITEM].ClickDetector)
			fireclickdetector(game.Workspace.Ignored.Shop[MAINITEM].ClickDetector)
			for i,v in pairs(backpack:GetChildren()) do
				if v.Name == "[Lemonade]" then
					v.Parent = game.Players.LocalPlayer.Character
					a = a+1
					if a == 250 then
						for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v:Destroy()
							end
						end
					end
				end
			end
		end)
	end
end)



_G.AdminDoor = false
_G.Wait = false
CreateTogButton("Admin Base", "Player", (_G.AdminDoor), function()
	if _G.AdminDoor == true and _G.Wait == false then
		_G.AdminDoor = false
		_G.Wait = true
		local AdminDoor = game:GetService("Workspace").MAP["EVIL_SPECIAL"]
		local TweenService = game:GetService("TweenService")

		local tweenInfo = TweenInfo.new(1.5)

		local TweenGoal = {}
		TweenGoal.Position = AdminDoor.Position + Vector3.new(0, -25, 0)

		local Tween = TweenService:Create(AdminDoor, tweenInfo, TweenGoal)
		AdminDoor.Sound:Play()
		Tween:Play()
		wait(1.5)
		_G.Wait = false
	elseif _G.AdminDoor == false and _G.Wait == false then
		_G.AdminDoor = true
		_G.Wait = true
		local AdminDoor = game:GetService("Workspace").MAP["EVIL_SPECIAL"]
		local TweenService = game:GetService("TweenService")

		local tweenInfo = TweenInfo.new(1.5)

		local TweenGoal = {}
		TweenGoal.Position = AdminDoor.Position + Vector3.new(0, 25, 0)

		local Tween = TweenService:Create(AdminDoor, tweenInfo, TweenGoal)
		AdminDoor.Sound:Play()
		Tween:Play()
		wait(1.5)
		_G.Wait = false
	end
end)


_G.SewerBridge = false
_G.Wait3 = false
CreateTogButton("Bridge", "Player", (_G.SewerBridge), function()
	if _G.SewerBridge == true and _G.Wait3 == false then
		_G.Wait3 = true
		local Bridge = game:GetService("Workspace").MAP["SPECIAL_BRIDGE"]

		local BridgeTween = {}
		BridgeTween.Position = Bridge.Position + Vector3.new(25, 0, 0)
		BridgeTween.Size = Bridge.Size + Vector3.new(-40, 0, 0)
		local BridgeInfo = TweenInfo.new(1.5)
		local Tween = game:GetService("TweenService"):Create(Bridge, BridgeInfo, BridgeTween)
		Tween:Play()

		wait(1.5)
		_G.Wait3 = false
		_G.SewerBridge = false
	elseif _G.SewerBridge == false and _G.Wait3 == false then
		_G.Wait3 = true
		local Bridge = game:GetService("Workspace").MAP["SPECIAL_BRIDGE"]

		local BridgeTween = {}
		BridgeTween.Position = Bridge.Position + Vector3.new(-25, 0, 0)
		BridgeTween.Size = Bridge.Size + Vector3.new(40, 0, 0)
		local BridgeInfo = TweenInfo.new(1.5)
		local Tween = game:GetService("TweenService"):Create(Bridge, BridgeInfo, BridgeTween)
		Tween:Play()

		wait(1.5)
		_G.Wait3 = false
		_G.SewerBridge = true
	end
end)


CreateSearchButton("Bring Player", "Player", function(InputtedText)
	local LS = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	for i, v in pairs(GetPlayer(InputtedText)) do
		repeat
			if game:GetService("Players")[v].Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat")) 
				end
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Activate()
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
				game:GetService("RunService").Heartbeat:Wait()
			end
		until game:GetService("Players")[v].Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true
		repeat
			if not game:GetService("Players")[v].Character:FindFirstChild("GRABBING_CONSTRAINT") then
				game:GetService("ReplicatedStorage").MainEvent:FireServer("Grabbing", false)  
			end
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players")[v].Character.UpperTorso.Position + Vector3.new(0, 3, 0))
			wait(.2)
		until game:GetService("Players")[v].Character:FindFirstChild("GRABBING_CONSTRAINT") or game:GetService("Players")[v].Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false
		wait()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
		repeat
			wait()
		until game:GetService("Players")[v].Character.BodyEffects:FindFirstChild("K.O").Value == false and not game:GetService("Players")[v].Character:FindFirstChild("GRABBING_CONSTRAINT") or game:GetService("Players")[v].Character.Parent == nil
	end
end)


CreateRegButton("Invisble Mask", "Player", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v.Name == "In-gameMask" then
			v.Handle:Destroy() 
		end
	end
end)  

CreateRegButton("Mask Names", "Player", function()
	pcall(function()
		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Character then
				if v.Character:FindFirstChild("In-gameMask") then
					for i, v2 in pairs(v.Character:FindFirstChild("In-gameMask"):GetChildren()) do
						if v2:IsA("Model") then
							v2.Name = v.Name 
						end
					end
				end
			end
		end
	end)
end)  

CreateRegButton("Disable Seats", "Player", function()
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v:IsA("Seat") then
			v:Destroy() 
		end
	end
end)


CreateRegButton("Wall Hack", "Player", function()
	pcall(function()
		game.Players.LocalPlayer.DevCameraOcclusionMode = Enum.DevCameraOcclusionMode.Invisicam
	end)
end)  

_G.Zoom = false
CreateTogButton("Zoom", "Player", (_G.Zoom), function()
	if _G.Zoom == true then
		_G.Zoom = false
		game.Players.LocalPlayer.CameraMaxZoomDistance = 20
	else
		_G.Zoom = true
		game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
	end
end)


_G.Fog = false
CreateTogButton("Fog", "Player", (_G.Fog), function()
	if _G.Fog == true then
		_G.Fog = false
		game.Lighting.FogEnd = 550
	else
		_G.Fog = true
		game.Lighting.FogEnd = math.huge
	end
end)


_G.AutoStomp = false
CreateTogButton("AutoStomp", "Player", (_G.AutoStomp), function()
	if _G.AutoStomp == false then
		_G.AutoStomp = true
	else
		_G.AutoStomp = false
	end
	while _G.AutoStomp == true and game:GetService("RunService").Stepped:Wait() do
		pcall(function()
			game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
		end)
	end
end)

_G.RespawnDeath = false
CreateTogButton("Respawn Where Last Died", "Player", (_G.RespawnDeath), function()
	if _G.RespawnDeath == true then
		_G.RespawnDeath = false
	else
		_G.RespawnDeath = true
	end

	while _G.RespawnDeath == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Dead").Value == true then
				local LS = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
				repeat
					wait()
				until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Dead").Value == false
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = LS
			end
		end)
	end
end)

CreateRegButton("Bike Fly", "Player", function()
	local speed = 20
	local old
	local Plr = game.Players.LocalPlayer
	local wheels = {}
	local control = {q=false,e=false,w=false,a=false,s=false,d=false}
	local Mouse = Plr:GetMouse()

	Mouse.KeyDown:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=true
		end
	end)

	Mouse.KeyUp:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=false
		end
	end)

	while game.RunService.Stepped:wait() do
		local seat = (Plr.Character or Plr.CharacterAdded:wait()):WaitForChild("Humanoid").SeatPart
		if Plr.PlayerGui:FindFirstChild("MainScreenGui") and Plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and Plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
			Plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
		else
			local c = Plr.PlayerGui.MainScreenGui.Bar.HP
			local g = c:Clone()
			g.Name = "Speed"
			g.Position = UDim2.new(0.5, 0, 1, -120)
			g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
			g.Picture.Image.Image = "rbxassetid://181035717"
			g.TextLabel.Text = "Speed"
			g.Parent = c.Parent
		end
		if seat ~= nil and seat:IsDescendantOf(game.Workspace.Vehicles) then
			if seat ~= old then
				if old then
					old.Vel:Destroy()
					old.Gyro:Destroy()
				end
				old = seat
				for i = 1, 2 do
					if wheels[i] then
						wheels[i][2].Parent = wheels[i][1]
					end
					local wheel = seat.Parent.Wheel
					wheels[i] = {seat.Parent, wheel}
					wheel:remove()
				end
				local gyro = Instance.new("BodyGyro", seat)
				gyro.Name = "Gyro"
				local pos = Instance.new("BodyVelocity", seat)
				pos.Name = "Vel"
				gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
			else 
				seat.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				local vel = CFrame.new(0, 0, 0)
				if control.w then
					vel = vel * CFrame.new(0, 0, -speed)
				end
				if control.s then
					vel = vel * CFrame.new(0, 0, speed)
				end
				if control.a then
					vel = vel * CFrame.new(-speed, 0, 0)
				end
				if control.d then
					vel = vel * CFrame.new(speed, 0, 0)
				end
				seat.Vel.Velocity = (seat.CFrame*vel).p - seat.CFrame.p
			end
		end
		if control.e and speed<100 then
			speed = speed + 1
		end
		if control.q and speed > 0 then
			speed = speed - 1
		end
	end
end)  


CreateValueButton("Speed Changer", "Player", "Speed Here", function(Value)

	if Value == nil then
		Value = 16 
	end

	local d = {}
	local e = {}
	local g = {}
	local h = {}
	local j = {}
	local k = {}
	local function l()
		local m = 3
		local n = checkcaller
		local o = getrawmetatable(game)
		setreadonly(o, false)
		local p = o.__index
		local q = o.__newindex
		local r = o.__namecall
		o.__index =
			newcclosure(
				function(s, t)
				if n() then
					return p(s, t)
				end
				if d[s] and d[s][t] then
					local u = d[s][t]
					if u["IsCallback"] == true then
						return u["Value"](s)
					else
						return u["Value"]
					end
				end
				if g[t] then
					local v = g[t]
					if v["IsCallback"] == true then
						return v["Value"](s)
					else
						return v["Value"]
					end
				end
				if j[s] and j[s][t] then
					return k[s][t]
				end
				return p(s, t)
			end
			)
		o.__newindex =
			newcclosure(
				function(w, x, y)
				if n() then
					return q(w, x, y)
				end
				if e[w] and e[w][x] then
					local z = e[w][x]
					if z["Callback"] == nil then
						return
					else
						z["Callback"](w, y)
						return
					end
				end
				if h[x] then
					local A = h[x]
					if A["Callback"] == nil then
						return
					else
						A["Callback"](w, y)
						return
					end
				end
				if j[w] and j[w][x] then
					local B = j[w][x]
					if type(y) ~= B["Type"] then
						error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
					end
					k[w][x] = y
					return
				end
				return q(w, x, y)
			end
			)
		local D = game.Players.LocalPlayer.Character.Humanoid
		local function A(_)
			local a0 = p(D, _)
			local a1 = type(a0)
			if not j[D] then
				j[D] = {}
			end
			if not k[D] then
				k[D] = {}
			end
			j[D][_] = {Type = a1}
			k[D][_] = p(D, _)
			local a2 = function()
				j[D][_] = nil
				k[D][_] = nil
			end
			return {remove = a2, Remove = a2}
		end
		A("WalkSpeed")
		A("JumpPower")
	end
	l()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

CreateValueButton("Jump Power Changer", "Player", "Jump Power Here", function(Value)

	if Value == nil then
		Value = 50 
	end

	local d = {}
	local e = {}
	local g = {}
	local h = {}
	local j = {}
	local k = {}
	local function l()
		local m = 3
		local n = checkcaller
		local o = getrawmetatable(game)
		setreadonly(o, false)
		local p = o.__index
		local q = o.__newindex
		local r = o.__namecall
		o.__index =
			newcclosure(
				function(s, t)
				if n() then
					return p(s, t)
				end
				if d[s] and d[s][t] then
					local u = d[s][t]
					if u["IsCallback"] == true then
						return u["Value"](s)
					else
						return u["Value"]
					end
				end
				if g[t] then
					local v = g[t]
					if v["IsCallback"] == true then
						return v["Value"](s)
					else
						return v["Value"]
					end
				end
				if j[s] and j[s][t] then
					return k[s][t]
				end
				return p(s, t)
			end
			)
		o.__newindex =
			newcclosure(
				function(w, x, y)
				if n() then
					return q(w, x, y)
				end
				if e[w] and e[w][x] then
					local z = e[w][x]
					if z["Callback"] == nil then
						return
					else
						z["Callback"](w, y)
						return
					end
				end
				if h[x] then
					local A = h[x]
					if A["Callback"] == nil then
						return
					else
						A["Callback"](w, y)
						return
					end
				end
				if j[w] and j[w][x] then
					local B = j[w][x]
					if type(y) ~= B["Type"] then
						error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
					end
					k[w][x] = y
					return
				end
				return q(w, x, y)
			end
			)
		local D = game.Players.LocalPlayer.Character.Humanoid
		local function A(_)
			local a0 = p(D, _)
			local a1 = type(a0)
			if not j[D] then
				j[D] = {}
			end
			if not k[D] then
				k[D] = {}
			end
			j[D][_] = {Type = a1}
			k[D][_] = p(D, _)
			local a2 = function()
				j[D][_] = nil
				k[D][_] = nil
			end
			return {remove = a2, Remove = a2}
		end
		A("WalkSpeed")
		A("JumpPower")
	end
	l()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)


CreateRegButton("Teleport To Random", "Player", function()
	local Players = game:GetService("Players"):GetPlayers()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Players[math.random(1, #Players)].Character.HumanoidRootPart.CFrame 
end)

_G.AutoHighArmor = false
CreateTogButton("Auto Armor", "Player", (_G.AutoArmor), function()
	if _G.AutoHighArmor == true then
		_G.AutoHighArmor = false
	else
		_G.AutoHighArmor = true
	end

	while _G.AutoHighArmor == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value <= 0 then
				local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
				repeat
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].Head.CFrame
					fireclickdetector(game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
					game:GetService("RunService").Heartbeat:Wait()
				until game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor").Value >= 50
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
			end
		end)
	end
end)

CreateRegButton("Super FlashLight", "Player", function()
	local FlashLight = game:GetService("Workspace").Ignored.Shop["[Flashlight] - $10"]
	local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	t = 0
	repeat
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = FlashLight.Head.CFrame * CFrame.new(0, -5, 0)
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
		fireclickdetector(FlashLight.ClickDetector)
		for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "[Flashlight]" then
				t = t + 1 
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
		game:GetService("RunService").Heartbeat:Wait()
	until t >= 50
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
	wait(.2)
	for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
		if v.Name == "[Flashlight]" then
			v:Activate() 
		end
	end
end)

CreateRegButton("Equip All FlashLights", "Player", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.Name == "[Flashlight]" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
end)

CreateRegButton("Toggle FlashLights", "Player", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v.Name == "[Flashlight]" then
			v:Activate()
		end
	end
end)

_G.Kill = false
CreateTogButton("Anti-Kill", "Player", (_G.Kill), function()
	if _G.Kill == true then
		_G.Kill = false
	else
		_G.Kill = true
	end

	Food = {"[Popcorn]", "[Hamburger]", "[Chicken]", "[Taco]", "[Pizza]", "[Donut]", "[Cranberry]", "[Starblox Latte]", "[Lemonade]"}

	while _G.Kill == true and game:GetService("RunService").Heartbeat:Wait() do

		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health <= 50 then
			for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if table.find(Food, v.Name) then
					local LastObject = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
					local Food = v
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(v)
					repeat
						game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health >= 80 or Food.Parent == nil
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(LastObject)
				end
			end
		end

	end
end)

_G.RocketRide = false
CreateTogButton("Rocket Ride", "Player", (_G.RocketRide), function()
	if _G.RocketRide == true then
		_G.RocketRide = false
	else
		_G.RocketRide = true
	end

	game:GetService("Workspace").Ignored.ChildAdded:Connect(function(Added)
		if _G.RocketRide == true and Added.Name == "Launcher" and (game:GetService("Players").LocalPlayer.Character.LowerTorso.Position - Added.Position).Magnitude <=30 then
			BodyPosition = Instance.new("BodyPosition", game:GetService("Players").LocalPlayer.Character.LowerTorso)
			BodyPosition.D = 400
			repeat
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Sit = true
				BodyPosition.Position = Added.Position + Vector3.new(0, 3, 0)
				game:GetService("RunService").Heartbeat:Wait()
			until not game:GetService("Workspace").Ignored:FindFirstChild(Added.Name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
			BodyPosition:Destroy()
		end
	end)
end)

CreateRegButton("SkyDive", "Player", function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0)
end)


CreateRegButton("Fix Fists", "Player", function()
	local rightwrist = Instance.new("Motor6D");
	rightwrist.Name = "RightWrist";
	rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
	rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
	rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;

	local leftwrist = Instance.new("Motor6D");
	leftwrist.Name = "LeftWrist";
	leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
	leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
	leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;		
end)

CreateRegButton("Big Head [FE]", "Player", function()
	local LocalPlayer = game:GetService("Players").LocalPlayer
	for _, v in pairs(LocalPlayer.Character.Humanoid:GetChildren()) do
		if v:IsA("ValueBase") then
			for _, Descendant in pairs(LocalPlayer.Character:GetDescendants()) do
				if Descendant:IsA("Attachment" and not string.find(Descendant.Name,"Rig")) or Descendant.Name == "OriginalSize"  then
					Descendant:Destroy()
				end
			end
			v:Destroy()
			wait(0.5)
		end
	end
end)


CreateRegButton("Remove Display Names", "Player", function()
	pcall(function()
		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Character then
				if v.Character:FindFirstChild("Humanoid") then
					v.Character:FindFirstChild("Humanoid").DisplayName = v.Name 
				end
			end
		end
	end)
end)


CreateRegButton("Walk On Walls", "Player", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/WalkOnWalls/main/YesEpic", true))()
end)

CreateRegButton("ChatLogs", "Player", function()
	game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 0)
	game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
	game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position.Y.Offset + 160)
end)


CreateRegButton("Rejoin", "Player", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

CreateRegButton("Server-Hop", "Player", function()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	end
end)

_G.AutoUnjail = false
CreateTogButton("Auto Unjail", "Player", (_G.AutoUnjail), function()
	if _G.AutoUnjail == true then
		_G.AutoUnjail = false
	else
		_G.AutoUnjail = true
	end

	if _G.AutoUnjail == true then
		while _G.AutoUnjail == true and game:GetService("RunService").Heartbeat:Wait() do
			if tonumber(game:GetService("Players").LocalPlayer:WaitForChild("DataFolder"):WaitForChild("Information"):WaitForChild("Jail").Value) > 0 and tonumber(game:GetService("Players").LocalPlayer:WaitForChild("DataFolder"):WaitForChild("Information"):WaitForChild("Jail").Value) < 250 then
				pcall(function()
					repeat
						game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Ignored.Shop["[Key] - $125"].Head.CFrame * CFrame.new(0, 3, 0)
						fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Key] - $125"].ClickDetector)
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]")
					wait()
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Key]"))
				end)
			end
		end
	end
end)

_G.AutoMask = false
AutoMaskCheck = false
CreateTogButton("Auto Mask", "Player", (_G.AutoMask) ,function()
	if _G.AutoMask == true then
		_G.AutoMask = false
	else
		_G.AutoMask = true
	end

	if AutoMaskCheck == false then
		AutoMaskCheck = true
		game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(Character)

			local Mask = game:GetService("Workspace").Ignored.Shop["[Surgeon Mask] - $25"]
			local Currency = game:GetService("Players").LocalPlayer.DataFolder.Currency

			repeat
				wait()
			until Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Humanoid")

			if Currency.Value >= Mask.Price.Value and _G.AutoMask == true then
				local LastSpot = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
				repeat
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Mask.Head.CFrame * CFrame.new(0, -7, 0)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					fireclickdetector(Mask.ClickDetector)
					game:GetService("RunService").Heartbeat:Wait()
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask")
				repeat
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Mask.Head.CFrame * CFrame.new(0, -7, 0)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mask"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask") then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mask"):Activate()
					end
					game:GetService("RunService").Heartbeat:Wait()
				until game:GetService("Players").LocalPlayer.Character:FindFirstChild("In-gameMask")
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("In-gameMask").Handle:Destroy()
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LastSpot
			else
				game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error!", Text = "Plese make sure you have [25$]", Duration = 5})
			end

		end)
	end
end)


CreateRegButton("Free Boombox", "Player", function()
	local radio = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
	radio.Name = "BoomBox"
	radio.TextureId = "rbxassetid://319536646"
	radio.GripForward = Vector3.new(1, 0, 0)
	radio.GripPos = Vector3.new(1, -1.25, 0)
	radio.GripRight = Vector3.new(0, 0, 1)
	radio.GripUp = Vector3.new(0, 1, 0)

	local handle = Instance.new("Part", radio)
	handle.Name = "Handle"

	local mesh = Instance.new("SpecialMesh", handle)
	mesh.Name = "Mesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=319536754"
	mesh.TextureId = "http://www.roblox.com/asset/?id=319536704"

	local sound = Instance.new("Sound", game.Players.LocalPlayer.Character.LowerTorso)
	sound.Name = "Music"


	local handleclone = Instance.new("Part", game.ServerStorage)
	handleclone.Name = "Handle"


	local meshclone = Instance.new("SpecialMesh", handleclone)
	meshclone.Name = "Mesh"
	meshclone.MeshId = "http://www.roblox.com/asset/?id=319536754"
	meshclone.TextureId = "http://www.roblox.com/asset/?id=319536704"

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextButton = Instance.new("TextButton")
	local TextButton2 = Instance.new("TextButton")
	local TextBox = Instance.new("TextBox")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.Position = UDim2.new(0.392857134, 0, 0.0140845068, 0)
	Frame.Size = UDim2.new(0, 326, 0, 47)
	Frame.Visible = false

	TextButton.Parent = Frame
	TextButton.BackgroundColor3 = Color3.fromRGB(138, 255, 106)
	TextButton.Position = UDim2.new(0.290802807, 0, 1.27659571, 0)
	TextButton.Size = UDim2.new(0, 97, 0, 50)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "Play"
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true
	TextButton.MouseButton1Click:connect(function()
		local target = TextBox.Text

		sound.SoundId = "rbxassetid://" .. target
		sound.Looped = true
		sound.Volume = 1
		sound:Play()    
	end)

	TextButton2.Name = "TextButton2"
	TextButton2.Parent = Frame
	TextButton2.BackgroundColor3 = Color3.fromRGB(255, 108, 108)
	TextButton2.Position = UDim2.new(0.586995244, 0, 1.27659571, 0)
	TextButton2.Size = UDim2.new(0, 97, 0, 50)
	TextButton2.Font = Enum.Font.SourceSans
	TextButton2.Text = "Stop"
	TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton2.TextScaled = true
	TextButton2.TextSize = 14.000
	TextButton2.TextWrapped = true
	TextButton2.MouseButton1Click:connect(function()
		sound:Stop()    
	end)

	TextBox.Parent = Frame
	TextBox.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	TextBox.BackgroundTransparency = 0.500
	TextBox.Position = UDim2.new(0.0900257304, 0, 0, 0)
	TextBox.Size = UDim2.new(0, 327, 0, 47)
	TextBox.Font = Enum.Font.SourceSans
	TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.PlaceholderText = "Music ID"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	--end



	radio.Equipped:connect(function()
		Frame.Visible = true    
	end)



	radio.Unequipped:connect(function()
		Frame.Visible = false
	end)
end)


CreateRegButton("Free Animation Pack", "Player", function()
	local Folder = Instance.new('Folder', game:GetService("Workspace"))
	local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
	local ScrollingFrame = AnimationPack.ScrollingFrame
	local CloseButton = AnimationPack.CloseButton

	AnimationPack.Visible = true

	local LeanAnimation = Instance.new("Animation", Folder)
	LeanAnimation.Name = "LeanAnimation"
	LeanAnimation.AnimationId = "rbxassetid://3152375249"
	local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

	local LayAnimation = Instance.new("Animation", Folder)
	LayAnimation.Name = "LayAnimation"
	LayAnimation.AnimationId = "rbxassetid://3152378852"
	local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

	local Dance1Animation = Instance.new("Animation", Folder)
	Dance1Animation.Name = "Dance1Animation"
	Dance1Animation.AnimationId = "rbxassetid://3189773368"
	local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

	local Dance2Animation = Instance.new("Animation", Folder)
	Dance2Animation.Name = "Dance2Animation"
	Dance2Animation.AnimationId = "rbxassetid://3189776546"
	local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

	local GreetAnimation = Instance.new("Animation", Folder)
	GreetAnimation.Name = "GreetAnimation"
	GreetAnimation.AnimationId = "rbxassetid://3189777795"
	local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

	local PrayingAnimation = Instance.new("Animation", Folder)
	PrayingAnimation.Name = "PrayingAnimation"
	PrayingAnimation.AnimationId = "rbxassetid://3487719500"
	local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == "TextButton" then
			if v.Text == "Lean" then
				v.Name = "LeanButton"
			end
		end
	end

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == "TextButton" then
			if v.Text == "Lay" then
				v.Name = "LayButton"
			end
		end
	end

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == "TextButton" then
			if v.Text == "Dance1" then
				v.Name = "Dance1Button"
			end
		end
	end

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == "TextButton" then
			if v.Text == "Dance2" then
				v.Name = "Dance2Button"
			end
		end
	end

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == "TextButton" then
			if v.Text == "Greet" then
				v.Name = "GreetButton"
			end
		end
	end

	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name == "TextButton" then
			if v.Text == "Praying" then
				v.Name = "PrayingButton"
			end
		end
	end

	function Stop()
		Lay:Stop()
		Lean:Stop()
		Dance1:Stop()
		Dance2:Stop()
		Greet:Stop()
		Praying:Stop()
	end

	local LeanTextButton = ScrollingFrame.LeanButton
	local LayTextButton = ScrollingFrame.LayButton
	local Dance1TextButton = ScrollingFrame.Dance1Button
	local Dance2TextButton = ScrollingFrame.Dance2Button
	local GreetTextButton = ScrollingFrame.GreetButton
	local PrayingTextButton = ScrollingFrame.PrayingButton

	AnimationPack.MouseButton1Click:Connect(function()
		if ScrollingFrame.Visible == false then
			ScrollingFrame.Visible = true
			CloseButton.Visible = true
		end
	end)
	CloseButton.MouseButton1Click:Connect(function()
		if ScrollingFrame.Visible == true then
			ScrollingFrame.Visible = false
			CloseButton.Visible = false
		end
	end)
	LeanTextButton.MouseButton1Click:Connect(function()
		Stop()
		Lean:Play()
	end)
	LayTextButton.MouseButton1Click:Connect(function()
		Stop()
		Lay:Play()
	end)
	Dance1TextButton.MouseButton1Click:Connect(function()
		Stop()
		Dance1:Play()
	end)
	Dance2TextButton.MouseButton1Click:Connect(function()
		Stop()
		Dance2:Play()
	end)
	GreetTextButton.MouseButton1Click:Connect(function()
		Stop()
		Greet:Play()
	end)
	PrayingTextButton.MouseButton1Click:Connect(function()
		Stop()
		Praying:Play()
	end)

	game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
		Stop()
	end)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
		Stop()
		repeat
			wait()
		until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
		wait(1)
		local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
		local ScrollingFrame = AnimationPack.ScrollingFrame
		local CloseButton = AnimationPack.CloseButton

		AnimationPack.Visible = true

		local LeanAnimation = Instance.new("Animation", Folder)
		LeanAnimation.Name = "LeanAnimation"
		LeanAnimation.AnimationId = "rbxassetid://3152375249"
		local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

		local LayAnimation = Instance.new("Animation", Folder)
		LayAnimation.Name = "LayAnimation"
		LayAnimation.AnimationId = "rbxassetid://3152378852"
		local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

		local Dance1Animation = Instance.new("Animation", Folder)
		Dance1Animation.Name = "Dance1Animation"
		Dance1Animation.AnimationId = "rbxassetid://3189773368"
		local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

		local Dance2Animation = Instance.new("Animation", Folder)
		Dance2Animation.Name = "Dance2Animation"
		Dance2Animation.AnimationId = "rbxassetid://3189776546"
		local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

		local GreetAnimation = Instance.new("Animation", Folder)
		GreetAnimation.Name = "GreetAnimation"
		GreetAnimation.AnimationId = "rbxassetid://3189777795"
		local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

		local PrayingAnimation = Instance.new("Animation", Folder)
		PrayingAnimation.Name = "PrayingAnimation"
		PrayingAnimation.AnimationId = "rbxassetid://3487719500"
		local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Lean" then
					v.Name = "LeanButton"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Lay" then
					v.Name = "LayButton"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Dance1" then
					v.Name = "Dance1Button"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Dance2" then
					v.Name = "Dance2Button"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Greet" then
					v.Name = "GreetButton"
				end
			end
		end

		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Praying" then
					v.Name = "PrayingButton"
				end
			end
		end

		function Stop()
			Lay:Stop()
			Lean:Stop()
			Dance1:Stop()
			Dance2:Stop()
			Greet:Stop()
			Praying:Stop()
		end

		local LeanTextButton = ScrollingFrame.LeanButton
		local LayTextButton = ScrollingFrame.LayButton
		local Dance1TextButton = ScrollingFrame.Dance1Button
		local Dance2TextButton = ScrollingFrame.Dance2Button
		local GreetTextButton = ScrollingFrame.GreetButton
		local PrayingTextButton = ScrollingFrame.PrayingButton

		AnimationPack.MouseButton1Click:Connect(function()
			if ScrollingFrame.Visible == false then
				ScrollingFrame.Visible = true
				CloseButton.Visible = true
			end
		end)
		CloseButton.MouseButton1Click:Connect(function()
			if ScrollingFrame.Visible == true then
				ScrollingFrame.Visible = false
				CloseButton.Visible = false
			end
		end)
		LeanTextButton.MouseButton1Click:Connect(function()
			Stop()
			Lean:Play()
		end)
		LayTextButton.MouseButton1Click:Connect(function()
			Stop()
			Lay:Play()
		end)
		Dance1TextButton.MouseButton1Click:Connect(function()
			Stop()
			Dance1:Play()
		end)
		Dance2TextButton.MouseButton1Click:Connect(function()
			Stop()
			Dance2:Play()
		end)
		GreetTextButton.MouseButton1Click:Connect(function()
			Stop()
			Greet:Play()
		end)
		PrayingTextButton.MouseButton1Click:Connect(function()
			Stop()
			Praying:Play()
		end)
	end)
end)

_G.StompAura = false
CreateTogButton("Kill Aura", "Combat", (_G.StompAura), function()
	if _G.StompAura == true then
		_G.StompAura = false
	else
		_G.StompAura = true
	end

	if _G.StompAura == true then
		while _G.StompAura == true and game:GetService("RunService").Heartbeat:Wait() do
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects").Attacking.Value == true then
				for i, v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Name ~= game:GetService("Players").LocalPlayer.Name and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= 20 and v.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false and v.Character:FindFirstChild("BodyEffects"):FindFirstChild("Dead").Value == false then
						LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
						wait(1.2)
						repeat
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
							game:GetService("RunService").Heartbeat:Wait()
						until v.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true or game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects").Attacking.Value == false
						repeat
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.UpperTorso.Position + Vector3.new(0, 3, 0))
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("Attacking").Value == false then
								game:GetService("ReplicatedStorage").MainEvent:FireServer("Stomp")
							end
							game:GetService("RunService").Heartbeat:Wait()
						until v.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false or v.Character:FindFirstChild("BodyEffects"):FindFirstChild("Dead").Value == true or game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
					end
				end
			end
		end
	end
end)

CreateRegButton("Free Fists [Q]", "Combat", function()
	local localPlayer       = game:GetService("Players").LocalPlayer;
	local localCharacter    = localPlayer.Character
	local Mouse             = localPlayer:GetMouse();
	local FistControl       = false
	local LeftFist          = localCharacter.LeftHand;
	local RightFist         = localCharacter.RightHand;

	local uis = game:GetService("UserInputService");

	local loopFunction = function()
		LeftFist.CFrame  = CFrame.new(Mouse.Hit.p);
		RightFist.CFrame = CFrame.new(Mouse.Hit.p);
	end;

	local Loop

	local Start = function()
		Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
	end;

	local Pause = function()
		Loop:Disconnect()
	end;

	uis.InputBegan:connect(function(Key)
		if (Key.KeyCode == Enum.KeyCode.Q) then
			if (FistControl == false) then
				FistControl = true;
				Start();
				pcall(function()
					localCharacter.RightHand.RightWrist:Remove();
					localCharacter.LeftHand.LeftWrist:Remove();
				end);
			elseif (FistControl == true) then
				FistControl = false;
				Pause();
				local rightwrist  = Instance.new("Motor6D");
				rightwrist.Name   = "RightWrist";
				rightwrist.Parent = localCharacter.RightHand;
				rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				rightwrist.Part0  = localCharacter.RightLowerArm;
				rightwrist.Part1  = localCharacter.RightHand;

				local leftwrist   = Instance.new("Motor6D");
				leftwrist.Name    = "LeftWrist";
				leftwrist.Parent  = localCharacter.LeftHand;
				leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				leftwrist.Part0   = localCharacter.LeftLowerArm;
				leftwrist.Part1   = localCharacter.LeftHand;
			end;
		end;
	end);
end)

CreateRegButton("Fly Hands", "Combat", function()
	clip = true
	local RunService = game:GetService('RunService')


	RunService.Heartbeat:Connect(function(step)
		if clip == true then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)
	game.Players.LocalPlayer.Character.RightHand.RightWrist:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236.831894, 1614.47388, -654.266968)


	game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.RightHand

	local plr = game.Players.LocalPlayer
	IYMouse = plr:GetMouse()
	IYMouse.KeyDown:connect(function(key)
		if key == "wdawd" then
			if flight then
				flight = false
				fly()
			else
				flight = true
				NOFLY()
			end
		end
	end)

	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") and v.CanCollide == true then
			v.CanCollide = false
		end
	end

	FLYING = false
	QEfly = true
	iyflyspeed = 3
	vehicleflyspeed = 3
	function sFLY(vfly)
		repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
		repeat wait() until IYMouse

		local T = game.Players.LocalPlayer.Character.RightHand
		local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
		local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
		local SPEED = 5

		local function FLY()
			FLYING = true
			local BG = Instance.new('BodyGyro', T)
			local BV = Instance.new('BodyVelocity', T)
			BG.P = 9e4
			BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BG.cframe = T.CFrame
			BV.velocity = Vector3.new(0, 0, 0)
			BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(function()
				repeat wait()
					if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
						game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
					end
					if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
						SPEED = 50
					elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
						SPEED = 0
					end
					if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
						BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
					elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
						BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					else
						BV.velocity = Vector3.new(0, 0, 0)
					end
					BG.cframe = workspace.CurrentCamera.CoordinateFrame
				until not FLYING
				CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
				lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
				SPEED = 0
				BG:destroy()
				BV:destroy()
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
				end
			end)
		end
		IYMouse.KeyDown:connect(function(KEY)
			if KEY:lower() == 'w' then
				if vfly then
					CONTROL.F = vehicleflyspeed
				else
					CONTROL.F = iyflyspeed
				end
			elseif KEY:lower() == 's' then
				if vfly then
					CONTROL.B = - vehicleflyspeed
				else
					CONTROL.B = - iyflyspeed
				end
			elseif KEY:lower() == 'a' then
				if vfly then
					CONTROL.L = - vehicleflyspeed
				else
					CONTROL.L = - iyflyspeed
				end
			elseif KEY:lower() == 'd' then 
				if vfly then
					CONTROL.R = vehicleflyspeed
				else
					CONTROL.R = iyflyspeed
				end
			elseif QEfly and KEY:lower() == 'e' then
				if vfly then
					CONTROL.Q = vehicleflyspeed*2
				else
					CONTROL.Q = iyflyspeed*2
				end
			elseif QEfly and KEY:lower() == 'q' then
				if vfly then
					CONTROL.E = -vehicleflyspeed*2
				else
					CONTROL.E = -iyflyspeed*2
				end
			end
		end)
		IYMouse.KeyUp:connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end)
		FLY()
	end

	function NOFLY()
		FLYING = false
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end

	function fly()
		NOFLY()
		wait()
		sFLY()
	end

	flight = false
	fly()
end)


_G.SuperTaser = false
_G.ActiveTasers = false
CreateTogButton("Super Taser", "Combat", (_G.SuperTaser), function()
	if _G.SuperTaser == true then
		_G.SuperTaser = false
	else
		_G.SuperTaser = true
		CreateNotification("Purchase Some Tasers Before Using!", 5)
	end

	game:GetService("UserInputService").InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 and _G.ActiveTasers == true then
			for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
				if v.Name == "[Taser]" then
					v:Activate() 
				end
			end
		end
	end)

	while _G.SuperTaser == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Taser]") then
				for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					if v.Name == "[Taser]" then
						v.Parent = game:GetService("Players").LocalPlayer.Character 
					end
				end
				_G.ActiveTasers = true
				repeat wait() until not game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Taser]")
				_G.ActiveTasers = false
			end
		end)
	end
end)



CreateRegButton("Equip Tasers", "Combat", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.Name == "[Taser]" then
			v.Parent = game:GetService("Players").LocalPlayer.Character 
		end
	end
end)

CreateRegButton("Grenade Sky", "Combat", function()
	local plr = game.Players.LocalPlayer
	local lastpos = plr.Character.HumanoidRootPart.CFrame
	local playercount; local greadecount; local pp = {}
	local cock = true
	for I in pairs(game.Players:GetPlayers()) do
		playercount = I
	end

	game:GetService('RunService').Stepped:connect(function()
		setsimulationradius(math.huge)
	end)

	spawn(function()
		while cock do wait()
			for i, v in pairs(game.Workspace.Ignored:GetChildren()) do
				if v.Name == "Handle" then
					for index in pairs(pp) do
						table.insert(pp, v)
					end
					v.Name = tostring(i)
				end
			end
		end
	end)

	repeat wait()
		plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Grenade] - $700"].Head.CFrame
		fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $700"].ClickDetector)
		for ii, vv in pairs(plr.Backpack:GetChildren()) do
			grenadecount = ii
		end
	until grenadecount >= playercount
	plr.Character.HumanoidRootPart.CFrame = lastpos

	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		spawn(function()
			if v.Name == "[Grenade]" then
				v.Parent = plr.Character; v:Activate(); wait(0.1); v:Deactivate(); wait(0.1); v:Activate()
			end
		end)
	end

	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= plr then
			local mover = Instance.new("BodyPosition", pp[1])
			mover.P = 1e5
			table.remove(pp, 1)
			spawn(function()
				while wait() do
					mover.Position = v.Character.HumanoidRootPart.Position
				end
			end)
		end
	end
	cock = false
end)


_G.InfiniteTasers = false
CreateTogButton("Infinite Tasers", "Combat", (_G.InfiniteTasers), function()
	if _G.InfiniteTasers == true then
		_G.InfiniteTasers = false
	else
		_G.InfiniteTasers = true
	end

	while _G.InfiniteTasers == true and game:GetService("RunService").Heartbeat:Wait() do
		pcall(function()
			if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head.Position).Magnitude <= 15 then
				fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].ClickDetector) 
				for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					if v.Name == "[Taser]" then
						v.Parent = game:GetService("Players").LocalPlayer.Character 
					end
				end
			end
		end)
	end
end)

CreateRegButton("Tool Pickup", "Combat", function()
	for i, v99 in pairs(game:GetService("Workspace").Ignored.ItemsDrop:GetChildren()) do
		if v99:FindFirstChild("[Knife]") then
			LSS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v99:FindFirstChild("[Knife]").Handle.CFrame
			wait(.2)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LSS
		end
	end
	for i, v99 in pairs(game:GetService("Workspace").Ignored.ItemsDrop:GetChildren()) do
		if v99:FindFirstChild("[LockPicker]") then
			LSS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v99:FindFirstChild("[LockPicker]").Handle.CFrame
			wait(.2)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LSS
		end
	end
end)


_G.AutoReload = false
CreateTogButton("Auto Reload", "Combat", (_G.AutoReload), function()
	if _G.AutoReload == true then
		_G.AutoReload = false
	else
		_G.AutoReload = true
	end

	while _G.AutoReload == true and game:GetService("RunService").Heartbeat:Wait() do
		if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
					game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
					wait(1)
				end
			end
		end
	end
end)


CreateRegButton("Katana", "Combat", function()
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(1, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(2, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(3, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(4, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(5, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(5, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(6, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(7, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(8, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(9, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(10, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(11, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(12, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
	game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(13, 0, 0.1)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
	game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character 
end)


CreateRegButton("Airstrike", "Combat", function()
	local fuck6ex = game:GetService("Players").LocalPlayer
	for i, v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do
		if v:isA("Tool") then
			local a = Instance.new("SelectionBox", v.Handle)
			a.Adornee = v.Handle
			v.GripPos = Vector3.new(0, 0, 0)
			fuck6ex.Character.Humanoid:UnequipTools()
		end
	end
end)


CreateRegButton("Melee Reach", "Combat", function()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			spawn(function()
				pcall(function()
					local Instance = Instance.new("SelectionBox", v.Handle)
					Instance.Adornee = v.Handle
					Instance.Color3 = Color3.new(255, 255, 255)
					v.Handle.Transparency = 1
					v.Handle.Size = Vector3.new(40, 40, 40)

					while wait() do
						v.GripForward = Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))
						v.GripRight = Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))
					end
				end)
			end)
		end
	end
end)


CreateRegButton("Fist Reach", "Combat", function()
	local LP = game.Players.LocalPlayer
	for i,v in ipairs(LP.Character:GetDescendants()) do
		if v:IsA("MeshPart") then v.Massless = true
			v.CanCollide = false
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)

		end
	end

	for i,v in ipairs(game.workspace:GetDescendants()) do
		if v:IsA("Seat") then 
			v.Disabled = true
		end
	end
	local x = 40
	local y = 40
	local z = 40


	local fist = Vector3.new(x,y,z)

	LP.Character.RightHand.Size = fist

	LP.Character.RightHand.Transparency = 1
	local selectionBox = Instance.new("SelectionBox",LP.Character.RightHand)
	selectionBox.Adornee = LP.Character.RightHand
	selectionBox.Color3 = Color3.new(1, 0, 0)
	selectionBox.Transparency = 0

	LP.Character.LeftHand.Size = fist
	LP.Character.BodyEffects.SpecialParts.LeftHand.Size = fist

	LP.Character.LeftHand.Transparency = 1
	local selectionBox = Instance.new("SelectionBox",LP.Character.LeftHand)
	selectionBox.Adornee = LP.Character.LeftHand
	selectionBox.Color3 = Color3.new(1, 0, 0)
end)

CreateRegButton("Silent Meele Reach", "Combat", function()
	for i,v in ipairs(game.workspace:GetDescendants()) do
		if v:IsA("Seat") then 
			v:Destroy()
		end
	end
	if player.Character:FindFirstChildWhichIsA('Tool') then
		player.Character:FindFirstChildWhichIsA('Tool').Handle.Size = Vector3.new(50,50,50)
		player.Character:FindFirstChildWhichIsA('Tool').Handle.Transparency = 1
	end
	for i,v in pairs(game:GetService('Players'):GetChildren()) do
		if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
					firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character)
				end
			end
		end
	end	
end)


_G.FastRockets = false
CreateNumberToggle("Fast RPG", "Combat", "Speed Here", function(NumberInput)
	if _G.FastRockets == true then
		_G.FastRockets = false
	else
		_G.FastRockets = true
	end

	game:GetService("Workspace").Ignored.ChildAdded:Connect(function(Rocket)
		wait()
		if _G.FastRockets == true and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Rocket.Position).Magnitude <= 30 and Rocket.Name == "Launcher" then
			Rocket:WaitForChild("BodyVelocity"):Destroy()
			Instance.new("BodyVelocity", Rocket).Velocity = (Rocket.CFrame * CFrame.new(0, -NumberInput, 0)).p - Rocket.CFrame.p
			while Rocket and Rocket.Parent ~= nil do
				game:GetService("RunService").Stepped:Wait()
				setsimulationradius(9e9^9e9, 9e9)
			end
		end
	end)

end)

_G.DeflectRockets = false
CreateTogButton("Deflect RPG's", "Combat", (_G.DeflectRockets), function()
	if _G.DeflectRockets == true then
		_G.DeflectRockets = false
	else
		_G.DeflectRockets = true
	end

	while _G.DeflectRockets == true and game:GetService("RunService").Stepped:Wait() do
		setsimulationradius(9e9^9e9, 9e9)
		for _, Rockets in next, game.Workspace.Ignored:GetChildren() do
			if Rockets.Name == "Launcher" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Rockets.Position).Magnitude <= 250 then
				Rockets.Name = "negro"
				local BodyVel = Rockets:FindFirstChild("BodyVelocity")
				local OldVel = BodyVel.Velocity
				local OldP = BodyVel.P
				BodyVel:Destroy()
				local NewVel = Instance.new("BodyVelocity", Rockets)
				NewVel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				NewVel.P = OldP
				NewVel.Velocity = -OldVel
			end
		end
	end
end)


CreateRegButton("Silent Fist Reach", "Combat", function()
	local plr = game.Players.LocalPlayer
	for i, v in pairs(plr.Character:GetDescendants()) do
		if v:IsA("MeshPart") then
			v.Massless = true
			v.CanCollide = false
			v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
		end
	end
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Seat") then
			v.Disabled = true
		end
	end
	plr.Character:WaitForChild("RightHand").Size = Vector3.new(40, 40, 40)
	plr.Character:WaitForChild("LeftHand").Size = Vector3.new(40,40,40)
	plr.Character.RightHand.Transparency = 1
	plr.Character.LeftHand.Transparency = 1
	plr.Character.BodyEffects.SpecialParts.RightHand.Size = Vector3.new(40,40,40)
	plr.Character.BodyEffects.SpecialParts.LeftHand.Size = Vector3.new(40,40,40)
	plr.Character.BodyEffects.SpecialParts.RightHand.Transparency = 1
	plr.Character.BodyEffects.SpecialParts.LefttHand.Transparency = 1
	plr.Character.BodyEffects.SpecialParts.LeftHand.Transparency = 1
end)


CreateRegButton("No Recoil", "Combat", function()
	local CurrentFocus = game:GetService("Workspace").CurrentCamera.CFrame
	game:GetService("Workspace").CurrentCamera:Destroy()
	local Instance = Instance.new("Camera", game:GetService("Workspace"))
	Instance.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
	Instance.CameraType = Enum.CameraType.Custom
	Instance.CFrame = CurrentFocus
end)


CreateRegButton("Split Grenades [V]", "Combat", function()
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local char = LocalPlayer.Character
	local Ignored = game.workspace.Ignored
	local backpack = LocalPlayer.Backpack
	local x = 0
	local Grenade = "[Grenade]"
	local DroppedGrenade = "Handle"
	for i, v in pairs(backpack:GetChildren()) do
		if v.Name == Grenade then
			v.Parent = char
		end
	end
	for i, v in pairs(char:GetChildren()) do
		if v.Name == Grenade then
			v:Activate()
			v:Activate()
		end
	end
	wait (1)
	for i, v in pairs(Ignored:GetChildren()) do
		if v.Name == DroppedGrenade then
			x = x + 1
			v.Name = DroppedGrenade..x
		end
	end
	wait(1)
	x = 0
	for i, player in pairs(game.Players:GetPlayers()) do
		x = x + 1
		local launch = Ignored:WaitForChild(DroppedGrenade..x)
		if LocalPlayer.Name == player.Name then
			do
				launch.Position = Vector3.new(0, 1000, 0)
			end
		else
			do
				game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
				game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge, math.huge) * math.huge
				launch.Position = player.Character.HumanoidRootPart.Position
				wait (0.02)
			end
		end
	end
end)

CreateRegButton("Aimlock [Q]", "Combat", function()

	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	local AimlockTarget = nil
	local camera = game.Workspace.CurrentCamera

	game:GetService("UserInputService").InputBegan:Connect(function(Key, Typing)
		if Typing then return end
		if Key.KeyCode == Enum.KeyCode.Q then
			local Head = Mouse.Target.Parent:FindFirstChild("Head")
			if not Head then
				Head = Mouse.Target.Parent.Parent:FindFirstChild("Head")
			end
			if Head then
				if Head.Parent.Name == "SpecialParts" then
					AimlockTarget = FindPlrOnMouse()
				else
					AimlockTarget = Head.Parent.Name
				end
			else
				AimlockTarget = nil
			end
		end
	end)

	game:GetService("RunService").Heartbeat:Connect(function()
		local Target = game:GetService("Players"):FindFirstChild(AimlockTarget).Character
		camera.CFrame = CFrame.new(camera.CFrame.Position,Target.Head.Position + (Target.Head.Velocity * 0.165))
	end)
end)

_G.GunGod = false
CreateTogButton("Gun Godmode", "God Stuff", (_G.GunGod), function()
	if _G.GunGod == false then
		_G.GunGod = true
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health = 0
	else
		_G.GunGod = false
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health = 0
	end

	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(Character)
		if _G.GunGod == true then
			local FullyFolder = Instance.new("Folder", Character)
			FullyFolder.Name = "FULLY_LOADED_CHAR"
			Character:WaitForChild("RagdollConstraints"):Destroy()
			local BodySpoof = Instance.new("BoolValue", Character.BodyEffects)
			Character:WaitForChild("BodyEffects")
			Character:FindFirstChild("BodyEffects").BreakingParts:Destroy()
		end
	end)
end)

_G.GodBlock = false
CreateTogButton("GodBlock", "God Stuff", _G.GodBlock, function()
	if _G.GodBlock == true then
		_G.GodBlock = false
		for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
				v:Destroy() 
			end
		end
	else
		_G.GodBlock = true
		for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
				v:Destroy() 
			end
		end
	end

	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
		if _G.GodBlock == true then
			Instance.new("Folder",game:GetService("Players").LocalPlayer.Character).Name = ("FULLY_LOADED_CHAR")
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Dead"):Remove()
			Instance.new("BoolValue",game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects")).Name = ("Dead")
			repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Cuff").Value = false
			game:GetService("Players").LocalPlayer.Character:findFirstChild("BodyEffects"):WaitForChild("Defense"):Destroy()
			while _G.GodBlock == true and game:GetService("RunService").Heartbeat:Wait() do
				game:GetService("ReplicatedStorage").MainEvent:FireServer("UpdateMousePos", game:GetService("Players").LocalPlayer:GetMouse().Hit.Position)
			end
		end
	end)
end)

_G.AntiRagdoll = false
CreateTogButton("Anti-Ragdoll", "God Stuff", (_G.AntiRagdoll), function()
	if _G.AntiRagdoll == true then
		_G.AntiRagdoll = false
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	else
		_G.AntiRagdoll = true
		game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
	end

	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
		if _G.AntiRagdoll == true then
			Instance.new("Folder",game:GetService("Players").LocalPlayer.Character).Name = ("FULLY_LOADED_CHAR")
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Dead"):Remove()
			Instance.new("BoolValue",game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects")).Name = ("Dead")
			repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Cuff").Value = false
		end
		pcall(function()
			while _G.AntiRagdoll == true and game:GetService("RunService").Heartbeat:Wait() do
				if game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):FindFirstChild("K.O").Value == true then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):FindFirstChild("K.O").Value = false
				end
			end
		end)
	end)    
end)

_G.BulletProof = false
CreateTogButton("BulletProof", "God Stuff", _G.BulletProof, function()
	if _G.BulletProof == true then
		_G.BulletProof = false
		for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
				v:Destroy() 
			end
		end
	else
		_G.BulletProof = true
		for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
				v:Destroy() 
			end
		end
	end

	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
		if _G.BulletProof == true then
			Instance.new("Folder",game:GetService("Players").LocalPlayer.Character).Name = ("FULLY_LOADED_CHAR")
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Dead"):Remove()
			Instance.new("BoolValue",game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects")).Name = ("Dead")
			repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")
			game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Cuff").Value = false
			game:GetService("Players").LocalPlayer.Character:findFirstChild("BodyEffects"):WaitForChild("Armor"):Destroy()
			while _G.BulletProof == true and game:GetService("RunService").Heartbeat:Wait() do
				game:GetService("ReplicatedStorage").MainEvent:FireServer("UpdateMousePos", game:GetService("Players").LocalPlayer:GetMouse().Hit.Position)
			end
		end
	end)
end)

CreateRegButton("Semi-Godmode", "God Stuff", function()
	coroutine.resume(coroutine.create(function()
		while wait() do
			if game.Players.LocalPlayer.Character.BodyEffects.Armor.Value < 10 then
				_G.savedhumanoidpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				local target = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - 2300"].Head.CFrame
				player.Character.HumanoidRootPart.CFrame = CFrame.new(target)
				wait(.5)
				fireclickdetector(game.Workspace.Ignored.Shop['[High-Medium Armor] - 2300'].ClickDetector)
				wait()
				fireclickdetector(game.Workspace.Ignored.Shop['[High-Medium Armor] - 2300'].ClickDetector)
				wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.savedhumanoidpos)
			end
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health < 70 then
				_G.savedhumanoidpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-789.114, -39.6752, -942.038)
				wait(.5)
				fireclickdetector(game.Workspace.Ignored.Shop['[Pizza] - $5'].ClickDetector)
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.savedhumanoidpos)
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.Name == '[Pizza]' then
						v.Parent = game.Players.LocalPlayer.Character
						for i = 1, 6 do
							v:Activate()
							wait(.5)
							v:Activate()
						end
					end
				end
			end 
		end
	end))
end)



CreateRegButton("Godmode V2", "God Stuff", function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0;
	game.Players.LocalPlayer.DataFolder.Information.Jail.Value = 0 --new

	game.Players.LocalPlayer.DataFolder.Information.Jail.Value = 0 --new
	local localPlayer = game:GetService('Players').LocalPlayer;
	local newCharacter = localPlayer.CharacterAdded:Wait();
	local spoofFolder = Instance.new('Folder');
	spoofFolder.Name = 'FULLY_LOADED_CHAR';
	spoofFolder.Parent = newCharacter;
	newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
	local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);

	local LocalPlayer = game:GetService("Players").LocalPlayer
	local char = LocalPlayer.Character


	gsPlayers = game:GetService("Players")
	gsWorkspace = game:GetService("Workspace")
	gsLighting = game:GetService("Lighting")
	gsReplicatedStorage = game:GetService("ReplicatedStorage")
	gsCoreGui = game:GetService("CoreGui")
	gsTween = game:GetService("TweenService")
	gsHttp = game:GetService("HttpService")

	LP = gsPlayers.LocalPlayer
	Mouse = LP:GetMouse()


	--godblock
	local LP = game.Players.LocalPlayer

	if LP.Character.BodyEffects:FindFirstChild("Defense") then
		LP.Character.BodyEffects.Defense:Destroy()
		local fucker = Instance.new("NumberValue",LP.Character.BodyEffects)
		fucker.Name = "Defense"
	end
	wait(0.1)
	--godbullet
	game.Players.LocalPlayer.Character.BodyEffects.Armor:clone().Parent = game.Players.LocalPlayer.Character.BodyEffects
	wait(.1)
	game.Players.LocalPlayer.Character.BodyEffects.Armor:Destroy()

	local player = game.Players.LocalPlayer

	local MaxDistance = 20

	local Players = game:GetService('Players')
	local UIS = game:GetService('UserInputService')
	local RS = game:GetService('RunService')

	local d = {}
	local e = {}
	local g = {}
	local h = {}
	local j = {}
	local k = {}
	local function l()
		local m = 3
		local n = checkcaller
		local o = getrawmetatable(game)
		setreadonly(o, false)
		local p = o.__index
		local q = o.__newindex
		local r = o.__namecall
		o.__index =
			newcclosure(
				function(s, t)
				if n() then
					return p(s, t)
				end
				if d[s] and d[s][t] then
					local u = d[s][t]
					if u["IsCallback"] == true then
						return u["Value"](s)
					else
						return u["Value"]
					end
				end
				if g[t] then
					local v = g[t]
					if v["IsCallback"] == true then
						return v["Value"](s)
					else
						return v["Value"]
					end
				end
				if j[s] and j[s][t] then
					return k[s][t]
				end
				return p(s, t)
			end
			)
		o.__newindex =
			newcclosure(
				function(w, x, y)
				if n() then
					return q(w, x, y)
				end
				if e[w] and e[w][x] then
					local z = e[w][x]
					if z["Callback"] == nil then
						return
					else
						z["Callback"](w, y)
						return
					end
				end
				if h[x] then
					local A = h[x]
					if A["Callback"] == nil then
						return
					else
						A["Callback"](w, y)
						return
					end
				end
				if j[w] and j[w][x] then
					local B = j[w][x]
					if type(y) ~= B["Type"] then
						error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
					end
					k[w][x] = y
					return
				end
				return q(w, x, y)
			end
			)
		local D = game.Players.LocalPlayer.Character.Humanoid
		local function A(_)
			local a0 = p(D, _)
			local a1 = type(a0)
			if not j[D] then
				j[D] = {}
			end
			if not k[D] then
				k[D] = {}
			end
			j[D][_] = {Type = a1}
			k[D][_] = p(D, _)
			local a2 = function()
				j[D][_] = nil
				k[D][_] = nil
			end
			return {remove = a2, Remove = a2}
		end
		A("WalkSpeed")
		A("JumpPower")
	end
	l()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

	_G.b = true
	repeat wait()	
		for _,v in pairs(player.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
			if v.Name == 'Block' then
				v:Stop()
			end
			local A_1 = "Block"
			local A_2 = true
			local Event = game:GetService("ReplicatedStorage").MainEvent
			Event:FireServer(A_1, A_2)
		end
	until _G.b == false
	repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyWidthScale").Value = 0.5
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyDepthScale").Value = 0.5
end)

_G.FistLock = false
CreateToggleSearch("Fist Lock", "Target", (_G.FistLock), function(InputtedText)
	local PlayerService = game:GetService("Players")
	if _G.FistLock == true then
		_G.FistLock = false
		wait(.3)
		game:GetService("Players").LocalPlayer.Character.RightHand.Velocity = Vector3.new(0, 0, 0)
		game:GetService("Players").LocalPlayer.Character.LeftHand.Velocity = Vector3.new(0, 0, 0)
		wait(.1)
		game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	else
		_G.FistLock = true
	end

	pcall(function()
		if _G.FistLock == true then
			game:GetService("Players").LocalPlayer.Character.RightHand:FindFirstChildWhichIsA("Motor6D"):Destroy()
			game:GetService("Players").LocalPlayer.Character.LeftHand:FindFirstChildWhichIsA("Motor6D"):Destroy()
		end
	end)

	for i, v in pairs(GetPlayer(InputtedText)) do
		while _G.FistLock == true and game:GetService("RunService").Heartbeat:Wait() do
			game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = PlayerService[v].Character.UpperTorso.CFrame
			game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = PlayerService[v].Character.UpperTorso.CFrame
		end
	end
end)

CreateSearchButton("Bag", "Target", function(Target)
	local LastSpot = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[BrownBag]") then
		repeat
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[BrownBag] - $25"].Head.Position + Vector3.new(0, 0, 3))
			fireclickdetector(game:GetService("Workspace").Ignored.Shop["[BrownBag] - $25"].ClickDetector)
			game:GetService("RunService").Heartbeat:Wait()
		until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[BrownBag]")
	end

	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[BrownBag]") then
		if Target ~= nil or Target ~= "nil" then
			for i, v in pairs(GetPlayer(Target)) do
				game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[BrownBag]"))
				game:GetService("Players").LocalPlayer.Character.RightHand.RightWrist.Part1 = nil
				game:GetService("Players").LocalPlayer.Character.LeftHand.LeftWrist.Part1 = nil
				repeat
					game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = game:GetService("Players")[v].Character:FindFirstChild("HumanoidRootPart").CFrame
					game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = game:GetService("Players")[v].Character:FindFirstChild("HumanoidRootPart").CFrame
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("[BrownBag]"):Activate()
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players")[v].Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -8, 0)
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
					game:GetService("RunService").Heartbeat:Wait()
				until not game:GetService("Players").LocalPlayer.Character:FindFirstChild("[BrownBag]")
				game:GetService("Players").LocalPlayer.Character.RightHand.RightWrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand
				game:GetService("Players").LocalPlayer.Character.LeftHand.LeftWrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = LastSpot
			end
		end
	end
end)

CreateSearchButton("Goto", "Target", function(InputtedText)
	for i, v in pairs(GetPlayer(InputtedText)) do
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v].Character.HumanoidRootPart.CFrame
	end
end)

CreateSearchButton("Arrest Player", "Target", function(InputtedText)
	for i, v in pairs(GetPlayer(InputtedText)) do
		if game:GetService("Players").LocalPlayer.DataFolder:FindFirstChild("Officer").Value == 1 then
			if tonumber(game:GetService("Players")[v]:FindFirstChild("DataFolder"):FindFirstChild("Information"):FindFirstChild("Wanted").Value) >= 100 then
				repeat
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat") then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Activate()
					end
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
					game:GetService("RunService").Heartbeat:Wait()
				until game:GetService("Players")[v].Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true or game:GetService("Players")[v].Character:FindFirstChild("BodyEffects"):FindFirstChild("Dead").Value == true
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat") then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
				end
				repeat
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cuff") then
						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cuff"))
					end 
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cuff") then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cuff"):Activate()
					end
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players")[v].Character.UpperTorso.Position + Vector3.new(0, 3, 0))
					game:GetService("RunService").Heartbeat:Wait()
				until game:GetService("Players")[v].Character:FindFirstChild("BodyEffects"):FindFirstChild("Cuff").Value == true
			else
				CreateNotification("This Player Must Have 100+ Wanted!", 5)
			end
		else
			CreateNotification("You Must Be A Cop!", 5)
		end
	end
end)

_G.Bang = false
CreateToggleSearch("Bang Player", "Target", (_G.Bang), function(Target)
	if _G.Bang == true then
		_G.Bang = false
	else
		_G.Bang = true
	end 

	for i, v in pairs(GetPlayer(Target)) do
		if v ~= nil or v ~= game:GetService("Players").LocalPlayer.Name then
			pcall(function()
				while _G.Bang == true do
					HumanoidRootPart = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					Target = game:GetService("Players")[v].Character.HumanoidRootPart

					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, .4)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, .6)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, .8)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, 1)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, 1.2)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, 1)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, .8)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, .6)
					wait()
					HumanoidRootPart.CFrame = Target.CFrame * CFrame.new(0, 0, .4)
					wait()
				end
			end)
		end
	end 
end)

_G.Fling = false
CreateToggleSearch("Fling", "Target", (_G.Fling) ,function(Input)
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	if _G.Fling == true then
		_G.Fling = false
		Loop:Disconnect()
		local vectorZero = Vector3.new(0, 0, 0)
		player.Character.PrimaryPart.Velocity = vectorZero
		player.Character.PrimaryPart.RotVelocity = vectorZero
		player.Character.HumanoidRootPart.CFrame = CFrame.new(OldFlingPos) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0)) 
	else
		_G.Fling = true
		for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v:IsA("Seat") then
				v:Destroy() 
			end
		end
	end
	for i, v in pairs(GetPlayer(Input)) do
		if v ~= nil and Input ~= nil then
			SavedPosi = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position

			while _G.Fling == true and game:GetService("RunService").Heartbeat:Wait() do
				local Loop
				local OldFlingPos = player.Character.HumanoidRootPart.Position
				local loopFunction = function()
					local success,err = pcall(function()
						local FlingEnemy = GetPlayer(Input).Character
						if FlingEnemy and player.Character then
							FlingTorso = FlingEnemy.UpperTorso
							local dis = 3.85
							local increase = 6
							if FlingEnemy.Humanoid.MoveDirection.X < 0 then
								xchange = -increase
							elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
								xchange = increase
							else
								xchange = 0
							end
							if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
								zchange = -increase
							elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
								zchange = increase
							else
								zchange = 0
							end          
							if player.Character then
								player.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
								player.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y, FlingTorso.Position.Z + math.random(-dis,dis) + zchange) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X + 350),math.rad(player.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(player.Character.HumanoidRootPart.Orientation.Z + 240))
								player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
							end
						end
					end)
				end
			end
		end	
		end
	end)

_G.Spectate = false
CreateToggleSearch("Spectate", "Target", (_G.Spectate), function(InputtedText)
	if _G.Spectate == true then
		_G.Spectate = false
		game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
	else
		_G.Spectate = true
	end

	for i, v in pairs(GetPlayer(InputtedText)) do
		if _G.Spectate == true then
			game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players")[v].Character 
		else
			game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
		end
	end
end)

_G.TaserLock = false
CreateToggleSearch("TaserLock", "Target", (_G.TaserLock), function(InputtedText)
	if _G.TaserLock == true then
		_G.TaserLock = false
	else
		_G.TaserLock = true
	end

	for i, v in pairs(GetPlayer(InputtedText)) do
		game:GetService("Players").LocalPlayer.Character:WaitForChild("[Taser]").Handle.ChildAdded:Connect(function(Beam)
			if _G.TaserLock == true then
				repeat
					setsimulationradius(9e9^9e9, 9e9)
					Beam.CFrame = game:GetService("Players")[v].Character.UpperTorso.CFrame
					game:GetService("RunService").Heartbeat:Wait()
				until not game:GetService("Players").LocalPlayer.Character:WaitForChild("[Taser]").Handle:FindFirstChild("Part") or Beam.Parent == nil
			end
		end)
	end
end)


_G.FlameLock = false
CreateToggleSearch("Flame Lock", "Target", (_G.FlameLock), function(InputtedText)
	if _G.FlameLock == true then
		_G.FlameLock = false

		game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]"):Deactivate()
		wait(.3)
		game:GetService("Players").LocalPlayer.Character.RightHand.Velocity = Vector3.new(0, 0, 0)
		game:GetService("Players").LocalPlayer.Character.LeftHand.Velocity = Vector3.new(0, 0, 0)
		wait(.1)
		game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	else
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Flamethrower]") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]") then
			_G.FlameLock = true
		else
			_G.FlameLock = false
			CreateNotification("Must Have Flamethrower")
		end
	end

	local Factor = 0.200

	pcall(function()
		if _G.FlameLock == true then
			game:GetService("Players").LocalPlayer.Character.RightHand:FindFirstChildWhichIsA("Motor6D"):Destroy()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Flamethrower]"))
		end
	end)
	for i, v3 in pairs(GetPlayer(InputtedText)) do  
		while _G.FlameLock == true and game:GetService("RunService").Heartbeat:Wait() and game:GetService("Players")[v3].Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false do
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Flamethrower]") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Flamethrower]")) 
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]") then
				game:GetService("Players").LocalPlayer.Character:WaitForChild("[Flamethrower]"):Activate()
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]").Ammo.Value <= 1 then
				game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]"))
				repeat 
					game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = CFrame.new(game:GetService("Players")[v3].Character.HumanoidRootPart.Position.X+(game:GetService("Players")[v3].Character.Head.Velocity.X*Factor), game:GetService("Players")[v3].Character.HumanoidRootPart.Position.Y+10+(game:GetService("Players")[v3].Character.Head.Velocity.Y*Factor), game:GetService("Players")[v3].Character.HumanoidRootPart.Position.Z+(game:GetService("Players")[v3].Character.Head.Velocity.Z*Factor))
					game:GetService("RunService").Heartbeat:Wait()
				until game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]").Ammo.Value >= 69
			end
			game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = CFrame.new(game:GetService("Players")[v3].Character.HumanoidRootPart.Position.X+(game:GetService("Players")[v3].Character.Head.Velocity.X*Factor), game:GetService("Players")[v3].Character.HumanoidRootPart.Position.Y+10+(game:GetService("Players")[v3].Character.Head.Velocity.Y*Factor), game:GetService("Players")[v3].Character.HumanoidRootPart.Position.Z+(game:GetService("Players")[v3].Character.Head.Velocity.Z*Factor))
		end
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Flamethrower]"):Deactivate()
		wait(.3)
		game:GetService("Players").LocalPlayer.Character.RightHand.Velocity = Vector3.new(0, 0, 0)
		game:GetService("Players").LocalPlayer.Character.LeftHand.Velocity = Vector3.new(0, 0, 0)
		wait(.1)
		game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

		local RightHand6 = Instance.new("Motor6D", game:GetService("Players").LocalPlayer.Character.RightHand)

		RightHand6.Name = "RightWrist"
		RightHand6.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm
		RightHand6.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand
		_G.FlameLock = false
	end
end)


_G.RPGLock = false
CreateToggleSearch("RPG Lock", "Target", (_G.RPGLock), function(InputtedText)
	if _G.RPGLock == true then
		_G.RPGLock = false
	else
		_G.RPGLock = true
	end
	for i, v in pairs(GetPlayer(InputtedText)) do
		game:GetService("Workspace").Ignored.ChildAdded:Connect(function(RPG)
			if _G.RPGLock == true and RPG.Name == "Launcher" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - RPG.Position).Magnitude <= 10 then
				if RPG:FindFirstChildOfClass("BodyVelocity") then
					wait()
					RPG:FindFirstChildOfClass("BodyVelocity"):Destroy()
				else
					repeat
						pcall(function()
							RPG:FindFirstChildOfClass("BodyVelocity"):Destroy()
						end)
						game:GetService("RunService").Heartbeat:Wait()
						setsimulationradius(9e9, 9e9, 9e9)
						RPG.CFrame = game:GetService("Players")[v].Character.Head.CFrame * CFrame.new(0, 5, 0)
					until not game:GetService("Workspace").Ignored:FindFirstChild("Launcher")
				end
			end
		end)
	end
end)

_G.GrenadeLauncher = false
CreateToggleSearch("Grenadelauncher Lock", "Target", (_G.GrenadeLauncher), function(InputtedText)
	if _G.GrenadeLauncher == true then
		_G.GrenadeLauncher = false
	else
		_G.GrenadeLauncher = true
	end

	game:GetService("Workspace").Ignored.ChildAdded:Connect(function(Grenade)
		if _G.GrenadeLauncher == true and Grenade.Name == "GrenadeLauncherAmmo" then
			for i, v in pairs(GetPlayer(InputtedText)) do
				wait(2)
				Grenade:WaitForChild("Main"):WaitForChild("BodyForce"):Destroy()
				repeat
					Grenade:WaitForChild("Main").Velocity = Vector3.new(0, 0, 0)
					Grenade:WaitForChild("Main").CFrame = game:GetService("Players")[v].Character.Head.CFrame * CFrame.new(0, 5, 0)
					setsimulationradius(9e9, 9e9, 9e9)
					game:GetService("RunService").Heartbeat:Wait()
				until not game:GetService("Workspace").Ignored:FindFirstChild("GrenadeLauncherAmmo")
			end
		end
	end)
end)


CreateSearchButton("Audio Stealer", "Target", function(InputtedText)
	for i, v in pairs(GetPlayer(InputtedText)) do
		if game:GetService("Players")[v].Character:WaitForChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND") then
			local Audio = game:GetService("Players")[v].Character:WaitForChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND")
			local String = string.split(tostring(Audio.SoundId), "//")
			if syn then
				setclipboard(String[2])
				CreateNotification("Audio Copied To Clipboard ("..String[2]..")", 15)
			else
				CreateNotification("Audio Stealer : "..String[2], 15)
			end
		end
	end
end)


CreateSearchButton("Anti-Fling", "Target", function(InputtedText)
	for i, v in pairs(GetPlayer(InputtedText)) do
		if game:GetService("Players"):FindFirstChild(v).Character then
			game:GetService("Players"):FindFirstChild(v).Character:Destroy()
		end
	end
end)

CreateSearchButton("Cash", "Target", function(InputtedText)
	for i, v in pairs(GetPlayer(InputtedText)) do
		game.StarterGui:SetCore("SendNotification", {
			Title = "Crystal Central";
			Text = v.."'s cash is: ".. game.Players[v].DataFolder.Currency.Value; 
			Duration = 5;
		})
	end
end)


CreateSearchButton("Bounty", "Target", function(InputtedText)
	for i, v in pairs(GetPlayer(InputtedText)) do
		game.StarterGui:SetCore("SendNotification", {
			Title = "Crystal Central";
			Text = v.."'s bounty is: "..game.Players[v].DataFolder.Information.Wanted.Value;
			Duration = 5;
		})
	end
end)



_G.InvisFarm = false
CreateTogButton("Fist Autofarm", "Auto Farms", (_G.InvisFarm), function()
	if _G.InvisFarm == true then
		_G.InvisFarm = false
		for i, v3 in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v3:IsA("Part") or v3:IsA("MeshPart") or v3:IsA("Accessory") then
				v3:Destroy() 
			end
		end
	else
		_G.InvisFarm = true
	end

	spawn(function()
		while _G.InvisFarm == true and game:GetService("RunService").Heartbeat:Wait() do
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11) 
		end
	end)

	while _G.InvisFarm == true and game:GetService("RunService").Stepped:Wait() do
		for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
			if v:FindFirstChild("Humanoid").Health >= 50 then
				BreakATM = v 
			end
		end

		repeat
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat") then
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat"))
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat") then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Activate() 
			end
			game:GetService("Workspace").CurrentCamera.CameraSubject = BreakATM.Head
			pcall(function()
				game:GetService("Players").LocalPlayer.Character.RightHand.RightWrist:Destroy()
				game:GetService("Players").LocalPlayer.Character.LeftHand.LeftWrist:Destroy()
				game:GetService("Players").LocalPlayer.Character.Humanoid.TrailEffects:Destroy()
			end)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = BreakATM.Open.CFrame * CFrame.new(0, -13, 0)
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
			game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = BreakATM.Open.CFrame * CFrame.new(0, 0, -1)
			game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = BreakATM.Open.CFrame * CFrame.new(0, 0, -1)
			game:GetService("RunService").Heartbeat:Wait()
		until BreakATM:FindFirstChild("Humanoid").Health <= 0
		game:GetService("Players").LocalPlayer.Character.RightHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Players").LocalPlayer.Character.LeftHand.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		for i, v2 in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
			if v2.Name == "MoneyDrop" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v2.Position).Magnitude <= 25 then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v2.Position - Vector3.new(0, 13, 0)) 
				wait(.1)
				fireclickdetector(v2.ClickDetector)
				wait(0.6)
			end
		end
	end
end)



_G.AutoBox = false
CreateTogButton("Auto Box", "Auto Farms", (_G.AutoBox), function()
	if _G.AutoBox == true then
		_G.AutoBox = false
	else
		_G.AutoBox = true
	end

	while _G.AutoBox == true and game:GetService("RunService").Heartbeat:Wait() do
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat") then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat"))
		end
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat") then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Activate()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Deactivate()
		end
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Workspace").MAP.Map.ArenaBOX.PunchingBagInGame["pretty ransom"].CFrame * CFrame.new(0, 0, 1)
	end
end)


_G.Hospital = false
CreateTogButton("Hospital Farm", "Auto Farms", (_G.Hospital), function()
	if _G.Hospital == true then
		_G.Hospital = false
	else
		_G.Hospital = true
	end

	while _G.Hospital == true and game:GetService("RunService").Heartbeat:Wait() do
		for i, v in pairs(game:GetService("Workspace").Ignored.HospitalJob:GetChildren()) do
			pcall(function()
				if v.Name == "Can I get the Red bottle" then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.HospitalJob.Red.CFrame
					wait(.1)
					fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob.Red.ClickDetector)
					wait(.1)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame
					wait(.1)
					fireclickdetector(v.ClickDetector)
					wait(.1)
				elseif v.Name == "Can I get the Blue bottle" then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.HospitalJob.Blue.CFrame
					wait(.1)
					fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob.Blue.ClickDetector)
					wait(.1)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame
					wait(.1)
					fireclickdetector(v.ClickDetector)
					wait(.1)
				elseif v.Name == "Can I get the Green bottle" then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.HospitalJob.Green.CFrame
					wait(.1)
					fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob.Green.ClickDetector)
					wait(.1)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame
					wait(.1)
					fireclickdetector(v.ClickDetector)
					wait(.1)
				end
			end)
		end
	end
end)

_G.ShoeJob = false
CreateTogButton("Shoe Farm", "Auto Farms", _G.ShoeJob, function()
	if _G.ShoeJob == true then
		_G.ShoeJob = false
	else
		_G.ShoeJob = true
	end

	while _G.ShoeJob == true and game:GetService("RunService").Heartbeat:Wait() do
		for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
			pcall(function()
				if v:IsA("MeshPart") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
					wait(.1)
					fireclickdetector(v.ClickDetector)
					wait(.1)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored["Clean the shoes on the floor and come to me for cash"].Head.CFrame
					wait(.1)
					fireclickdetector(game:GetService("Workspace").Ignored["Clean the shoes on the floor and come to me for cash"].ClickDetector)
					wait(.1)
				end
			end)
		end
	end
end)

_G.LettuceFarm = false
CreateTogButton("Lettuce Farm", "Auto Farms", (_G.LettuceFarm), function()
	if _G.LettuceFarm == true then
		_G.LettuceFarm = false
	else
		_G.LettuceFarm = true
	end

	while _G.LettuceFarm == true and game:GetService("RunService").Heartbeat:Wait() do
		repeat
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"].Head.CFrame * CFrame.new(0, 3, 0)
			fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"].ClickDetector)
			game:GetService("RunService").Heartbeat:Wait()
		until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Lettuce]")

		game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Lettuce]"))

		repeat
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Lettuce]"):Activate()
			game:GetService("RunService").Heartbeat:Wait()
		until not game:GetService("Players").LocalPlayer.Character:FindFirstChild("[Lettuce]")
	end
end)

_G.WeightFarm = false
CreateTogButton("Weight Farm", "Auto Farms", (_G.WeightFarm), function()
	if _G.WeightFarm == true then
		_G.WeightFarm = false
		wait(.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[HeavyWeights] - $250"].Head.CFrame * CFrame.new(0, 3, 0)
	else
		_G.WeightFarm = true
	end

	if _G.WeightFarm == true then
		game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools() 
	end

	if _G.WeightFarm == true and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
		repeat
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Ignored.Shop["[HeavyWeights] - $250"].Head.CFrame * CFrame.new(0, -5, 0)
			fireclickdetector(game:GetService("Workspace").Ignored.Shop["[HeavyWeights] - $250"].ClickDetector)
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			game:GetService("RunService").Heartbeat:Wait()
		until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]")
	end

	while _G.WeightFarm == true and game:GetService("RunService").Heartbeat:Wait() do
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]")) 
		end
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("[HeavyWeights]"):Activate() 
		end
		game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[HeavyWeights] - $250"].Head.CFrame * CFrame.new(0, -5, 0)
	end
end)

_G.ShotgunFarm = false
CreateTogButton("Shotgun Farm", "Auto Farms", (_G.ShotgunFarm), function()
	local GunButton = game:GetService("Workspace").Ignored.Shop["[Shotgun] - $1250"]
	local GunAmmoButton = game:GetService("Workspace").Ignored.Shop["20 [Shotgun Ammo] - $60"]
	local GunName = "[Shotgun]"

	local Registers = game:GetService("Workspace").Cashiers

	_G.Target = nil
	if _G.ShotgunFarm == false then
		_G.ShotgunFarm = true
	else
		_G.ShotgunFarm = false
	end

	pcall(function()
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate"):FindFirstChild("idle"):Destroy()
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if _G.ShotgunFarm == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = _G.Target
			return old(unpack(args))
		end
		return old(...)
	end)

	local mt = getrawmetatable(game)
	make_writeable(mt)

	local namecall = mt.__namecall

	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}

		if method == "Kick" then
			return wait(9e9)
		end

		return namecall(self, table.unpack(args))
	end)

	while _G.ShotgunFarm == true and game:GetService("RunService").Heartbeat:Wait() do
		ATM = nil
		for i, v in pairs(Registers:GetChildren()) do
			if v:FindFirstChild("Humanoid").Health >= 100 then
				ATM = v
			end
		end

		if ATM ~= nil then
			-- Checking Guns
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
			for i, v2 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v2.Name == GunName then

				else
					repeat
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = GunButton.Head.CFrame * CFrame.new(0, 3, 0)
						fireclickdetector(GunButton.ClickDetector)
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName)
				end
			end
			-- Ammo Checking
			if tonumber(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Inventory:FindFirstChild(GunName).Value) >= 500 then

			else
				repeat
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = GunAmmoButton.Head.CFrame * CFrame.new(0, 3, 0)
					fireclickdetector(GunAmmoButton.ClickDetector)
					game:GetService("RunService").Heartbeat:Wait()
				until tonumber(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Inventory:FindFirstChild(GunName).Value) >= 800
			end
			-- Farming
			repeat
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName)) 
				end
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = ATM.Open.CFrame * CFrame.new(0, 0, 3)
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName).Ammo.Value == 0 then
					game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName)) 
					repeat
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName).Ammo.Value >= 1
				end
				_G.Target = ATM.Open.Position
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName):Activate()
				end
				game:GetService("RunService").Heartbeat:Wait()
			until ATM.Humanoid.Health <= 0

			game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName):Deactivate()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()

			for i, v3 in pairs(game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("Drop"):GetChildren()) do
				if v3.Name == "MoneyDrop" and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v3.Position).Magnitude <= 15 then
					wait(0.2)
					fireclickdetector(v3.ClickDetector)
					wait(0.5)
				end
			end

			wait(1)

		end
	end
end)



_G.P90Farm = false
CreateTogButton("P90 Farm", "Auto Farms", (_G.P90Farm), function()
	local GunButton = game:GetService("Workspace").Ignored.Shop["[P90] - $1000"]
	local GunAmmoButton = game:GetService("Workspace").Ignored.Shop["120 [P90 Ammo] - $60"]
	local GunName = "[P90]"

	local Registers = game:GetService("Workspace").Cashiers

	_G.Target = nil
	if _G.P90Farm == false then
		_G.P90Farm = true
	else
		_G.P90Farm = false
	end

	pcall(function()
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate"):FindFirstChild("idle"):Destroy()
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if _G.P90Farm == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = _G.Target
			return old(unpack(args))
		end
		return old(...)
	end)

	local mt = getrawmetatable(game)
	make_writeable(mt)

	local namecall = mt.__namecall

	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}

		if method == "Kick" then
			return wait(9e9)
		end

		return namecall(self, table.unpack(args))
	end)

	while _G.P90Farm == true and game:GetService("RunService").Heartbeat:Wait() do
		ATM = nil
		for i, v in pairs(Registers:GetChildren()) do
			if v:FindFirstChild("Humanoid").Health >= 100 then
				ATM = v
			end
		end

		if ATM ~= nil then
			-- Checking Guns
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
			for i, v2 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v2.Name == GunName then

				else
					repeat
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = GunButton.Head.CFrame * CFrame.new(0, 3, 0)
						fireclickdetector(GunButton.ClickDetector)
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName)
				end
			end
			-- Ammo Checking
			if tonumber(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Inventory:FindFirstChild(GunName).Value) >= 500 then

			else
				repeat
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = GunAmmoButton.Head.CFrame * CFrame.new(0, 3, 0)
					fireclickdetector(GunAmmoButton.ClickDetector)
					game:GetService("RunService").Heartbeat:Wait()
				until tonumber(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Inventory:FindFirstChild(GunName).Value) >= 800
			end
			-- Farming
			repeat
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName)) 
				end
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = ATM.Open.CFrame * CFrame.new(0, 0, 3)
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName).Ammo.Value == 0 then
					game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName)) 
					repeat
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName).Ammo.Value >= 1
				end
				_G.Target = ATM.Open.Position
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName):Activate()
				end
				game:GetService("RunService").Heartbeat:Wait()
			until ATM.Humanoid.Health <= 0

			game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName):Deactivate()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()

			for i, v3 in pairs(game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("Drop"):GetChildren()) do
				if v3.Name == "MoneyDrop" and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v3.Position).Magnitude <= 15 then
					wait(0.2)
					fireclickdetector(v3.ClickDetector)
					wait(0.5)
				end
			end

			wait(1)

		end
	end
end)

_G.SMGFarm = false
CreateTogButton("SMG Farm", "Auto Farms", (_G.SMGFarm), function()
	local GunButton = game:GetService("Workspace").Ignored.Shop["[SMG] - $750"]
	local GunAmmoButton = game:GetService("Workspace").Ignored.Shop["80 [SMG Ammo] - $60"]
	local GunName = "[SMG]"

	local Registers = game:GetService("Workspace").Cashiers

	_G.Target = nil
	if _G.SMGFarm == false then
		_G.SMGFarm = true
	else
		_G.SMGFarm = false
	end

	pcall(function()
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate"):FindFirstChild("idle"):Destroy()
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if _G.SMGFarm == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = _G.Target
			return old(unpack(args))
		end
		return old(...)
	end)

	local mt = getrawmetatable(game)
	make_writeable(mt)

	local namecall = mt.__namecall

	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}

		if method == "Kick" then
			return wait(9e9)
		end

		return namecall(self, table.unpack(args))
	end)

	while _G.SMGFarm == true and game:GetService("RunService").Heartbeat:Wait() do
		ATM = nil
		for i, v in pairs(Registers:GetChildren()) do
			if v:FindFirstChild("Humanoid").Health >= 100 then
				ATM = v
			end
		end

		if ATM ~= nil then
			-- Checking Guns
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
			for i, v2 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v2.Name == GunName then

				else
					repeat
						game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = GunButton.Head.CFrame * CFrame.new(0, 3, 0)
						fireclickdetector(GunButton.ClickDetector)
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName)
				end
			end
			-- Ammo Checking
			if tonumber(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Inventory:FindFirstChild(GunName).Value) >= 500 then

			else
				repeat
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = GunAmmoButton.Head.CFrame * CFrame.new(0, 3, 0)
					fireclickdetector(GunAmmoButton.ClickDetector)
					game:GetService("RunService").Heartbeat:Wait()
				until tonumber(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Inventory:FindFirstChild(GunName).Value) >= 800
			end
			-- Farming
			repeat
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(GunName)) 
				end
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = ATM.Open.CFrame * CFrame.new(0, 0, 3)
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName).Ammo.Value == 0 then
					game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName)) 
					repeat
						game:GetService("RunService").Heartbeat:Wait()
					until game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName).Ammo.Value >= 1
				end
				_G.Target = ATM.Open.Position
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName):Activate()
				end
				game:GetService("RunService").Heartbeat:Wait()
			until ATM.Humanoid.Health <= 0

			game:GetService("Players").LocalPlayer.Character:FindFirstChild(GunName):Deactivate()
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()

			for i, v3 in pairs(game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("Drop"):GetChildren()) do
				if v3.Name == "MoneyDrop" and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v3.Position).Magnitude <= 15 then
					wait(0.2)
					fireclickdetector(v3.ClickDetector)
					wait(0.5)
				end
			end

			wait(1)

		end
	end
end)

AutoBuy2 = {}
for i, v11 in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
	if v11 ~= unpack(AutoBuy2) then
		if string.match(v11.Name, "Ammo") or string.match(v11.Name, "Grenade") and not string.match(v11.Name, "GrenadeLauncher") then
			CreateValueButton(v11.Name, "AutoBuy", "Purchase Amount", function(NumberValue)
				if NumberValue == nil then
					NumberValue = 1 
				end
				LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
				AmountBought = 0
				repeat
					wait(.4)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v11.Head.CFrame * CFrame.new(0, 3, 0)
					wait(.2)
					fireclickdetector(v11.ClickDetector)
					AmountBought = AmountBought + 1
				until AmountBought >= NumberValue
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
			end)
			table.insert(AutoBuy2, v11)
		else
			if v11.Name ~= unpack(AutoBuy2) then
				CreateRegButton(v11.Name, "AutoBuy", function()
					LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v11.Head.CFrame * CFrame.new(0, 3, 0)
					wait(.3)
					fireclickdetector(v11.ClickDetector)
					wait(.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
				end)
				table.insert(AutoBuy2, v11)
			end
		end
	end
end

CreateRegButton("Bank", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169);
end)

CreateRegButton("Gun Shop 1", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582, 7.172, -739.015);
end)

CreateRegButton("Gun Shop 2", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(475.022, 48.005, -603.737);
end)

CreateRegButton("Food Shop 1", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-333.492065, 23.6826477, -292.959625)
end)

CreateRegButton("Food Shop 2", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(301.780121, 49.2826538, -619.999634)
end)

CreateRegButton("School", "Teleports", function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-531.957458, 21.7499981, 232.015396)
end)

CreateRegButton("Patient Room", "Teleports", function()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-503.12213134766, 21.874998092651, 355.99603271484)
end)



CreateRegButton("BasePlate", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-448.505, 49.5, 447.75)
end)

CreateRegButton("BasketBall", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-908.901, 21.999, -500.778)
end)

CreateRegButton("Jail", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-294.162, 22.644, -111.716)
end)

CreateRegButton("Phone Shop", "Teleports", function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120.121, 22.946, -870.425)
end)

CreateRegButton("Trailer", "Teleports", function()
	game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-960.32373046875, -0.98445820808411, 468.53936767578)
end)

CreateRegButton("Hazard Room", "Teleports", function()
	game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-938.12951660156, -28.500003814697, 557.27923583984)
end)

CreateRegButton("Admin Base", "Teleports", function()
	game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.64001464844, -39.649200439453, -886.68939208984)
end)

CreateRegButton("Kool Klub", "Teleports", function()
	game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265.18017578125, 48.527381896973, -446.37243652344)
end)

CreateRegButton("Boxing Club", "Teleports", function()
	game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-234.94459533691, 22.05902671814, -1119.3583984375)
end)

e = 0
for i, v93 in pairs(game:GetService("Workspace"):FindFirstChild("Cashiers"):GetChildren()) do
	e = e + 1 
	CreateRegButton("ATM"..e, "Teleports", function()
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v93.Open.CFrame * CFrame.new(0, 1, 0)
	end)
end


CreateRegButton("Astronaut", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
end)

CreateRegButton("Bubbly", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
	Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
	Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
end)

CreateRegButton("Cartoony", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
end)

CreateRegButton("Elder", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
end)

CreateRegButton("Knight", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
end)

CreateRegButton("Levitation", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
end)

CreateRegButton("Mage", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
end)

CreateRegButton("Ninja", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
end)

CreateRegButton("Pirate", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
end)

CreateRegButton("Robot", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
end)

CreateRegButton("Stylish", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
end)

CreateRegButton("SuperHero", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
end)

CreateRegButton("Toy", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
end)

CreateRegButton("Vampire", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
end)

CreateRegButton("Werewolf", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
end)

CreateRegButton("Zombie", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
end)

CreateRegButton("Ghost", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
	Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
	Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
end)

CreateRegButton("Sneaky", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
end)

CreateRegButton("Anthro", "Animations", function()
	Animate = game.Players.LocalPlayer.Character.Animate
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
end)

CreateValueButton("Money Changer", "Money", "Money Here", function(NumberInput)
	game.Players.LocalPlayer.PlayerGui.Framework.CurrencySound:Play()
	game.Players.LocalPlayer.DataFolder.Currency.Value = NumberInput
	game.Players.LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text = "$"..C(NumberInput)
end)


_G.MoneyRound = false
CreateTogButton("Grab Money Around", "Combat", (_G.MoneyRound), function()
	if _G.MoneyRound == true then
		_G.MoneyRound = false
	else
		_G.MoneyRound = true
	end

	while _G.MoneyRound == true and game:GetService("RunService").Heartbeat:Wait() do
		game.Players.LocalPlayer.PlayerGui.Framework.CurrencySound.Volume = 0
		for e, f in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
			if f.Name == "MoneyDrop" then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - f.Position).Magnitude <= 50 then
					wait(0)
					fireclickdetector(f:FindFirstChild("ClickDetector"), 4)
				end
			end
		end

		local function J(K, L)
			local M = (K.Position - L.Position).magnitude
			if M <= 50 then
				fireclickdetector(L:FindFirstChild("ClickDetector"), 4)
				return M
			end
		end
		for N, O in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - O.Position).Magnitude <= 50 then
				local P = O
				J(game.Players.LocalPlayer.Character.HumanoidRootPart, O)
				wait()
			end
		end
	end
end)

_G.DropTotal = false
CreateNumberToggle("Drop Cash [Tax]", "Money", "Amount Here", function(Input)
	if _G.DropTotal == true then
		_G.DropTotal = false
	else
		_G.DropTotal = true
	end

	Currency = game:GetService("Players").LocalPlayer:WaitForChild("DataFolder"):WaitForChild("Currency").Value
	if Currency < Input then
		CreateNotification("You Don't Have Enough To Drop This!", 5) 
	end
	if Currency > Input then
		FinalAmount = Currency - Input
		CreateNotification("Drop Amount : "..tostring(Input).." Final Amount : "..tostring(FinalAmount), 10) 
		repeat
			game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney", "10000")
			game:GetService("RunService").Heartbeat:Wait()
		until _G.DropTotal == false or game:GetService("Players").LocalPlayer:WaitForChild("DataFolder"):WaitForChild("Currency").Value <= FinalAmount
		if _G.DropTotal == true then
			CreateNotification("Cash Dropped!", 5)
		end
		if _G.DropTotal == false then
			CreateNotification("Cash Drop Stopped!", 5) 
		end
		_G.DropTotal = false
	end
end)

_G.CustomDrop = false
CreateNumberToggle("Drop Cash [Regular]", "Money", "100-10000", function(Input)
	if _G.CustomDrop == true then
		_G.CustomDrop = false
	else
		_G.CustomDrop = true
	end

	if Input < 100 then
		Input = 100
	elseif Input > 10000 then
		Input = 10000
	end

	while _G.CustomDrop == true and game:GetService("RunService").Heartbeat:Wait() do
		game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney", tostring(Input))
	end
end)

_G.InvisibleCash = false
CreateTogButton("Hide Money [NOT FE]",  "Money", (_G.InvisibleCash), function()
	if _G.InvisibleCash == true then
		_G.InvisibleCash = false
		for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
			if v.Name == "MoneyDrop" then
				for i, v2 in pairs(v:GetChildren()) do
					if v2:IsA("Decal") then
						v2.Transparency = 0 
					end
				end
				v.Transparency = 0 
			end
		end
	else
		_G.InvisibleCash = true
		for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
			if v.Name == "MoneyDrop" then
				for i, v2 in pairs(v:GetChildren()) do
					if v2:IsA("Decal") then
						v2.Transparency = 1
					end
				end
				v.Transparency = 1
			end
		end
	end
end)

CreateRegButton("Pick Dropped Cash", "Money", function()
	for i, v98 in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
		if v98.Name == "MoneyDrop" then
			LSSS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v98.CFrame
			wait(.6)
			fireclickdetector(v98.ClickDetector)
			wait(.6)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LSSS
		end
	end
end)

CreateRegButton("Cash ESP", "Money", function()
	local ESPholder = Instance.new("Folder", game.CoreGui)
	function cham(object)
		if object.Name == "MoneyDrop" then
			local a = Instance.new("BoxHandleAdornment", ESPholder)
			a.Adornee = object
			a.AlwaysOnTop = true
			a.ZIndex = 10
			a.Size = object.Size
			a.Transparency = 0.3
			a.Color = object.BrickColor
			local bill = object:WaitForChild("BillboardGui")
			bill.AlwaysOnTop = true
			bill.Size = UDim2.new(2, 10, 1, 5)
			spawn(function()
				while true do
					if object.Parent.ChildRemoving:wait() == object then
						a:Destroy()
						break
					end
				end
			end)
		end
	end
	for i, v in next, game.Workspace.Ignored.Drop:GetChildren() do
		cham(v)
	end
	game.Workspace.Ignored.Drop.ChildAdded:connect(cham)
end)

CreateRegButton("Cash Scaffold", "Money", function()
	game:GetService("RunService").Heartbeat:Connect(function()
		for _, v in pairs(workspace:FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
			if v.Name == 'MoneyDrop' then
				v.Position = game:GetService('Players').LocalPlayer.Character:FindFirstChild('Head').CFrame.p + Vector3.new(0, 1.5, -22);
				v.Anchored = false;
			end
		end;
	end)
end)


CreateRegButton("Cash Float", "Money", function()
	spawn(function()
		repeat
			game:GetService("RunService").Heartbeat:wait()
			settings().Physics.AllowSleep = false
			settings().Physics.ThrottleAdjustTime = math.huge - math.huge
			setsimulationradius(1e9, 1e9)
			game:GetService("RunService").Stepped:wait()
		until nil
	end) 
	local function zeroGrav(part) 
		if part:FindFirstChild("BodyForce") then return end 
		local temp = Instance.new("BodyForce") 
		temp.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
		temp.Parent = part 
	end 

	for i,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("Part") and v.Anchored == false then
			if not (v:IsDescendantOf(game.Players.LocalPlayer.Character)) then
				zeroGrav(v)
			end
		end
	end

	workspace.DescendantAdded:Connect(function(part)
		if part:IsA("Part") and part.Anchored == false then
			if not (part:IsDescendantOf(game.Players.LocalPlayer.Character)) then
				zeroGrav(part)
			end
		end
	end)
end)


CreateRegButton("Bring Money", "Money", function()
	local e = Instance.new("Part", game.Workspace)
	e.Name = "Part"
	e.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(1,1,1)
	e.Anchored = true
	e.CanCollide = false
	e.Transparency = 1

	local Attachment1 = Instance.new("Attachment", e)

	for i,v in pairs(game:GetService("Workspace").Ignored:GetDescendants()) do
		if v.Name == "MoneyDrop" then
			for _, x in next, v:GetChildren() do
				if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
					x:Destroy()
				end
			end
			if v:FindFirstChild("Attachment") then
				v:FindFirstChild("Attachment"):Destroy()
			end
			if v:FindFirstChild("AlignPosition") then
				v:FindFirstChild("AlignPosition"):Destroy()
			end
			if v:FindFirstChild("Torque") then
				v:FindFirstChild("Torque"):Destroy()
			end
			v.CanCollide = false
			local Torque = Instance.new("Torque", v)
			Torque.Torque = Vector3.new(0, 0, 0)
			local AlignPosition = Instance.new("AlignPosition", v)
			local Attachment2 = Instance.new("Attachment", v)
			Torque.Attachment0 = Attachment2
			AlignPosition.MaxForce = 9999999999999999
			AlignPosition.MaxVelocity = math.huge
			AlignPosition.Responsiveness = 200
			AlignPosition.Attachment0 = Attachment2 
			AlignPosition.Attachment1 = Attachment1
		end
	end		
end)

CreateRegButton("Cash Fling", "Money", function()
	for _, v in pairs(workspace:FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
		if v.Name == 'MoneyDrop' then
			local BodyPosition = Instance.new('BodyPosition', v);
			BodyPosition.D = 0;
			BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
			BodyPosition.P = 15000;
		end;
	end;
end)

CreateRegButton("Cash Destroy", "Money", function()
	for e, v in pairs(workspace:FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
		if v.Name == 'MoneyDrop' then
			v:Destroy();
		end;
	end;
end)

CreateRegButton("Cash Spin", "Money", function()
	for _, v in pairs(workspace:FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
		if v.Name == "MoneyDrop" then
			local BodyPosition = Instance.new('BodyPosition', v) ;
			BodyPosition.Parent = v;
			local BodyAngularVelocity = Instance.new('BodyAngularVelocity');
			BodyAngularVelocity.Parent = v;
			BodyAngularVelocity.AngularVelocity = Vector3.new(0, 100, 0);
			BodyAngularVelocity.MaxTorque = Vector3.new(0, 200, 0);
		end;
	end;
end)


CreateRegButton("No Cash Cooldown", "Money", function()
	local Workspace = game.Workspace
	local Ignored = Workspace.Ignored
	local Drops = Ignored.Drop
	local LocalPlayer = game.Players.LocalPlayer
	local Char = LocalPlayer.Character
	local Hum = Char.HumanoidRootPart
	local AMT = 10000
	game.ReplicatedStorage.MainEvent:FireServer("DropMoney",AMT)
	while wait(2.10) do
		for i, v in pairs(Drops:GetChildren()) do
			if v.Name == "MoneyDrop" and (Hum.Position - v.Position).Magnitude < 20 then
				local clo = v:Clone()
				wait()
				clo.Parent = Drops
				clo.Position = Hum.Position
				clo.CFrame = Hum.CFrame
				wait()
				game:GetService("Players").LocalPlayer.DataFolder.Currency.Value = game:GetService("Players").LocalPlayer.DataFolder.Currency.Value - 10000
				if game:GetService("Players").LocalPlayer.DataFolder.Currency.Value < 10000 then
					break
				end
			end
		end
	end
	wait()
end)


CreateRegButton("Buy Money Guns", "Money", function()
	local FlashLight = game:GetService("Workspace").Ignored.Shop["[Money Gun] - $777"]
	local LS = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	t = 0
	repeat
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = FlashLight.Head.CFrame * CFrame.new(0, -5, 0)
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(11)
		fireclickdetector(FlashLight.ClickDetector)
		for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "[Money Gun]" then
				t = t + 1 
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
		game:GetService("RunService").Heartbeat:Wait()
	until t >= 10 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LS
end)

CreateRegButton("Equip All Money Guns", "Money", function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name == '[Money Gun]' then
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
end)

_G.MoneyGunActiavte = false
CreateTogButton("Money Gun Actiavte", "Money", (_G.MoneyGunActiavte), function()
	if _G.MoneyGunActiavte == true then
		_G.MoneyGunActiavte = false
	else
		_G.MoneyGunActiavte = true
	end

	while _G.MoneyGunActiavte == true and game:GetService("RunService").Stepped:Wait() do
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == '[Money Gun]' then
				v:Activate()
			end
		end
	end
end)

_G.Invite = false
CreateTogButton("Spam Crystal Central Invite", "Extras", (_G.Invite), function()
	if _G.Invite == true then
		_G.Invite = false
	else
		_G.Invite = true
	end

	while _G.Invite == true and wait(1) do
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(".gg/crystalcommunity", "All") 
	end
end)

_G.SpamMessage = false
CreateToggleSearch("Spam Message", "Extras", (_G.SpamMessage), function(Input)
	if _G.SpamMessage == true then
		_G.SpamMessage = false
	else
		_G.SpamMessage = true
	end

	while _G.SpamMessage == true and wait(1.5) do
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Input, "All") 
	end
end)

_G.SpamPhones = false
CreateTogButton("Spam Phone Calls", "Extras", (_G.SpamPhones), function()
	if _G.SpamPhones == true then
		_G.SpamPhones = false
	else
		_G.SpamPhones = true
	end

	while _G.SpamPhones == true and wait(1) do
		for i, v in pairs(game:GetService("Players"):GetChildren()) do
			pcall(function()
				if v.DataFolder.Information.AirPlaneMode.Value ~= 1 then
					game:GetService("ReplicatedStorage").MainEvent:FireServer("PhoneCall", v.Name)
					wait(math.random(0, 1))
				end
			end)
		end
	end
end)


_G.Stick = false
CreateToggleSearch("Stick To Player", "Extras", (_G.Stick), function(Input)
	if _G.Stick == true then
		_G.Stick = false
	else
		_G.Stick = true
	end

	if _G.Stick == true then
		for i, v in pairs(GetPlayer(Input)) do
			pcall(function()
				while _G.Stick == true and game:GetService("RunService").Heartbeat:Wait() do
					game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game:GetService("Players")[v].Character:FindFirstChild("HumanoidRootPart").CFrame
				end
			end)
		end
	else
	end
end)

_G.RPGFire = false
_G.RPGTarget = false
CreateRegButton("RPG Snipe", "Extras", function()
	CreateNotification("Keybind Is V")
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if _G.RPGFire == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = _G.RPGTarget
			return old(unpack(args))
		end
		return old(...)
	end)
	game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
		if Key ~= "v" then return end
		if Key == "v" then
			game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
			wait()
			if _G.RPGFire == false and _G.RPGTarget == false and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[RPG]") then
				for i, v in pairs(game:GetService("Players"):GetPlayers()) do
					if game:GetService("Players").LocalPlayer:GetMouse().Target:FindFirstAncestor(v.Name) then
						_G.RPGFire = true
						LastSpot = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

						game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[RPG]"))
						if game:GetService("Players").LocalPlayer.Character:WaitForChild("[RPG]").Ammo.Value == 0 then
							game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChild("[RPG]"))
							repeat
								wait()
							until game:GetService("Players").LocalPlayer.Character:FindFirstChild("[RPG]").Ammo.Value == 1
						end

						spawn(function()
							wait(.3)
							pcall(function()
								game:GetService("Players").LocalPlayer.Character:FindFirstChild("[RPG]"):Activate()
							end)
							wait(.7)
							_G.RPGFire = false
							_G.RPGTarget = false
						end)
						repeat
							_G.RPGTarget = v.Character.Head.Position
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.Head.Position + Vector3.new(0, 15, 0))
							game:GetService("RunService").Heartbeat:Wait()
						until _G.RPGTarget == false
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = LastSpot
					end
				end
			elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[RPG]") then
				CreateNotification("Please Purchase A RPG Before Using.")
			elseif _G.RPGFire == true and _G.RPGTarget == true then
				CreateNotification("Already Targetting")
			end
		end
	end)
end)


CreateRegButton("StopSing Dick", "Extras", function()
	if Plr.Character:FindFirstChild("[StopSign]") or Plr.Backpack:FindFirstChild("[StopSign]") then
		Plr.Character.Humanoid:UnequipTools()
		wait(0.1)
		Plr.Character.Humanoid:EquipTool(Plr.Backpack["[StopSign]"])
		Plr.Character["[StopSign]"].Sign:Destroy()
		Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Plr.Character["[StopSign]"].Handle.Orientation = Vector3.new(0, 180, 0)
		wait(0.2)
		Plr.Character["[StopSign]"].Handle.Position = Vector3.new(806.5, 47, -547)
		Plr.Character.HumanoidRootPart.CFrame = LastPos
	end
end)


CreateRegButton("Bat Dick", "Extras", function()
	if Plr.Character:FindFirstChild("[Bat]") or Plr.Backpack:FindFirstChild("[Bat]") then
		Plr.Character.Humanoid:UnequipTools()
		wait(0.1)
		Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Bat]"])
		Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Plr.Character["[Bat]"].Handle.Orientation = Vector3.new(0, 0, 90)
		Plr.Character["[Bat]"].Handle.Position = Vector3.new(806, 47, -547)
		Plr.Character.HumanoidRootPart.CFrame = LastPos
	end	
end)

CreateRegButton("SledgeHammer Dick", "Extras", function()
	if Plr.Character:FindFirstChild("[SledgeHammer]") or Plr.Backpack:FindFirstChild("[SledgeHammer]") then
		Plr.Character.Humanoid:UnequipTools()
		wait(0.1)
		Plr.Character.Humanoid:EquipTool(Plr.Backpack["[SledgeHammer]"])
		Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Plr.Character["[SledgeHammer]"].Part.Orientation = Vector3.new(0, 180, 0)
		Plr.Character["[SledgeHammer]"].Part.Position = Vector3.new(804, 47, -547)
		Plr.Character["[SledgeHammer]"].Part.Name = "BALLS"
		wait(0.1)
		Plr.Character["[SledgeHammer]"].Part.Orientation = Vector3.new(-90, 90, 180)
		Plr.Character["[SledgeHammer]"].Part.Position = Vector3.new(806, 47, -547)
		Plr.Character["[SledgeHammer]"].Part.Name = "SHAFT"
		Plr.Character.HumanoidRootPart.CFrame = LastPos
	end
end)

CreateRegButton("Knife Dick", "Extras", function()
	if Plr.Character:FindFirstChild("[Knife]") or Plr.Backpack:FindFirstChild("[Knife]") then
		Plr.Character.Humanoid:UnequipTools()
		wait(0.1)
		Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Knife]"])
		Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		Plr.Character["[Knife]"].Handle.Orientation = Vector3.new(0, 180, 0)
		wait(0.2)
		Plr.Character["[Knife]"].Handle.Position = Vector3.new(804.3, 47, -547)
		Plr.Character.HumanoidRootPart.CFrame = LastPos
	end
end)

CreateRegButton("Holy Cross", "Extras", function()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == '[SledgeHammer]' then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
	end)
	wait(.9)
	local targetpos = CFrame.new(-899.925659, 21.75, -297.100342)
	local plr = game.Players.LocalPlayer
	local pos = plr.Character.HumanoidRootPart.Position
	if not game.Players.LocalPlayer.Character:FindFirstChild("[SledgeHammer]") then
		plr.Character.HumanoidRootPart.CFrame = targetpos
		local cd = game:GetService("Workspace").Ignored.Shop["[SledgeHammer] - $350"]:FindFirstChild("ClickDetector")
		wait(.9)
		fireclickdetector(cd)
		wait(.4)
		game.Players.LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]").Parent = plr.Character
		wait(.9)
		fireclickdetector(cd)
		wait(.4)
		game.Players.LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]").Parent = plr.Character
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.Name == '[SledgeHammer]' then
				v:GetChildren()[3]:Destroy()
			end
		end
		local sd = plr.Character:FindFirstChild("[SledgeHammer]")
		sd.Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
		sd.GripForward = Vector3.new(0, 0, -1)
		sd.GripPos = Vector3.new(-2.4, -0.7, 0)
		sd.GripUp = Vector3.new(1, 0, 0)
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
	end
	local sd = plr.Character:FindFirstChild("[SledgeHammer]")
	sd.Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
	sd.GripForward = Vector3.new(0, 0, -1)
	sd.GripPos = Vector3.new(-2.4, -0.7, 0)
	sd.GripUp = Vector3.new(1, 0, 0)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
end)


CreateNote("Credits $ Crystal#0001 | Owner", "Credits")
CreateNote("Credits Polar7#0001| Co-Owner", "Credits")
CreateNote("Credits Ruzzell78#4635 | Some Features", "Credits")
CreateNote("Credits The_KillerHood#6712 | Some Features", "Credits")
CreateNote("Credits Nighter#0001 | Semi Godmode + Walk On Walls", "Credits")


if syn then
	syn.request({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = "crystalcommunity"
			},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		}),
	})	
end
