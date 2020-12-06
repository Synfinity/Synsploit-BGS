-- Gui to Lua
-- Version: 3.2

-- Instances:

local ImStillStanding = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local bottomBar = Instance.new("ImageLabel")
local Bells = Instance.new("TextButton")
local Ayano = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local topBar = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local topBarOL = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")

--Properties:

ImStillStanding.Name = "ImStillStanding"
ImStillStanding.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ImStillStanding.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ImStillStanding
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(0, 388, 0, 100)

bottomBar.Name = "bottomBar"
bottomBar.Parent = Frame
bottomBar.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
bottomBar.BackgroundTransparency = 1.000
bottomBar.BorderSizePixel = 0
bottomBar.Position = UDim2.new(0.0885188431, 0, 0.174447179, 0)
bottomBar.Size = UDim2.new(0, 171, 0, 265)
bottomBar.ZIndex = 0
bottomBar.Image = "rbxassetid://1635091793"
bottomBar.ImageColor3 = Color3.fromRGB(36, 36, 36)
bottomBar.ScaleType = Enum.ScaleType.Tile

Bells.Name = "Bells"
Bells.Parent = bottomBar
Bells.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Bells.BorderColor3 = Color3.fromRGB(49, 49, 49)
Bells.BorderSizePixel = 3
Bells.Position = UDim2.new(0, 0, 0.735849082, 0)
Bells.Size = UDim2.new(0, 171, 0, 47)
Bells.Font = Enum.Font.Fantasy
Bells.Text = "Bell Autofarm"
Bells.TextColor3 = Color3.fromRGB(255, 255, 255)
Bells.TextScaled = true
Bells.TextSize = 14.000
Bells.TextWrapped = true

Ayano.Name = "Ayano"
Ayano.Parent = bottomBar
Ayano.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Ayano.BorderColor3 = Color3.fromRGB(49, 49, 49)
Ayano.BorderSizePixel = 3
Ayano.Position = UDim2.new(0, 0, 0.501886845, 0)
Ayano.Size = UDim2.new(0, 171, 0, 47)
Ayano.Font = Enum.Font.Fantasy
Ayano.Text = "Ayano's GUI"
Ayano.TextColor3 = Color3.fromRGB(255, 255, 255)
Ayano.TextScaled = true
Ayano.TextSize = 14.000
Ayano.TextWrapped = true

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = bottomBar
Walkspeed.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Walkspeed.BorderColor3 = Color3.fromRGB(49, 49, 49)
Walkspeed.BorderSizePixel = 3
Walkspeed.Position = UDim2.new(0, 0, 0.275471747, 0)
Walkspeed.Size = UDim2.new(0, 171, 0, 47)
Walkspeed.Font = Enum.Font.Fantasy
Walkspeed.Text = "Free Walkspeed Gamepass"
Walkspeed.TextColor3 = Color3.fromRGB(255, 255, 255)
Walkspeed.TextScaled = true
Walkspeed.TextSize = 14.000
Walkspeed.TextWrapped = true

topBar.Name = "topBar"
topBar.Parent = Frame
topBar.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
topBar.BackgroundTransparency = 1.000
topBar.BorderSizePixel = 0
topBar.Position = UDim2.new(0.0885188282, 0, 0.156019673, 0)
topBar.Size = UDim2.new(0, 171, 0, 57)
topBar.ZIndex = 3
topBar.Image = "rbxassetid://1635091793"
topBar.ImageColor3 = Color3.fromRGB(53, 53, 53)
topBar.ScaleType = Enum.ScaleType.Tile

TextLabel.Parent = topBar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 171, 0, 57)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.AmaticSC
TextLabel.Text = "Synsploit: BGS"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

topBarOL.Name = "topBarOL"
topBarOL.Parent = Frame
topBarOL.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
topBarOL.BackgroundTransparency = 1.000
topBarOL.BorderSizePixel = 0
topBarOL.Position = UDim2.new(0.0885188431, 0, 0.156019658, 0)
topBarOL.Size = UDim2.new(0, 171, 0, 141)
topBarOL.ZIndex = 2
topBarOL.Image = "rbxassetid://1"
topBarOL.ScaleType = Enum.ScaleType.Tile

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(36, 36, 36)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(53, 53, 53))}
UIGradient.Rotation = 270
UIGradient.Parent = topBarOL

