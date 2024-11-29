
local SaveSettings = {
    ["Main"] = {
        ["Autofarm"] = false,
        ["Buso"] =false,
        ["Ken"] =false,
        ['SkillZ'] = false,
        ['SkillX'] = false,
        ['SkillC'] = false,
        ['SkillV'] = false,
        ['New World'] = false,
    },
    ["Main2"] = {
        ["EquipItem"] = false,
        ["WeaponSelect"] = 'N/a',
    },
    ["Raid"] = {
        ["Farm"] = false,
        ["difficulty"] = 'Easy',
        ['SkillZ'] = false,
        ['SkillX'] = false,
        ['SkillC'] = false,
        ['SkillV'] = false,
        ["Safe"] = false,
        ["Hp Set"] = 10,
    },
    ["SeaMonster"] = {
        ['Attack'] = false,
        ['CollectChest'] = false,
        ['SkillZ'] = false,
        ['SkillX'] = false,
        ['SkillC'] = false,
        ['SkillV'] = false,
        ["HopServer"] = false,
    },
    ["GhostShip"] = {
        ['Attack'] = false,
        ['CollectChest'] = false,
        ['SkillZ'] = false,
        ['SkillX'] = false,
        ['SkillC'] = false,
        ['SkillV'] = false,
        ["HopServer"] = false,
    },
    ["Stat"]= {
        ['PowerFruit'] = false,
        ["PowerFruitCap"] = 4250,
        ['Defense'] = false,
        ["DefenseCAP"] = 4250,
        ['Sword'] = false,
        ["SwordCAP"] = 4250,
        ['Melee'] = false,
        ["MeleeCAP"] = 4250,
    },
    ["Extra"] = {
        ["DeleteDamage"] = false,
        ["DeleteEffect"] = false,
        ["VisibleCombo"] = true,
        ["VisibleGeppo"] = true,
        ['Fruit Position'] = true,
        ['GrabAllFruit'] = false,
        ["DNOCD"] = false,
        ["GeppoInf"] = false,
        ["GeppoBypass"] = false,
    },
    ["DevilFruit"] = {
        ["Select"] = 'N/a',
        ['AutoBuy'] = false,
    },
    ["Setting"] = {
        ["FpsCap"] = 120,
        ["FpsLock"] = false,
        ["Distance"] = 5,
    },
}

local Mob = nil
local monname = nil
local plr = game.Players.LocalPlayer
local IslandTable = {}
local VirtualUser = game:GetService("VirtualUser")
local quest = require(game:GetService("ReplicatedStorage").QuestManager)
local Levelmon,RealUse,new_table,valuexxx = {},{},nil,1
for i,v in pairs(quest) do
    table.insert(Levelmon, tonumber(v['Mob']:match('%d+')))
end
for i,v in pairs(quest) do
    table.insert(RealUse, tonumber(v['Mob']:match('%d+')))
end


local function sort(a, b)
    if a < b then 
        return true     
    end
end
table.sort(Levelmon)
local function lvlx()
    if plr.PlayerStats.lvl.Value >= 3275 then
        new_table = 3275
    else
        if plr.PlayerStats.lvl.Value >= Levelmon[valuexxx] and plr.PlayerStats.lvl.Value < Levelmon[valuexxx + 1] then
            new_table = Levelmon[valuexxx]
        else
            valuexxx = valuexxx + 1
        end
    end
end
for i,v in pairs(game:GetService("Workspace").Areas:GetChildren()) do
    if v.Name ~= "Sea of dust" then
        table.insert(IslandTable,v.Name)
    end
end
local function ReturnMonFolder()
    if game:GetService("Workspace").Monster.Mon:FindFirstChild(quest[plr.CurrentQuest.Value].Mob) then
        return 'Mon'
    elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(quest[plr.CurrentQuest.Value].Mob) then
        return 'Boss'
    end
end

-- game:GetService("Workspace").GhostMonster["Ghost Ship"].HumanoidRootPart


local _, library = pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Osmium/main/OsmiumLibrary.lua")))

local window = library:CreateWindow("King Legacy Mobile Test Hub")

local Main = window:CreateTab("Main")
local Stats = window:CreateTab("Stats")
local Setting = window:CreateTab("Setting")

