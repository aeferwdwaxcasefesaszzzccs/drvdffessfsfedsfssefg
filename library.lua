game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Zeros hub"; 
    Text = "Zeros hub on top";})
    _G.BlurSize = 3

    _G.ColorCorrectionBrightness = 0.03
    _G.ColorCorrectionContrast = 0.3
    _G.ColorCorrectionSaturation = 0.01
    _G.ColorCorrectionTintColor = Color3.fromRGB(244,244,244)
    
    _G.SunRaysIntensity = 0.2
    _G.SunRaysSpread = 1
    
    -- Lighting settings:
    _G.GlobalShadows = true
    _G.Brightness = 0.9
    _G.GeographicLatitude = 350
    _G.TimeOfDay = 17
    _G.ExposureCompensation = 0.03
    
    
    spawn(function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\55\110\57\103\53\55\112\50"))()
    end)
--#start ninja legends
    if game.PlaceId == 3956818381 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Ninja Legends", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
    local AutoFarm = Window:NewTab("AutoFarm")
    local AutoFarmSection = AutoFarm:NewSection("AutoFarm")
    local AutoBuy = Window:NewTab("AutoBuy")
    local AutoBuySection = AutoBuy:NewSection("AutoBuy")
    MainSection:NewToggle("Auto Swing", "Make Your Player AutoSwing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)
    MainSection:NewToggle("Auto Sell", "Makes Your Player AutoSell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)
    TeleportSection:NewButton("Unlock All Islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    AutoBuySection:NewToggle("Auto Buy Swords", "Auto Buys The Swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    AutoBuySection:NewToggle("Auto Buy Belts", "Auto Buys The Belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    AutoFarmSection:NewToggle("Chi Farm", "Teleports You To The King Of Hill", function(state)
        if state then
            _G.Condition = true -- true turns it on, false turns it off
            while _G.Condition == true do
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(218.628006, 89.7980728, -306.10614)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.906387, 89.7980728, -267.906158)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(217.515915, 89.7980728, -271.927338)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(245.596283, 89.7980728, -291.48761)
            wait()
            end
        else
            _G.Condition = false -- true turns it on, false turns it off
            while _G.Condition == true do
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(218.628006, 89.7980728, -306.10614)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.906387, 89.7980728, -267.906158)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(217.515915, 89.7980728, -271.927338)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(245.596283, 89.7980728, -291.48761)
            wait()
            end
        end
    end)
    AutoFarmSection:NewToggle("Farm Hoops", "Teleports You To The Hoops", function(state)
        if state then
                _G.cum = true -- set to false and it will stop
                while wait() do
                if _G.cum then
                local plr = game.Players.LocalPlayer
                for i,v in pairs(workspace.Hoops:GetDescendants()) do
                if v.ClassName == "MeshPart" then
                v.touchPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                end
            end
        end
        end
        else
                _G.cum = false -- set to false and it will stop
                while wait() do
                if _G.cum then
                local plr = game.Players.LocalPlayer
                for i,v in pairs(workspace.Hoops:GetDescendants()) do
                if v.ClassName == "MeshPart" then
                v.touchPart.CFrame = plr.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
    end
    end)

    AutoBuySection:NewToggle("Auto Buy Ranks", "Auto Buys The Ranks", function(state)
        if state then
            _G.Condition = true -- true turns it on, false turns it off
            while _G.Condition == true do
            local oh1 = "buyRank"
            local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
            for i = 1,#oh2 do
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
            end
            wait()
            end
        else
            _G.Condition = false -- true turns it on, false turns it off
            while _G.Condition == true do
            local oh1 = "buyRank"
            local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
            for i = 1,#oh2 do
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
            end
            wait()
            end
        end
    end)
    AutoBuySection:NewToggle("Auto Buy Skills", "Auto Buys The Skills", function(state)
        if state then
            _G.Condition = true -- true turns it on, false turns it off
            while _G.Condition == true do
            local A_1 = "buyAllSkills"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait()
            end
        else
            _G.Condition = false -- true turns it on, false turns it off
            while _G.Condition == true do
            local A_1 = "buyAllSkills"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait()
            end
        end
    end)
    AutoBuySection:NewToggle("Auto Buy Shuriken", "Auto Buys The Shurikens", function(state)
        if state then
            _G.Condition = true -- true turns it on, false turns it off
            while _G.Condition == true do
            local A_1 = "buyAllShurikens"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait()
            end
        else
            _G.Condition = false -- true turns it on, false turns it off
            while _G.Condition == true do
            local A_1 = "buyAllShurikens"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait()
            end
        end
    end)
    TeleportSection:NewButton("Teleport to All Chests", "Teleports You To All The Chests", function()
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44.8091736, 772.892029, -186.113876)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44.8091736, 772.892029, -186.113876)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(210.977661, 4054.0918, 58.45504)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(210.977661, 4054.0918, 58.45504)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.7061806, 5681.10449, 60.3083115)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.7061806, 5681.10449, 60.3083115)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37.7248688, 9309.10352, 60.0999756)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37.7248688, 9309.10352, 60.0999756)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.2728996, 13704.792, 58.9767265)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.2728996, 13704.792, 58.9767265)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.5750389, 17711.0234, 59.0358429)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.5750389, 17711.0234, 59.0358429)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.99506, 24094.6055, 59.6758461)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.99506, 24094.6055, 59.6758461)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.2964478, 28279.1758, 51.1746063)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.2964478, 28279.1758, 51.1746063)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.8769913, 33382.1094, -180.307999)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.8769913, 33382.1094, -180.307999)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-132.883453, 39457.9688, 169.222794)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-132.883453, 39457.9688, 169.222794)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(428.534729, 46137.9648, -45.9690437)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(428.534729, 46137.9648, -45.9690437)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.302216, 52741.6719, -50.0839348)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.302216, 52741.6719, -50.0839348)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.19577, 66800.8047, -46.1431847)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.19577, 66800.8047, -46.1431847)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.921204, 70414.9063, -44.0284424)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.921204, 70414.9063, -44.0284424)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.431824, 74579.7031, -45.7830544)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.431824, 74579.7031, -45.7830544)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(426.997314, 79884.4297, -48.2278976)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(426.997314, 79884.4297, -48.2278976)
    end)
    PlayerSection:NewButton("Ctrl Click Teleport", "Hold Down And Click AnyWhere Ctrl", function()
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()
        Mouse.Button1Down:connect(function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
        if not Mouse.Target then return end
        Plr.Character:MoveTo(Mouse.Hit.p)
        end)
    end)
    PlayerSection:NewButton("Infinite Jump", "Lets You Jump Infinite Times", function()
        game.Players.LocalPlayer.multiJumpCount.Value = 9999999
    end)
    
    

 --#end