-- Scripts:

local function ONCW_fake_script() -- Bells.LocalScript 
	local script = Instance.new('LocalScript', Bells)

	function Clicked() 
		_G.bells = true
		for i,v in pairs(game:GetService("Workspace").ChristmasMap.ChristmasTree:GetDescendants()) do
			if v.ClassName == "MeshPart" or v.ClassName == "Part" then
				v.CanCollide = false
				for a,b in pairs(game:GetService("Workspace").PresentRainSign:GetChildren()) do
					if b.ClassName == "Part" or b.ClassName == "MeshPart" then
						b.CanCollide = false
					end
				end
			end
		end
		while _G.bells == true do
			wait()
			for i,v in pairs(game:GetService("Workspace").ChristmasMap.Houses:GetChildren()) do
				if v.Name == "House" and  v.Activation.Root.Decal.Transparency <= 0.1 then
					if game.Players.LocalPlayer:DistanceFromCharacter(v.Activation.Tag.Position) < 150 then
						wait()
						local hum = game.Players.LocalPlayer.Character.Humanoid
						hum:MoveTo(v.Activation.Tag.Position)
						hum.MoveToFinished:wait()
						wait(3)
						hum.WalkSpeed = 100
					end
				end
			end
		end
	end
	script.Parent.MouseButton1Down:connect(Clicked) 
	
	