local label = Main:CreateLabel("This is main tab","beta king legacy script from chisato.zz")

local Farm = Main:CreateToggle("Start Farming",false,function(value)
    SaveSettings["Main"]["Autofarm"] = value
    
end)

local label1 = Main:CreateLabel("Skill","select skill you want to use while farming")

local z = Main:CreateToggle("skill z",false,function(value)
    SaveSettings["Main"]["SkillZ"] = value
    
end)

local x = Main:CreateToggle("skill x",false,function(value)
    SaveSettings["Main"]["SkillX"] = value
    
end)

local c = Main:CreateToggle("skill c",false,function(value)
    SaveSettings["Main"]["SkillC"] = value
    
end)

local v = Main:CreateToggle("skill v",false,function(value)
    SaveSettings["Main"]["SkillV"] = value
    
end)

local toggle = Main:CreateToggle("Auto Armament",false,function(boolean)
    SaveSettings["Main"]["Buso"] = boolean
    
end)


local toggle = Main:CreateToggle("Auto Ken",false,function(boolean)
    SaveSettings["Main"]["Ken"] = boolean
    
end)

local toggle = Main:CreateToggle("auto ghostship",false,function(boolean)
    SaveSettings["GhostShip"]["Attack"] = boolean
    
end)

local toggle = Main:CreateToggle("ghost ship chest collect",false,function(boolean)
    SaveSettings["GhostShip"]["CollectChest"] = boolean
    
end)

local toggle1 = Main:CreateToggle("skill z ",false,function(boolean)
    SaveSettings["GhostShip"]["SkillZ"] = boolean
    
end)

local toggle2 = Main:CreateToggle("x",false,function(boolean)
    SaveSettings["GhostShip"]["SkillX"] = boolean
    
end)

local toggle3 = Main:CreateToggle("c",false,function(boolean)
    SaveSettings["GhostShip"]["SkillC"] = boolean
    
end)

local toggle4 = Main:CreateToggle("v",false,function(boolean)
    SaveSettings["GhostShip"]["SkillV"] = boolean
    
end)

local label3 = Main:CreateLabel("Seaking","Seaking")

local toggle5 = Main:CreateToggle("attack seaking",false,function(boolean)
    SaveSettings["SeaMonster"]["Attack"] = boolean
    
end)

local toggle6 = Main:CreateToggle("Claim chest",false,function(boolean)
    SaveSettings["SeaMonster"]["CollectChest"] = boolean
    
end)

local toggle7 = Main:CreateToggle("sk skill z",false,function(boolean)
    SaveSettings["SeaMonster"]["SkillZ"] = boolean
    
end)

local toggle8 = Main:CreateToggle("x",false,function(boolean)
    SaveSettings["SeaMonster"]["SkillX"] = boolean
    
end)

local toggle9 = Main:CreateToggle("c",false,function(boolean)
    SaveSettings["SeaMonster"]["SkillC"] = boolean
    
end)

local toggle10 = Main:CreateToggle("v",false,function(boolean)
    SaveSettings["SeaMonster"]["SkillV"] = boolean
    
end)

local toggle11 = Main:CreateToggle("Auto raid",false,function(boolean)
    
end)

local toggle12 = Main:CreateToggle("Auto all skill",false,function(boolean)
    SaveSettings["Raid"]["SkillZ"] = boolean
    SaveSettings["Raid"]["SkillX"] = boolean
    SaveSettings["Raid"]["SkillC"] = boolean
    SaveSettings["Raid"]["SkillV"] = boolean
    
end)

local dropdown1 = Main:CreateDropdown("Teleport to island",IslandTable,function(bool)
	TeleportX = bool
end)

local toggle13 = Main:CreateToggle("teleport",false,function()
    for i, v in pairs(game:GetService("Workspace").Areas:GetChildren()) do
        if v.Name == TeleportX then
            plr.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,300,0)
        end
    end
end)

local sld = Stats:CreateSlider("Stats",0,100,function(arg)
	SaveSettings["Stat"]["PowerFruitCap"] = bool
    SaveSettings["Stat"]["DefenseCAP"] = bool
    SaveSettings["Stat"]["SwordCAP"] = bool
    SaveSettings["Stat"]["MeleeCAP"] = bool
    
end)

