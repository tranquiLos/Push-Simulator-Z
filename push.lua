getgenv().autoPower = false;
getgenv().autoRebirth = false;
getgenv().autoPush = false;
getgenv().autoHatch = false;



function doPower()
    spawn(function()
         while autoPower == true do
            game:GetService("ReplicatedStorage").Remotes.PowerGain:FireServer()
            wait()
         end
     end)
end

function doRebirth()
    spawn(function()
         while autoRebirth == true do
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
            wait(1.5)
         end
     end)
end

function doPush()
    spawn(function()
         while autoPush == true do
            game:GetService("ReplicatedStorage").Remotes.PushGain:FireServer()
            wait()
         end
     end)
end



local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Push Simulator  |  @tranquilos",
	LoadingTitle = "Quantum Studio",
	LoadingSubtitle = "by tranquiLo",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Rayfield Interface Suite",
		FileName = "Big Hub"
	},
	KeySystem = false, -- Set this to true to use their key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})

local Tab = Window:CreateTab("Main", 4483362458)
local Tab2 = Window:CreateTab("Credits", 4483362458)
local Label = Tab2:CreateLabel("by tranquiLo")

local Section = Tab:CreateSection("Auto Farm")


local Toggle = Tab:CreateToggle({
	Name = "Auto Power",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        autoPower = Value
        if Value then
            doPower()
        end
	end,
})

local Toggle2 = Tab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        autoRebirth = Value
        if Value then
            doRebirth()
        end
	end,
})

local Toggle3 = Tab:CreateToggle({
	Name = "Auto Push",
	CurrentValue = false,
	Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        autoPush = Value
        if Value then
            doPush()
        end
	end,
})