end
coroutine.wrap(ONCW_fake_script)()
local function HNYNG_fake_script() -- Ayano.LocalScript 
	local script = Instance.new('LocalScript', Ayano)

	function Clicked() 
		local LatestSupportedVersion = 1860
	
	
		function scr()
			game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ScreenGui")
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
	
			local library =  loadstring(game:HttpGet("https://pastebin.com/raw/EBSNtywp", true))()
	
			local f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
			repeat
				wait(.1)
				f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
			until f ~= nil
			local Module = game:GetService("ReplicatedStorage").Assets.Modules.ImageService
	
			local pets = debug.getupvalues(require(Module))[1]
	
			local farm = library:CreateWindow('Auto Farm')
	
			local petlist = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.PetModule)
			local hatlist = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.HatModule)
			local raritys = {}
			local moneyz = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService)
	
			local currencys = {}
			local canafford = false
			for i,d in pairs(moneyz) do
				if string.find(i,"Changed") ~= nil then
					currencys[i:sub(1, #i-7)] = debug.getupvalues(d)[3]
				end
			end
			for i,d in pairs(petlist) do
				if d["Rarity"] ~= "Legendary" then
					raritys[d["Rarity"]] = true
				end
			end
			local eggs = library:CreateWindow('Auto Egg')
			local hats = library:CreateWindow("Hats")
			local misc = library:CreateWindow('Misc')
			misc:Section("Swap")
			local worlds = {}
			local loadworlds = false
			repeat wait(0.1)
				local modul = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.WorldService).SetWorld
				for i,d in pairs(debug.getupvalue(modul,3)) do
					loadworlds = true
				end
			until loadworlds
			local tpyes = require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.WorldService)
			for i,d in pairs(debug.getupvalue(tpyes.SetWorld,3)) do
				table.insert(worlds,i)
			end
			misc:Dropdown("World", {
				location = _G,
				flag = "world",
				list = worlds
			})
	
			misc:Button('Swap World', function()
				if _G.world ~= nil then
					tpyes.SetWorld(tpyes,_G.world)
				end
			end)
			misc:Section("Unlock")
			misc:Button('Unlock Islands', function()
				for i , v in pairs(game:GetService("Workspace").FloatingIslands:GetChildren()) do
					if #v:GetChildren() > 0 then
						for i ,v in pairs(v:GetChildren()) do
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Collision.CFrame
							wait(1)
						end
					end
				end
			end)
			misc:Section("Collect")
			misc:Button("Collect chests", function()
				for i,v in pairs(game:GetService("Workspace").FloatingIslands:GetDescendants()) do 
					if v.Name == "Chest" and v.ClassName == "Model" then 
						f["FireServer"](f, "TeleportToCheckpoint", v.Parent.Name)
						wait(0.25)
						repeat
							f["FireServer"](f, "CollectChestReward", v.Parent.Name)
							wait()
						until v.Regen.Enabled == true
						wait(0.25)
					end
				end
			end)
			--end)
			misc:Section("Misc")
			local cccc = require(game:GetService("ReplicatedStorage").Assets.Modules.EggService)
			repeat
				wait()
				cccc = require(game:GetService("ReplicatedStorage").Assets.Modules.EggService)
			until cccc ~= nil
			local hat1 = cccc.HatchEgg
			local hat3 = cccc.MultiHatchEgg
			misc:Toggle('Skip Animation', {flag = "soa"},function(gh)
				cccc.HatchEgg = (gh == true and function()end or hat1)
				cccc.MultiHatchEgg = (gh == true and function()end or hat3)
			end)
	
			local eggtps = {}
			local eggsnames = {}
			local egginfo = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.EggModule)
			local crateinfo = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.CrateModule)
			for i,d in pairs(require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.EggModule)) do
				if game.Workspace.Eggs:FindFirstChild(i) then
					eggtps[i] = game.Workspace.Eggs[i].Hotkey
				end
				table.insert(eggsnames, i)
			end
			for i,d in pairs(require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.CrateModule)) do
				if game.Workspace.Eggs:FindFirstChild(i) then
					eggtps[i] = game.Workspace.Eggs[i].Hotkey
				end
				table.insert(eggsnames, i)
			end
			local function ownsgamepass(userid,gamepassid)
				local mar = game:GetService"MarketplaceService"
				local s,res = pcall(mar.UserOwnsGamePassAsync,mar,userid,gamepassid)
				if not s then
					res = false
				end
				return res
			end
	
			local triple = ownsgamepass(game.Players.LocalPlayer.UserId, 5502695)
			eggs:Section("Open Eggs / Crates")
			eggs:SearchBox("Egg", {
				location = eggs.flags,
				flag = "egg",
				list = eggsnames
			}, function()end)
	
			eggs:Toggle('Buy Eggs', {flag = "eggs"})
			if triple then
				eggs:Toggle('Buy Eggs (3x)', {flag = "three"})
			end
			eggs:Section("Delete Pets")
			for i,d in pairs(raritys) do
				eggs:Toggle('Delete '..i, {flag = tostring(i)})
			end
			hats:Section("Delete Hats")
			for i,d in pairs(raritys) do
				hats:Toggle('Delete '..i, {flag = tostring(i)})
			end
			hats:Toggle('Delete Easy Legendary',{flag = 'easyleg'})
			eggs:Toggle('Delete Easy Legendary',{flag = 'easyleg'})
			eggs:Section("Upgrade Pets")
	
			eggs:Toggle('Make Pets Shiny', {flag = "shiny"})
	
			eggs:Toggle('Enchant Pets', {flag = "upgrade"})
	
			local sell = false
	
			function toTarget(pos, targetPos, targetCFrame)
				local tween_s = game:service"TweenService"
				local info = TweenInfo.new((targetPos - pos).Magnitude/80, Enum.EasingStyle.Quad)
				local tic_k = tick()
				local tween, err = pcall(function()
					local tween = tween_s:Create(plr.Character["HumanoidRootPart"], info, {CFrame = targetCFrame})
					tween:Play()
				end)
				if not tween then return err end
			end
			spawn(function()
				while wait() do
					if eggs.flags.eggs == true or eggs.flags.three == true then
						if eggs.flags.egg ~= nil then
							if (egginfo[eggs.flags.egg] or crateinfo[eggs.flags.egg]) then
								local cost = (egginfo[eggs.flags.egg] or crateinfo[eggs.flags.egg]).Cost
								local e = 0
								e = cost[2]
								if eggs.flags.three then 
									e = e * 3
								end
								if currencys[cost[1]] and sell ~= true then
									if currencys[cost[1]].Value >= e then
										canafford = true
										if eggtps[eggs.flags.egg] then
											if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
												if (eggtps[eggs.flags.egg].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,eggtps[eggs.flags.egg].Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
													toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,eggtps[eggs.flags.egg].Position,eggtps[eggs.flags.egg].CFrame)
												else
													if eggs.flags.three == true then
														f["FireServer"](f, "PurchaseEgg",eggs.flags.egg, 'Multi')
													else
														f["FireServer"](f, "PurchaseEgg",eggs.flags.egg)
													end
												end
											end
										end
									else
										canafford = false
									end
								else
									canafford = false
								end
							else
								canafford = false
							end
						else
							canafford = false
						end
					else
						canafford = false
					end
				end
			end)
			farm:Section("Farm")
			farm:Toggle('Auto-Bubble Blow', {flag = 'Bubble'})
	
	
			farm:Toggle('Auto-Sell', {flag = 'Sell'})
	
			farm:Box('Radius', {
				flag = "Rad",
				type = 'number'
			})
	
			farm:Toggle("Farm Drops", {flag = 'Drops'})
			farm:Section("Minigames")
			farm:Toggle('Auto-Guess Pet', {flag = 'Guess'})
	
			farm:Toggle('Friendly mode', {flag = 'Friendly'})
	
			farm:Toggle('Spin To Win', {flag = 'spt'})
	
			farm:Toggle('Win Doggo', {flag = 'dog'})
	
			farm:Credits()
	
			spawn(function()
				while wait(.1) do
					if farm.flags.spt then
						f['FireServer'](f,'SpinToWin')
					end
				end
			end)
	
			spawn(function()
				while wait(.1) do
					if farm.flags.dog then
						f:FireServer("DoggyJumpWin", 4)
					end
				end
			end)
	
			spawn(function()
				while wait(.1) do
					if farm.flags.Bubble then
						if f then
							f['FireServer'](f,'BlowBubble')
						else
							f = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.InputService).UpdateClickDelay)[1]
						end
					end
				end
			end)
	
			spawn(function()
				while wait(.1) do
					if farm.flags.Sell then
						local a = string.split(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:WaitForChild("StatsFrame").Bubble.Amount.Text,'/')
						if a[1] == a[2] then
							sell = true
							f['FireServer'](f,"Teleport","Sell")
							wait(.1)
							f['FireServer'](f,'Sell')
						else
							sell = false
						end
					end
				end
			end)
	
	
			game:GetService("Workspace").GuessThatPet.GuessThatPetBoard.SurfaceGui.Frame.Main.Pet.Changed:Connect(function ()
				if farm.flags.Guess then
					for i,d in pairs(pets) do
						if d == game:GetService("Workspace").GuessThatPet.GuessThatPetBoard.SurfaceGui.Frame.Main.Pet.Image then
							if farm.flags.Friendly then
								game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "All")
							end
							game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "All")
						end
					end
				end
			end)
	
	
	
	
			local range = 100
	
			local plr = game.Players.LocalPlayer
			local char = plr.Character
			local root = char.HumanoidRootPart
	
			function toTarget(pos, targetPos, targetCFrame)
				local tween, err = pcall(function()local tween = game:service"TweenService":Create(plr.Character["HumanoidRootPart"], TweenInfo.new((targetPos - pos).Magnitude/50, Enum.EasingStyle.Quad), {CFrame = targetCFrame})tween:Play()end)
				if not tween then return err end
			end
	
			--game:GetService('RunService').Stepped:connect(function()
			--    if farm.flags.Drops then
			--        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			--    end
			--end)
			local target = nil
			spawn(function ()
				while wait() do 
					if farm.flags.Drops or target and not sell then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end
			end)
	
			spawn(function()
				while wait(.2) do
					if farm.flags.Drops then
						local closest = nil
						local dis = math.huge
						for i , v in pairs(game.Workspace.Pickups:GetChildren()) do
							range = farm.flags.Rad
							if tonumber(range) ~= nil then
								if v:FindFirstChild('TouchInterest') and (root.Position-v.Position).magnitude <= tonumber(range) and (root.Position-v.Position).magnitude < dis and farm.flags.Drops and canafford ~= true and sell ~= true then
									--root.CFrame = CFrame.new(root.CFrame.X,v.CFrame.Y,root.CFrame.Z)
									closest = v
									dis = (root.Position-v.Position).magnitude
								end
							end
						end
						if closest ~= nil and (target == nil or target.Parent == nil) then
							local dis = closest.CFrame.Y - root.CFrame.Y
							if dis < (closest.Size.Y * -1) or dis > closest.Size.Y then
								root.CFrame = CFrame.new(root.CFrame.X,closest.CFrame.Y + 2,root.CFrame.Z)
							end
							toTarget(root.Position,closest.Position + Vector3.new(0,2,0),closest.CFrame + Vector3.new(0,2,0))
						end
					end
				end
			end)
	
			local Module = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService-- your module here
			local gg = require(Module)
	
	
	
	
			local function GetRarity(name)
				local entry = petlist[name]
				if entry ~= nil then
					return petlist[name]['Rarity']
				else
					return "error"
				end
			end
	
			local function HGetRarity(name)
				local entry = hatlist[name]
				if entry ~= nil then
					return hatlist[name]['Rarity']
				else
					return "error"
				end
			end
	
			local function Delete(Id)
				f['FireServer'](f,'DeletePet',Id)
			end
			local function HDelete(Id)
				f['FireServer'](f,'DeleteHat',Id)
			end
			repeat wait() until typeof(gg.TryShowPetsFrame) == "function"
			local get = debug.getupvalues(require(Module).TryShowPetsFrame)[4]["PetsFrame"]
			spawn(function()
				while wait(30) do
					if eggs.flags.upgrade then
						for i = 0 , 50 , 1 do 
							f["FireServer"](f, "EnchantPet", id)
						end
					end
				end
			end)
			local Eggs = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.EggModule)
			local Crates = require(game:GetService("ReplicatedStorage").Assets.Modules.ItemDataService.CrateModule)
			local EasyLeg = {}
			for i , v in pairs(Eggs) do 
				for i , v in pairs(v.Rarities) do
					if GetRarity(v[1]) == 'Legendary' and v[2] >= 0.1 then
						table.insert(EasyLeg,v[1])
					end
				end
			end
			local HEasyLeg = {}
			for i , v in pairs(Crates) do 
				for i , v in pairs(v.Rarities) do
					if GetRarity(v[1]) == 'Legendary' and v[2] >= 0.1 then
						table.insert(HEasyLeg,v[1])
					end
				end
			end
			local pn = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["PETS"]
			local hn = require(game:GetService("ReplicatedStorage").Assets.Modules.Library.index)["HATS"]
			spawn(function()
				while wait(0.1) do 
					local cp = {}
					local dfg = {}
					local a = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ClientScript.Modules.GuiService
					local e = f:InvokeServer("GetPlayerData")
					for i,d in pairs(e[pn]) do
						local id = d[1]
						local name = d[2]
						local rarity = GetRarity(name)
						local deleted = false
						if eggs.flags[rarity] == true then 
							Delete(id)
							deleted = true
						elseif eggs.flags.easyleg then
							for i , v in pairs(EasyLeg) do 
								if v == name then
									Delete(id)
									deleted = true
								end
							end
						end
						if eggs.flags.shiny and deleted == false then
							if d[8] == false then
								cp[name] = (cp[name] or 0) + 1
								if cp[name] >= 10 then
									cp[name] = 0
									f:FireServer("MakePetShiny", id)
								end
							end
						end
					end
					for i,d in pairs(e[hn]) do
						local id = d[1]
						local name = d[2]
						local rarity = HGetRarity(name)
						if hats.flags[rarity] == true then 
							HDelete(id)
						elseif hats.flags.easyleg then
							for i , v in pairs(HEasyLeg) do 
								if v == name then
									HDelete(id)
								end
							end
						end
					end
				end
			end)
		end
	
		if game.PlaceVersion > LatestSupportedVersion then
	
			function RandomVariable(length)
				local res = ""
				for i = 1, length do
					res = res .. string.char(math.random(97, 122))
				end
				return res
			end
	
			local ScreenGui = Instance.new("ScreenGui")
			local Frame = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local TextLabel_2 = Instance.new("TextLabel")
			local TextLabel_3 = Instance.new("TextLabel")
			local Yes = Instance.new("TextButton")
			local No = Instance.new("TextButton")
	
			ScreenGui.Parent = game.CoreGui
			ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			ScreenGui.Name = RandomVariable(math.random(3,20))
	
			Frame.Parent = ScreenGui
			Frame.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
			Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
			Frame.Size = UDim2.new(0, 400, 0, 250)
			Frame.AnchorPoint = Vector2.new(0.5,0.5)
			Frame.Name = RandomVariable(math.random(3,20))
	
			TextLabel.Parent = Frame
			TextLabel.BackgroundColor3 = Color3.fromRGB(48, 75, 94)
			TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel.Position = UDim2.new(0, 0, 0.0480000004, 0)
			TextLabel.Size = UDim2.new(1, 0, 0, 50)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = "Warning!"
			TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
			TextLabel.Name = RandomVariable(math.random(3,20))
	
			TextLabel_2.Parent = Frame
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(48, 75, 94)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel_2.Position = UDim2.new(0, 0, 0.280000001, 0)
			TextLabel_2.Size = UDim2.new(1, 0, 0.159999996, 50)
			TextLabel_2.Font = Enum.Font.SourceSans
			TextLabel_2.Text = "The script detected that the game has been updated and it wasnt tested on the newest version, you can still execute it on you own risk which can cause your account in getting banned if the anticheat was updated!"
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
			TextLabel_2.TextSize = 20.000
			TextLabel_2.TextWrapped = true
			TextLabel_2.Name = RandomVariable(math.random(3,20))
	
			TextLabel_3.Parent = Frame
			TextLabel_3.BackgroundColor3 = Color3.fromRGB(48, 75, 94)
			TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel_3.Position = UDim2.new(0, 0, 0.700000048, 0)
			TextLabel_3.Size = UDim2.new(1, 0, -0.0879999995, 50)
			TextLabel_3.Font = Enum.Font.SourceSans
			TextLabel_3.Text = "Execute?"
			TextLabel_3.TextColor3 = Color3.fromRGB(255, 0, 0)
			TextLabel_3.TextSize = 28.000
			TextLabel_3.TextWrapped = true
			TextLabel_3.Name = RandomVariable(math.random(3,20))
	
			Yes.Name = RandomVariable(math.random(3,20))
			Yes.Parent = Frame
			Yes.BackgroundColor3 = Color3.fromRGB(68, 107, 134)
			Yes.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Yes.Position = UDim2.new(0.100000001, 0, 0.864000022, 0)
			Yes.Size = UDim2.new(0, 140, 0, 25)
			Yes.Font = Enum.Font.SourceSansBold
			Yes.Text = "Yes"
			Yes.TextColor3 = Color3.fromRGB(255, 0, 4)
			Yes.TextScaled = true
			Yes.TextSize = 14.000
			Yes.TextWrapped = true
	
			No.Name = RandomVariable(math.random(3,20))
			No.Parent = Frame
			No.BackgroundColor3 = Color3.fromRGB(68, 107, 134)
			No.BorderColor3 = Color3.fromRGB(27, 42, 53)
			No.Position = UDim2.new(0.550000012, 0, 0.864000022, 0)
			No.Size = UDim2.new(0, 140, 0, 25)
			No.Font = Enum.Font.SourceSansBold
			No.Text = "No"
			No.TextColor3 = Color3.fromRGB(17, 255, 0)
			No.TextScaled = true
			No.TextSize = 14.000
			No.TextWrapped = true
	
			No.MouseButton1Click:Connect(function()
				ScreenGui:Destroy()
			end)
	
			Yes.MouseButton1Click:Connect(function()
				ScreenGui:Destroy()
				scr()
			end)
		else
			scr()
		end
	end
	script.Parent.MouseButton1Down:connect(Clicked) 
	
	
end
coroutine.wrap(HNYNG_fake_script)()
local function UATP_fake_script() -- Walkspeed.LocalScript 
	local script = Instance.new('LocalScript', Walkspeed)

	function Clicked() 
		local hum = game.Players.LocalPlayer.Character.Humanoid
		hum.WalkSpeed = 50
	end
	script.Parent.MouseButton1Down:connect(Clicked) 
	
	
end
coroutine.wrap(UATP_fake_script)()