local toggle14 = Main:CreateToggle("melee",false,function(boolean)
    SaveSettings["Stat"]["Melee"] = boolean
    
end)

local toggle15 = Main:CreateToggle("sword",false,function(boolean)
    SaveSettings["Stat"]["Sword"] = boolean
    
end)

local toggle16 = Main:CreateToggle("fruit",false,function(boolean)
    SaveSettings["Stat"]["PowerFruit"] = boolean
    
end)

local toggle17 = Main:CreateToggle("defense",false,function(boolean)
    SaveSettings["Stat"]["Defense"] = boolean
    
end)

local time = SettingTab:Label("Server Time : N/a")
local function Munrock()
	if game:GetService("Workspace").AntiTPNPC:FindFirstChild('QuestLvl' .. tostring(new_table))then
		plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC:FindFirstChild('QuestLvl' .. tostring(new_table)).HumanoidRootPart.CFrame * CFrame.new(0,-6.5,0)
	elseif game:GetService("ReplicatedStorage").MAP:FindFirstChild('QuestLvl' .. tostring(new_table)) then
		plr.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP:FindFirstChild('QuestLvl' .. tostring(new_table)).HumanoidRootPart.CFrame  * CFrame.new(0,-6.5,0)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,5000,0)
	end
	wait(.1)
	game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AntiTPNPC:FindFirstChild(('QuestLvl' .. tostring(new_table))))
end
local function click()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton1(Vector2.new(50, 50), CFrame.new(Vector3.new(0, 0, 0)))
end
local function UpdateTime()
    GameTime = math.floor(workspace.DistributedGameTime+0.5)
    Hour = math.floor(GameTime/(60^2))%24
    Minute = math.floor(GameTime/(60^1))%60
    Second = math.floor(GameTime/(60^0))%60
    time:Refresh("|  Hour : " .. Hour.." | Minute : "..Minute.." | Second : "..Second .."  |")
end
local function skilluse(valuexxx)
    game:GetService("VirtualInputManager"):SendKeyEvent(true,valuexxx,false,plr.Character.HumanoidRootPart)
    wait()
    game:GetService("VirtualInputManager"):SendKeyEvent(false,valuexxx,false,plr.Character.HumanoidRootPart)
end


local function LegacyIsland()
    if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
        return {true,"1"}
    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
        return {true,"2"}
    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
        return {true,"3"}
    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
        return {true,"4"}
    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island5") then
        return {true,"5"}
    else 
        return {false,"nil"}
    end
end

local but1 = Setting:CreateToggle("Lock FPs",true, function(bool)
    SaveSettings["Setting"]["FpsLock"] = bool
    
    if SaveSettings["Setting"]["FpsLock"] then
        pcall(setfpscap, SaveSettings["Setting"]["FpsCap"])
        pcall(set_fps_cap, SaveSettings["Setting"]["FpsCap"])
    else
        pcall(setfpscap,240)
        pcall(set_fps_cap,240)
    end
end)

spawn(function()
    while true do
        if SaveSettings["SeaMonster"]["Attack"] then
            if LegacyIsland()[1] == true then
                pcall(function()
                    if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
                            spawn(function ()
                                if  SaveSettings["SeaMonster"]["SkillZ"] then
                                    skilluse("Z")
                                end
                                if  SaveSettings["SeaMonster"]["SkillX"] then
                                    skilluse("X")		
                                end 
                                if  SaveSettings["SeaMonster"]["SkillC"] then
                                    skilluse("C")		
                                end 
                                if SaveSettings["SeaMonster"]["SkillV"] then
                                    skilluse("V")		
                                end  
                            end)
                        spawn(function ()
                            click()
                        end)
                        spawn(function()
                            plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") .HumanoidRootPart.CFrame * CFrame.new(0,-5,0)  
                        end)
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Legacy Island" .. LegacyIsland()[2]].ChestSpawner.CFrame
                    end
                end)
            else
                if SaveSettings["SeaMonster"]["HopServer"] then
                    TPReturner()
                end
            end
        end
        wait()
    end
end)
spawn(function()
    while true do
        if SaveSettings["SeaMonster"]["CollectChest"] then
            if LegacyIsland()[1] == true then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Legacy Island" .. LegacyIsland()[2]].ChestSpawner.CFrame
                end)
            end
        end
        wait(1)
    end