--#start bubble gum simulator
    elseif game.PlaceId == 2512643572 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Bubble Gum Simulator", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
    MainSection:NewToggle("Auto blow bubble", "Blows the bubble for you", function(v)
        getgenv().BlowBubble = v
        while true do
            if not getgenv().BlowBubble then return end
                game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("BlowBubble");
                wait(0.1)
            end
        end)
        MainSection:NewToggle("Auto sell", "sells the bubbles for you", function(v)
            getgenv().SellBubble = v
    while true do
        if not getgenv().SellBubble then return end

    local args = {
    [1] = "SellBubble",
    [2] = "Sell"
    }

    game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))

            wait()
        end
    end)
 --#end

--#start fs
    elseif game.GameId == 210213771 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Dragon Ball Z Final Stand", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local RemoveSection = Player:NewSection("Removes")
    local AuraSection = Player:NewSection("Auras")
    local BuySection = Player:NewSection("Buys")
    local DragonCrushSection = Player:NewSection("Dragon Crush")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleports")
    local Stat = Window:NewTab("Stats")
    local StatSection = Stat:NewSection("Stats")
    local Bean = Window:NewTab("Beans")
    local BeanSection = Bean:NewSection("Beans")
    local Slots = Window:NewTab("Slots")
    local SlotSection = Slots:NewSection("Slots")
    PlayerSection:NewToggle("Bean Spam", "beanspam", function(BeanSpam)
        if BeanSpam == true then
            Spam = true
            while Spam do
                wait()
                local Event = game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu
                Event:FireServer(true)
            end
        else
            Spam = false
        end
    end)

            PlayerSection:NewToggle("Stay In Form", "Lets you stay in the form when you die", function(StayinForm)
        if StayinForm == true then
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("SaiyanAuraWeak") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.SaiyanAuraWeak:Destroy()
            end

            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("MajinParticle") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.MajinParticle:Destroy()
            end

            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Lightning2") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Lightning2:Destroy()
            end

            if game.Players.LocalPlayer.Character:FindFirstChild("SaiyanHair") then
                game.Players.LocalPlayer.Character.SaiyanHair:Destroy()
            end

            if game.Players.LocalPlayer.Character.Head:FindFirstChild("Tatoo") then
                game.Players.LocalPlayer.Character.Head.Tatoo:Destroy()
            end

            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("MajinAura") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.MajinAura:Destroy()
            end

        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    MainSection:NewSlider("FOV", 70, 1, 120, function(FOV)
        game.Workspace.Camera.FieldOfView = FOV
    end)
    MainSection:NewToggle("FullBright", "makes everything look easiyer", function(FullBright)
        if FullBright == true then
            FB = game:GetService("RunService").RenderStepped:Connect(function()
                    game.Lighting.FogEnd = (99999999)
                end)
        else
            FB:Disconnect()
            game.Lighting.FogEnd = (2000)
        end
    end)
    MainSection:NewToggle("Show Hitbox", "shows the hitboxes", function(Hitbox)
        if Hitbox == true then
            settings():GetService("RenderSettings").ShowBoundingBoxes = true
        else
            settings():GetService("RenderSettings").ShowBoundingBoxes = false
        end
    end)
    MainSection:NewToggle("Top Respawn", "top respawn", function(TopRespawn)
        if TopRespawn == true then
            respawn = true
            while respawn do
                wait(0.05)
                if game.Players.LocalPlayer.Character:FindFirstChild("SuperAction") then
                    game.Players.LocalPlayer.Character:FindFirstChild("SuperAction"):Destroy()
                end
            end
        else
            respawn = false
        end
    end)
    DragonCrushSection:NewToggle("Dragon Crush Yeet", "Dragon crush yeets you to queue world", function(DCYeet)
        if DCYeet == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")
            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Crush")
                    if tool then
                        humanoid:EquipTool(tool)
                    end
                end
            end
            wait()
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
                game.Players.LocalPlayer.Character["Dragon Crush"].Activator.HitDown:Destroy()
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    DragonCrushSection:NewToggle("Dragon Crush Stuck", "keeps that person stuck to you", function(DCStuck)
        if DCStuck == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")
            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Crush")
                    if tool then
                        humanoid:EquipTool(tool)
                    end
                end
            end
            wait()
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
                game.Players.LocalPlayer.Character["Dragon Crush"].Activator.Flip:Destroy()
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Crush") then
                game.Players.LocalPlayer.Character["Dragon Crush"].Activator.Blocked:Destroy()
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    StatSection:NewToggle("Health Max", "auto puts your stat points into health max", function(bool)
        if bool == true then
            _G.stat1 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Health-Max"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat1 == false
        else
            _G.stat1 = false
        end
    end)

    StatSection:NewToggle("Ki Max", "auto puts your stat points into ki max", function(bool)
        if bool == true then
            _G.stat2 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Max"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat2 == false
        else
            _G.stat2 = false
        end
    end)

    StatSection:NewToggle("Melee Damage", "auto puts your stat points into melee dmg", function(bool)
        if bool == true then
            _G.stat3 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Damage"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat3 == false
        else
            _G.stat3 = false
        end
    end)

    StatSection:NewToggle("Ki Damage", "auto puts your stat points into ki dmg", function(bool)
        if bool == true then
            _G.stat4 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Damage"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat4 == false
        else
            _G.stat4 = false
        end
    end)

    StatSection:NewToggle("Melee Resistance", "auto puts your stat points into melee resistance", function(bool)
        if bool == true then
            _G.stat5 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Phys-Resist"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat5 == false
        else
            _G.stat5 = false
        end
    end)

    StatSection:NewToggle("Ki Resistance", "auto puts your stat points into ki resistance", function(bool)
        if bool == true then
            _G.stat6 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats["Ki-Resist"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat6 == false
        else
            _G.stat6 = false
        end
    end)

    StatSection:NewToggle("Speed", "auto puts your stat points into speed", function(bool)
        if bool == true then
            _G.stat7 = true
            repeat wait()
                local A_1 = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.Speed
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade
                Event:FireServer(A_1)
            until _G.stat7 == false
        else
            _G.stat7 = false
        end
    end)
    MainSection:NewToggle("Buy Elder Kai", "auto buys from elder kai using your zenni", function(ElderKai)
        if ElderKai == true then
            _G.elderkaibuy = true
            while _G.elderkaibuy and wait(1) do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Elder Kai"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        else
            _G.elderkaibuy = false
        end
    end)
    PlayerSection:NewToggle("Drugs", "makes you feel high or what ever you stoners do", function(Drugs)
        _G.high = true
        if Drugs == true then
            while _G.high do
                game:GetService("TweenService"):Create(
                    game.Workspace.CurrentCamera,
                    TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {FieldOfView = 120}
                ):Play()
                game:GetService("TweenService"):Create(
                    game:GetService("Lighting").ColorCorrection,
                    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {Saturation = 35}
                ):Play()
                wait(1.1)
                game:GetService("TweenService"):Create(
                    game.Workspace.CurrentCamera,
                    TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {FieldOfView = 50}
                ):Play()
                game:GetService("TweenService"):Create(
                    game:GetService("Lighting").ColorCorrection,
                    TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                    {Saturation = -35}
                ):Play()
                wait(1.1)
            end
        else
            _G.high = false
            wait(3)
            local FOVTEXT = game.CoreGui.RobloxCrashHandler["2"].Frame.ImageButton.Frame.FOV["2"].TextBox.Text
            game.Workspace.Camera.FieldOfView = 70
            game.Lighting.ColorCorrection.Saturation = 0.2
        end
    end)
    PlayerSection:NewToggle("Dust", "makes dust around you but it can be very laggy at times", function(Dust)
        if Dust == true then
            Dusty = game:GetService("RunService").RenderStepped:connect(
                function()
                    local A_1 = "average"
                    local A_2 =
                        CFrame.new(
                        -696.695679,
                        291.290009,
                        -5554.28467,
                        0.359417617,
                        0.41572988,
                        -0.83545661,
                        -0,
                        0.895282269,
                        0.445499539,
                        0.933176875,
                        -0.160120383,
                        0.321780175
                    )
                    local Event = game.Players.LocalPlayer.Backpack.ServerTraits.Vanish
                    Event:FireServer(A_1, A_2)
                end
            )
        else
            Dusty:Disconnect()
        end
    end)
    AuraSection:NewToggle("Super Dragon Fist Aura", "gives you super dragon fist aura", function(SuperDragonFistAura)
        if SuperDragonFistAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Super Dragon Fist")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Super Dragon Fist") then
                        game.Players.LocalPlayer.Character["Super Dragon Fist"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Buy Super Dragon Fist";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    AuraSection:NewToggle("Super Rush Aura", "gives you super rush aura", function(SuperRushAura)
        if SuperRushAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Super Rush")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Super Rush") then
                        game.Players.LocalPlayer.Character["Super Rush"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Buy Super Rush";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    AuraSection:NewToggle("Kaioken Assault Aura", "gives you kaioken assault aura", function(KaiokenAssaultAura)
        if KaiokenAssaultAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Kaioken Assault")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Kaioken Assault") then
                        game.Players.LocalPlayer.Character["Kaioken Assault"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Buy Kaioken Assault";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    AuraSection:NewToggle("Wrathful Charge Aura", "gives you wrathful charge aura", function(WrathfulChargeAura)
        if WrathfulChargeAura == true then
            local Players = game:GetService("Players")
            local player = Players:FindFirstChildOfClass("Player")

            if Players:FindFirstChildOfClass("Player") and player.Character then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Wrathful Charge")
                    if tool then
                        humanoid:EquipTool(tool)
                        wait(0.5)
                        if game.Players.LocalPlayer.Character:FindFirstChild("Wrathful Charge") then
                        game.Players.LocalPlayer.Character["Wrathful Charge"].Activator.Forward:Destroy()
                        end
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Move Equiped\nPress On a Player";
                        Duration = 5;
                        })    
                    else
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Zeros";
                        Text = "Buy Wrathful Charge";
                        Duration = 5;
                        })

                    end
                end
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    TeleportSection:NewButton("Earth", "teleports you to earth", function()
        game:GetService("TeleportService"):Teleport(536102540, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Namek", "teleports you to namek", function()
        game:GetService("TeleportService"):Teleport(882399924, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Space", "teleports you to space", function()
        game:GetService("TeleportService"):Teleport(478132461, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Future", "teleports you to future", function()
        game:GetService("TeleportService"):Teleport(569994010, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Secret World", "teleports you to secret world", function()
        game:GetService("TeleportService"):Teleport(2046990924, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Queue World", "teleports you to queue world", function()
        game:GetService("TeleportService"):Teleport(3565304751, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Zaros", "teleports you to zaros", function()
        game:GetService("TeleportService"):Teleport(2651456105, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("HTC", "teleports you to TimeChamber", function()
        game:GetService("TeleportService"):Teleport(882375367, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Heaven", "teleports you to heaven must be a rebirth", function()
        game:GetService("TeleportService"):Teleport(3552157537, game.Players.LocalPlayer)
    end)

    TeleportSection:NewButton("Lookout", "zooms to the lookout", function()
        if game.PlaceId ~= 536102540 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Zeros";
                Text = "go to earth....";
                Duration = 2;
                })
            else
            local yes = 1
            local x, x4, t = {"KAMI"}, {}, .1
            function x2(x3)
                if x[1] ~= nil then
                    for i, v in pairs(game.Workspace.FriendlyNPCs:GetChildren()) do
                        if v:FindFirstChild("NpcNoid") and v:FindFirstChild("LowerTorso") then
                            if v.Name:find(x3) and not v.Name:find("red") then
                                table.insert(x4, v)
                            end
                        end
                    end
                    table.remove(x, 1)
                end
            end

            x2(x[1])
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game.Workspace.CurrentCamera.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                x4[1].HumanoidRootPart.Position
            ) * CFrame.new(0, 2, 10)
            if
            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude >
                12500
            then
            t = 2.5
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - x4[1].HumanoidRootPart.Position).magnitude >
                1000
            then
            t = 1
            else
            t = 0.2
        end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                {CFrame = x4[1].HumanoidRootPart.CFrame * CFrame.new(0, .1, 3)}
            ):Play()
        end
    end)
    BeanSection:NewDropdown("Beans", "auto buys beans", {"Stop Buying", "Red Beans", "Green Beans", "Blue Beans", "Yellow Beans"}, function(Beans)
        if Beans == "Red Beans" then
            _G.BeanBuy1 = true
            _G.BeanBuy2 = false
            _G.BeanBuy3 = false
            _G.BeanBuy4 = false
            while _G.BeanBuy1 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Red"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Beans == "Green Beans" then
            _G.BeanBuy1 = false
            _G.BeanBuy2 = true
            _G.BeanBuy3 = false
            _G.BeanBuy4 = false
            while _G.BeanBuy2 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Green"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Beans == "Blue Beans" then
            _G.BeanBuy1 = false
            _G.BeanBuy2 = false
            _G.BeanBuy3 = true
            _G.BeanBuy4 = false
            while _G.BeanBuy3 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Blue"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Beans == "Yellow Beans" then
            _G.BeanBuy1 = false
            _G.BeanBuy2 = false
            _G.BeanBuy3 = false
            _G.BeanBuy4 = true
            while _G.BeanBuy4 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Beans"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yellow"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        else
            _G.BeanBuy1 = false
            _G.BeanBuy2 = false
            _G.BeanBuy3 = false
            _G.BeanBuy4 = false
        end
    end)

    BeanSection:NewDropdown("Jars", "auto buys jars", {"Stop Buying", "Red Jars", "Green Jars", "Blue Jars", "Yellow Jars"}, function(Jars)
        if Jars == "Red Jars" then
            _G.JarBuy1 = true
            _G.JarBuy2 = false
            _G.JarBuy2 = false
            _G.JarBuy4 = false
            while _G.JarBuy1 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Red"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Jars == "Green Jars" then
            _G.JarBuy1 = false
            _G.JarBuy2 = true
            _G.JarBuy3 = false
            _G.JarBuy4 = false
            while _G.JarBuy2 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Green"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Jars == "Blue Jars" then
            _G.JarBuy1 = false
            _G.JarBuy2 = false
            _G.JarBuy3 = true
            _G.JarBuy4 = false
            while _G.JarBuy3 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Blue"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        elseif Jars == "Yellow Jars" then
            _G.JarBuy1 = false
            _G.JarBuy2 = false
            _G.JarBuy3 = false
            _G.JarBuy4 = true
            while _G.JarBuy4 and wait() do
                local A_1 = game:GetService("Workspace").FriendlyNPCs["Korin BEANS"]
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Jars"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "80"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yellow"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "Yes"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)

                local A_1 = {
                    [1] = "k"
                }
                local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
                Event:FireServer(A_1)
                wait(0.3)
            end
        else
            _G.JarBuy1 = false
            _G.JarBuy2 = false
            _G.JarBuy3 = false
            _G.JarBuy4 = false
        end
    end)
    PlayerSection:NewToggle("Noslow", "makes your moves have nocool down", function(noslow)
        if noslow == true then
            Slow = game:GetService("RunService").Stepped:Connect(function()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Action") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Action"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Attacking") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Attacking"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Using") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Using"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("hyper") then
                        game.Players.LocalPlayer.Character:FindFirstChild("hyper"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Hyper") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Hyper"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("heavy") then
                        game.Players.LocalPlayer.Character:FindFirstChild("heavy"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted") then
                        game.Players.LocalPlayer.Character:FindFirstChild("KiBlasted"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tele") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Tele"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("tele") then
                        game.Players.LocalPlayer.Character:FindFirstChild("tele"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Killed") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Killed"):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Slow") then
                        game.Players.LocalPlayer.Character:FindFirstChild("Slow"):Destroy()
                    end
                end
            )
        else
            Slow:Disconnect()
        end
    end)
    MainSection:NewToggle("Invisibility", "makes people not able to see you", function(Invisibility)
        if Invisibility == true then
            local Player = game.Players.LocalPlayer
            local function CheckRig()
                if Player.Character then
                    local Humanoid = Player.Character:WaitForChild("Humanoid")
                    if Humanoid.RigType == Enum.HumanoidRigType.R15 then
                        return "R15"
                    else
                        return "R6"
                    end
                end
            end

            local AirTP = true
            local Character = Player.Character
            local StoredCF = Character.PrimaryPart.CFrame
            if AirTP then
                local Part = Instance.new("Part", workspace)
                Part.Size = Vector3.new(5, 0, 5)
                Part.Anchored = true
                Part.CFrame = CFrame.new(Vector3.new(9999, 9999, 9999))
                Character.PrimaryPart.CFrame = Part.CFrame * CFrame.new(0, 3, 0)
                spawn(
                    function()
                        wait(3)
                        Part:Destroy()
                    end)
            end
            if CheckRig() == "R6" then
                local Clone = Character.HumanoidRootPart:Clone()
                Character.HumanoidRootPart:Destroy()
                Clone.Parent = Character
            else
                local Clone = Character.LowerTorso.Root:Clone()
                Character.LowerTorso.Root:Destroy()
                Clone.Parent = Character.LowerTorso
            end
            if AirTP then
                wait(1)
                Character.PrimaryPart.CFrame = StoredCF
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end)
    SlotSection:NewDropdown("Slot Changer", "changes your slot to what ever you pick must have the game passes tho", {"Slot1","Slot2","Slot3"}, function(value)
        local A_1 = game:GetService("Workspace").FriendlyNPCs["Character Slot Changer"]
        local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatStart
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
        {
            [1] = "Yes"
        }
        local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
        {
            [1] = "k"
        }
        local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
        {
            [1] = value
        }
        local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.3)
        local A_1 = 
        {
            [1] = "k"
        }
        local Event = nil
        Event:FireServer(A_1)
    end);
    RemoveSection:NewButton("Wing/Halo Remover", "takes off your wing or halo", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("RebirthWings") then
        game.Players.LocalPlayer.Character.RebirthWings:Destroy()
    elseif game.Players.LocalPlayer.Character:FindFirstChild("RealHalo") then
        game.Players.LocalPlayer.Character.RealHalo:Destroy()
    end
    end)

    RemoveSection:NewButton("Level Remover", "removes the level from above your head along with your prestige", function()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    for i, model in pairs(character:GetChildren()) do
        if string.match(model.Name, "Lvl") then
            model:Destroy()
            break
        end
    end
    end)
    BuySection:NewButton("TC Armor", "buys tc armor/vegeta armor", function()
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["TC Armor"])
    wait(0.35)
    local A_1 = {
        [1] = "k"
    }
    local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
    Event:FireServer(A_1)
    wait(0.35)
    local A_1 = {
        [1] = "Purchase"
    }
    local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
    Event:FireServer(A_1)
    wait(0.35)
    local A_1 = {
        [1] = "k"
    }
    local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
    Event:FireServer(A_1)
    end)

    BuySection:NewButton("Aqua Gi", "buys aqua gi/ubb armor", function()
    game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(
            game.Workspace.FriendlyNPCs["Aqua Gi"]
        )
        wait(0.35)
        local A_1 = {
            [1] = "k"
        }
        local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.35)
        local A_1 = {
            [1] = "Purchase"
        }
        local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
        wait(0.35)
        local A_1 = {
            [1] = "k"
        }
        local Event = game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance
        Event:FireServer(A_1)
    end)
    local VirtualUser=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
        warn("anti-afk")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
    repeat wait()
    until game:IsLoaded()
      game.Players.LocalPlayer.PlayerGui:WaitForChild("HUD")
   wait(1)
   
   function Vandell()
        Plr = game:GetService('Players').LocalPlayer
     game.Workspace.Live[Plr.Name].True:destroy()  
   end Vandell()

 --#end

--#start anime fighting simulator
    elseif game.PlaceId == 4042427666 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Anime Fighting Simulator", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
 --#end

 --end
--#start mad city
    elseif game.PlaceId == 1224212277 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Mad City", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
 --end

--#start lumber tycoon 2
    elseif game.PlaceId == 13822889 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Lumber Tycoon 2", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
 --end
--#start shindo
    elseif game.GameId == 1511883870 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Shindo", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
    local VirtualUser=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
        warn("anti-afk")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
    MainSection:NewButton("Infinite Chakra", "gives you infinite chakra", function()
        _G.InfChakra = true
        loadstring(game:HttpGet('https://demonslayer0002.xyz/Kraken/SpookyStuffDontDelete/suckmybum/ingame/infchakra.lua.php'))()
    end)
    MainSection:NewButton("Tree Jump", "makes it easy to jump onto trees", function()
    game.Players.LocalPlayer.Character['Right Leg'].Touched:Connect(function(hit)
    hit.Name = 'leaf'
    hit.Parent = game:GetService("Workspace").map.Tree.tree
    wait(1)
    end)
    end)
    MainSection:NewButton("Rejoin Server", "Rejoin Server", function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end)
    PlayerSection:NewButton("Auto Dodge", "Auto dodges anything", function()
        _G.Doge = true;
        _G.dogespeed = 80;
        
        local mt = getrawmetatable(game)
        local old = mt.__newindex
        setreadonly(mt, false)
        
        mt.__newindex = newcclosure(function(t,k,v)
            pcall(function()
                if t == game:GetService("Players").LocalPlayer.Character.Humanoid and k == "WalkSpeed" and _G.Doge then
                    v = _G.dogespeed;
                end
            end)
            return old(t,k,v)
        end)
    end)

 --end

--#start arsenal
    elseif game.PlaceId == 286090429 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Arsenal", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
--#start spts
    elseif game.PlaceId == 2202352383 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Super Power Training Simulator", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport")
    MainSection:NewToggle("Auto Attack", "Auto Attacks For You", function(v)
        getgenv().FS1 = v
    while true do
    if not getgenv().FS1 then return end

        local args = {
        [1] = {
            [1] = "+FS1"
        }
        }
    
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        wait(0.1)
    end
    end)
    MainSection:NewToggle("Auto toughness", "Auto Toughness For You", function(v)
        getgenv().BT1 = v
    while true do
    if not getgenv().BT1 then return end
    local args = {
    [1] = {
        [1] = "+BT1"
    }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    wait(0.1)
    end
    end)
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    MainSection:NewToggle("Auto Speed", "Auto Speed For You", function(v)
        getgenv().MS1 = v
    while true do
    if not getgenv().MS1 then return end

    local args = {
    [1] = {
        [1] = "+MS1"
    }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    wait(0.1)
    end
    end)

    MainSection:NewToggle("Auto Jump", "Auto Jump For You", function(v)
        getgenv().JF1 = v
    while true do
    if not getgenv().JF1 then return end
    local args = {
    [1] = {
        [1] = "+JF1"
    }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    wait(0.1)
    end
    end)


    MainSection:NewToggle("Auto Psychic Power", "Auto Quest Psychic Power For You", function(v)
        getgenv().PP1 = v
        while true do
        if not getgenv().PP1 then return end
    local args = {
    [1] = {
        [1] = "+PP1"
    }
    }

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    wait(0.1)
    end
    end)
    
 --end
end