end)

spawn(function ()
    while true do
        if  SaveSettings["Stat"]["PowerFruit"] then
            pcall(function()
                if tonumber(plr.PlayerStats.DF.Value) <= math.floor(SaveSettings["Stat"]["PowerFruitCap"]) then
                plr.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Devil Fruit",1)
                end
            end)
        end
        if  SaveSettings["Stat"]["Defense"] then
            pcall(function()
                if tonumber(plr.PlayerStats.Defense.Value) <= math.floor(SaveSettings["Stat"]["DefenseCAP"]) then
                plr.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Defense",1)
                end
            end)
        end
        if  SaveSettings["Stat"]["Sword"] then
            pcall(function()
                if tonumber(plr.PlayerStats.sword.Value) <= math.floor(SaveSettings["Stat"]["SwordCAP"]) then
                plr.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Sword",1)
                end
            end)
        end
        if  SaveSettings["Stat"]["Melee"] then
            pcall(function()
                if tonumber(plr.PlayerStats.Melee.Value) <= math.floor(SaveSettings["Stat"]["MeleeCAP"]) then
                plr.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Melee",1)
                end
            end)
        end
        wait()
    end
end)
spawn(function ()
    while true do
        if SaveSettings["Main"]["New World"]  then
            if plr.PlayerStats.lvl.Value >= 2350 and game.PlaceId == 4520749081 then
                local ts = game:GetService("TeleportService") local p = game.Players.LocalPlayer ts:Teleport(6381829480, p) 
            end
        end
        wait()
    end
end)



coroutine.wrap(function()
    while true do
        pcall(function ()
            if SaveSettings["Main"]["Buso"] then
                if plr.Character.Haki.Value == 0 then
                    if plr.Character:FindFirstChild("Haki") then
                        plr.Character.Services.Client.Armament:FireServer()
                    end
                end
            end
        end)
        wait(3)
    end
end)()
spawn(function ()
    while true do
        pcall(function ()
            UpdateTime()
        end)
       
        wait()
    end
end)


spawn(function()
    while true do 
        if SaveSettings["Main"]["EquipItem"] and Life == true then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[SaveSettings["Main"]["WeaponSelect"]])
            end)
        end
        
        wait(1)
    end
end)
spawn(function()
    while true do 
        if SaveSettings["Raid"]["EquipItem"] and Life == true then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[SaveSettings["Raid"]["WeaponSelect"]])
            end)
        end
        
        wait(1)
    end
end)
spawn(function()
    while true do 
        if SaveSettings["Main"]["Ken"] then
            pcall(function()
                plr.Character.Services.Client.KenEvent:InvokeServer()  
            end)
        end
        
        wait(1)
    end
end)

spawn(function ()
    while true do
        pcall(function ()
            if game:GetService("Workspace"):FindFirstChild(plr.Name).Humanoid.Health > 0 then
                Life = true
            else
                Life = false
            end
        end)
        wait()
    end
end)
spawn(function ()
    while true do
        if SaveSettings["Extra"]['GeppoInf'] and Life == true then
            pcall(function ()
                plr.Backpack.GeppoNew.cds.Value = 999
            end)
        end
        wait()
    end
end)
spawn(function()
    while true do
        if SaveSettings["GhostShip"]["CollectChest"] then
            if game:GetService("Workspace"):FindFirstChild("Chest1") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest1").RootPart.CFrame
                end)
            end
            if game:GetService("Workspace"):FindFirstChild("Chest2") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest2").RootPart.CFrame
                end)
            end
            if game:GetService("Workspace"):FindFirstChild("Chest3") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest3").RootPart.CFrame
                end)
            end
            if game:GetService("Workspace"):FindFirstChild("Chest4") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest4").RootPart.CFrame
                end)
            end
            if game:GetService("Workspace"):FindFirstChild("Chest5") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest5").RootPart.CFrame
                end)
            end
            if game:GetService("Workspace"):FindFirstChild("Chest6") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest1").RootPart.CFrame
                end)
            end
            if game:GetService("Workspace"):FindFirstChild("Chest7") then
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("Chest2").RootPart.CFrame
                end)
            end
        end
        wait()
    end
end)
spawn(function()
    while wait() do
        if SaveSettings["GhostShip"]["Attack"] then
            if game:GetService("Workspace").GhostMonster:FindFirstChild("Ghost Ship") then
                pcall(function ()
                    spawn(function ()
                        if  SaveSettings["GhostShip"]["SkillZ"] then
                            skilluse("Z")
                        end
                        if  SaveSettings["GhostShip"]["SkillX"] then
                            skilluse("X")		
                        end 
                        if  SaveSettings["GhostShip"]["SkillC"] then
                            skilluse("C")		
                        end 
                        if SaveSettings["GhostShip"]["SkillV"] then
                            skilluse("V")		
                        end  
                        end)
                        spawn(function ()
                        click()
                        end)
                    spawn(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GhostMonster["Ghost Ship"].HumanoidRootPart.CFrame
                    end)
                end)
            else
                if SaveSettings["GhostShip"]["HopServer"] then
                    if not game:GetService("Workspace"):FindFirstChild("Chest1") then
                        TPReturner()
                    end
                end
            end
        end
    end
end)
spawn(function ()
    while true do
        if SaveSettings["Extra"]['GeppoBypass'] and Life == true then
            pcall(function ()
                for i, v in next, getgc() do
                    if typeof(v) == "function" and getfenv(v).script == plr.Backpack.GeppoNew then
                        for i2, v2 in next, getupvalues(v) do
                            if i2 == 7  then
                                repeat wait()
                                    setupvalue(v, i2, 0)
                                 until SaveSettings["Extra"]['GeppoBypass'] == false or not Life
                             end
                        end
                    end
                end
            end)
        end
        wait()
    end
end)
spawn(function ()
    while true do
        if SaveSettings["Extra"]['DNOCD'] and Life == true then
            pcall(function ()
                for i, v in next, getgc() do
                    if typeof(v) == "function" and getfenv(v).script == plr.Backpack.Dash then
                        for i2, v2 in next, getupvalues(v) do
                            if typeof(v2) == 'boolean' then
                                repeat wait()
                                   setupvalue(v, i2, true)
                                until SaveSettings["Extra"]['DNOCD'] == false or not Life
                            end
                        end
                    end
                end
            end)
        end
        wait()
    end
end)
spawn(function ()
    while true do
        if SaveSettings["Raid"]["Farm"] then
            pcall(function ()
                if game.PlaceId == 6381829480 or game.PlaceId == 4520749081 then
                    VirtualUser:CaptureController()
                    VirtualUser:SetKeyDown("w",key)
                    wait()
                    VirtualUser:CaptureController()
                    VirtualUser:SetKeyUp("w",key)
                    plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CircleBeam.CFrame * CFrame.new(0,-25,0)
                end
            end)
        end
        wait()
    end
end)
spawn(function ()
    while true do
        if SaveSettings["Raid"]["Farm"] then
            pcall(function ()
                if game.PlaceId == 5931540094   then
                    game:GetService("ReplicatedStorage").ChooseMapRemote:FireServer(SaveSettings["Raid"]["difficulty"])
                    game:GetService("ReplicatedStorage").GoldenArenaEvents.StartEvent:FireServer()
                end
            end)
        end
        wait()
    end
end)
local AttackOn = true
spawn(function ()
    while true do
        if SaveSettings["Raid"]["Farm"] and game.PlaceId == 5931540094 and AttackOn and Life then
           pcall(function()
                for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") then
                        Mob = v
                            repeat wait()
                                spawn(function ()
                                    plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Setting"]['Distance'])
                                end)
                                spawn(function ()
                                if  SaveSettings["Raid"]["SkillZ"] then
                                    skilluse("Z")
                                end
                                if  SaveSettings["Raid"]["SkillX"] then
                                    skilluse("X")		
                                end 
                                if  SaveSettings["Raid"]["SkillC"] then
                                    skilluse("C")		
                                end 
                                if SaveSettings["Raid"]["SkillV"] then
                                    skilluse("V")		
                                end  
                                end)
                                spawn(function ()
                                click()
                                end)
                            until  v.Humanoid.Health <= 0 or SaveSettings["Raid"]["Farm"] == false or not AttackOn 
                        return
                    end
                end
           end) 
        end
        wait()
    end
end)
spawn(function()
    while true do
        if SaveSettings["Raid"]["Safe"] and Life then
            pcall(function ()
                if plr.Character.Humanoid.Health >= plr.Character.Humanoid.MaxHealth / 100 * SaveSettings["Raid"]["Hp Set"]  then
                    AttackOn = true
                else
                    repeat
                        AttackOn = false
                        for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat wait()
                                    spawn(function ()
                                        plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,100,50)
                                    end)
                                until plr.Character.Humanoid.Health >= plr.Character.Humanoid.MaxHealth or v.Humanoid.Health <= 0 or SaveSettings["Raid"]["Farm"] == false 
                                return
                            end
                        end
                        wait()
                    until plr.Character.Humanoid.Health >= plr.Character.Humanoid.MaxHealth or not SaveSettings["Raid"]["Safe"]
                end
            end)
        end
        wait()
    end
end)
spawn(function ()
    while true do
        if  SaveSettings["Extra"]["DeleteDamage"] then
            pcall(function ()
                if game:GetService("Workspace"):FindFirstChild('DamageShow') then
                    game:GetService("Workspace"):FindFirstChild('DamageShow').Parent = game:GetService("Workspace").Camera
                end
            end)
        else
            pcall(function ()
                if game:GetService("Workspace").Camera:FindFirstChild('DamageShow') then
                    game:GetService("Workspace").Camera:FindFirstChild('DamageShow').Parent =  game:GetService("Workspace")
                end
            end)
        end
        if SaveSettings["Extra"]["DeleteEffect"] then
            pcall(function ()
                if game:GetService("Workspace"):FindFirstChild('Effects') then
                    game:GetService("Workspace"):FindFirstChild('Effects').Parent = game:GetService("Workspace").Camera
                end
            end)
        else
            pcall(function ()
                if game:GetService("Workspace").Camera:FindFirstChild('Effects') then
                    game:GetService("Workspace").Camera:FindFirstChild('Effects').Parent =  game:GetService("Workspace")
                end
            end)
        end
        if SaveSettings["Extra"]["VisibleCombo"] then
            pcall(function ()
               
            end)
        else
            pcall(function ()
                plr.PlayerGui.Combo.Enabled = SaveSettings["Extra"]["VisibleCombo"]
            end)
        end
        if SaveSettings["Extra"]["Fruit Position"] then
            game.Players.LocalPlayer.UserId = 991117111
        else
            game.Players.LocalPlayer.UserId = real
        end
        if SaveSettings["Extra"]['GrabAllFruit']  then
            if game:GetService("Workspace"):FindFirstChildWhichIsA("Tool") then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA("Tool") then
                        firetouchinterest(v.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart,0)
                        firetouchinterest(v.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart,1)
                    end
                end
            end
        end
        if SaveSettings["Extra"]["VisibleGeppo"] then
            pcall(function ()
               
            end)
        else
            pcall(function ()
                plr.GeppoCount.Combo.Enabled = SaveSettings["Extra"]["VisibleGeppo"]
            end)
        end
        wait()
    end
end)


spawn(function ()
    while true do
        if SaveSettings["Main"]["Autofarm"] and (game.PlaceId == 6381829480 or game.PlaceId == 4520749081) then
            pcall(function ()
                lvlx()
                    if plr.PlayerGui.Quest.QuestBoard.Visible == false then
                        spawn(function ()
                            Munrock()
                        end)
                    elseif not string.match(plr.PlayerGui.Quest.QuestBoard.QuestCount.Text,new_table) then
                        spawn(function ()
                            Munrock()
                        end)
                    elseif plr.PlayerGui.Quest.QuestBoard.Visible == true and string.match(plr.PlayerGui.Quest.QuestBoard.QuestCount.Text,new_table) then
                        if  game:GetService("ReplicatedStorage").MOB:FindFirstChild(quest[plr.CurrentQuest.Value].Mob) then
                            plr.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MOB:FindFirstChild(quest[plr.CurrentQuest.Value].Mob).HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                        else
                            for i,v in pairs(game:GetService("Workspace").Monster[ReturnMonFolder()]:GetChildren()) do
                                if v.Name == quest[plr.CurrentQuest.Value].Mob  and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    Mob = v
                                    repeat wait()
                                        spawn(function ()
                                            plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,SaveSettings["Setting"]['Distance'])
                                        end)
                                        spawn(function ()
                                        if  SaveSettings["Main"]["SkillZ"] then
                                            skilluse("Z")
                                        end
                                        if  SaveSettings["Main"]["SkillX"] then
                                            skilluse("X")		
                                        end 
                                        if  SaveSettings["Main"]["SkillC"] then
                                            skilluse("C")		
                                        end 
                                        if SaveSettings["Main"]["SkillV"] then
                                            skilluse("V")		
                                        end  
                                        end)
                                        spawn(function ()
                                        click()
                                        end)
                                    until  v.Humanoid.Health <= 0 or SaveSettings["Main"]["Autofarm"] == false or plr.PlayerGui.Quest.QuestBoard.Visible == false
                                    return
                                end
                            end
                        end
                    end
                end)
            end
        wait()
    end    
end)
coroutine.wrap(function()
    game:getService("RunService"):UnbindFromRenderStep("noclOppl")
        game:getService("RunService"):BindToRenderStep("noclOppl",0,function()
        if SaveSettings["Main"]["Autofarm"] then
            pcall(function()
                for i2,v in pairs(plr.PlayerGui:GetChildren()) do
                    if string.find(v.Name,"QuestLvl") or string.find(v.Name,"SwordShop") then 
                    v.Dialogue.Accept.Position = UDim2.new(0, -800 ,0, -700)
                    v.Dialogue.Accept.Size = UDim2.new(5000, 5000, 5000, 5000)
                    v.Dialogue.Accept.BackgroundTransparency = 1
                    v.Dialogue.Accept.ImageTransparency = 1
                    click()
                end
            end
        end)
        end
        
    end)
end)()
spawn(function ()
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
        if SaveSettings["Main"]["Autofarm"] or SaveSettings["Raid"]["Farm"] or SaveSettings["SeaMonster"]["Attack"] or SaveSettings["GhostShip"]["Attack"] then
            local char = plr.Character or plr.CharacterAdded:Wait()
            char.Humanoid:ChangeState(11)
        end
    end)
end)
end)

local metatable = getrawmetatable(game)
local namecall = metatable.__namecall
  setreadonly(metatable, false)
    metatable.__namecall = newcclosure(function(self, ...)
        local args = {...}  
        if SaveSettings["Main"]["Autofarm"] or SaveSettings["Raid"]["Farm"] then
            if self.Name == "Z"  and Mob ~= nil then
                for i,v in pairs(args) do
                    if typeof(v) == "CFrame" then
                        args[i] = Mob.HumanoidRootPart.CFrame
                    end
                end
            return namecall(self,unpack(args))
          end
          if self.Name == "X" and Mob ~= nil then
            for i,v in pairs(args) do
                if typeof(v) == "CFrame" then
                    args[i] = Mob.HumanoidRootPart.CFrame
                end
            end
        return namecall(self,unpack(args))
      end
      if self.Name == "C" and Mob ~= nil then
        for i,v in pairs(args) do
            if typeof(v) == "CFrame" then
                args[i] = Mob.HumanoidRootPart.CFrame
            end
        end
    return namecall(self,unpack(args))
    end
    if self.Name == "V" and Mob ~= nil then
        for i ,v in pairs(args) do
            if typeof(v) == "CFrame" then
                args[i] = Mob.HumanoidRootPart.CFrame
            end
        end
    return namecall(self,unpack(args))
    end
        end
      
    return namecall(self, ...)
    end)
  setreadonly(metatable, true)
spawn(function()
    while wait() do
        pcall(function() 
            local VirtualUser = game:GetService("VirtualUser")
            VirtualUser:CaptureController()
            VirtualUser:SetKeyDown("w",key)
            wait()
            VirtualUser:CaptureController()
            VirtualUser:SetKeyUp("w",key)
            wait(1000)
        end)
    end
end)
spawn(function()
    while true do
        pcall(function()
            for i,v in pairs(game.workspace:GetDescendants()) do
                if v:IsA("Seat") then
                    v.Disabled = true
                end
            end
        end)
        wait(400)
    end
end)
