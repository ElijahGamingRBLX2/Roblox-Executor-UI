-- [[ Init Script ]] --
getgenv().http = {
request = request
}

getgenv().console = {
    consoleprint = rconsoleprint,
    consoleinput = rconsoleinput,
    consoledestroy = rconsoledestroy,
    consolecreate = rconsolecreate,
    consoleclear = rconsoleclear,
    consolesettitle = rconsolesettitle
}

consoleprint = rconsoleprint
consoleinput = rconsoleinput
consoledestroy = rconsoledestroy
consolecreate = rconsolecreate
consoleclear = rconsoleclear
consolesettitle = rconsolesettitle

function identifyexecutor()
    return "Sempyre X Next Generation"
end
-- [[ Init Script ]] --
setfpscap(0)
getgenv().require = function(x)
    if typeof(x) ~= "Instance" or x.ClassName ~= "ModuleScript" then
        error("ModuleScript expected", 2)
    elseif type(x) ~= "number" then
        error("Number expected", 2)
    end

    local success, result = pcall(oldrequire, x)

    if not success then
        error(result, 2)
    end

    return result
end
wait(1)

warn("Sempyre X Next Generation")

getgenv().sempyrexload = true

print("Sempyre X Next Generation")
if _G.is_sempyrexnextgeneration_loaded then
    print("already running")
    return
end

_G.is_sempyrexnextgeneration_loaded = true


game.StarterGui:SetCore("SendNotification", {
	Title = "Sempyre X Next Generation"; -- the title (ofc)
	Text = "Sempyre X Has Loaded"; -- what the text says (ofc)
	Icon = "https://cdn.discordapp.com/attachments/1245398119357874318/1247109413039378432/IMG_0334.png?ex=665ed4a6&is=665d8326&hm=9fb2c6f240cc263985f4ad90f16e1a73daba990620661f30e1f93939899f269d&"; -- the image if u want. 
	Duration = 5; -- how long the notification should in secounds
})

local function EnableDrag(Frame)
	local dragToggle
	local dragSpeed = .25
	local dragInput
	local dragStart
	local dragPos

	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end   

local SXAndroid = Instance.new("ScreenGui") 
local HDFrame = Instance.new("Frame")  
local SXminimize = Instance.new("TextButton")    
local SXtitle = Instance.new("TextLabel")  
local HDCorner = Instance.new("UICorner")   
local bg = Instance.new("Frame")  
local bgCorner = Instance.new("UICorner")   
local Separator = Instance.new("Frame")   
local ExecBoxFrame = Instance.new("Frame")  
local ExecBox = Instance.new("TextBox") 
local boxStroke = Instance.new("UIStroke") 
local boxCorner = Instance.new("UICorner")    
local ExecClipboard = Instance.new("TextButton")
local ClipCorner = Instance.new("UICorner")        
local ExecButton = Instance.new("TextButton")  
local ExButtonCorner = Instance.new("UICorner") 
local SXAndroidIsOpen = true 

EnableDrag(HDFrame)    

SXAndroid.Name = "SXAndroid" 
SXAndroid.Parent = game.CoreGui 


--- [HDFrame - Frame]
HDFrame.Visible = true
HDFrame.Parent = SXAndroid
HDFrame.BackgroundTransparency = 0
HDFrame.BorderColor3 = Color3.new(0.278431, 0.270588, 0.317647)
HDFrame.Name = "HDFrame"
HDFrame.Position = UDim2.new(0.30000001192092896,0,0.10000000149011612,0)
HDFrame.Size = UDim2.new(0,300,0,35)
HDFrame.ZIndex = 2
HDFrame.BorderSizePixel = 0
HDFrame.BackgroundColor3 = Color3.fromRGB( 67, 65, 85) 

--- [SXminimize - TextButton]
SXminimize.Visible = true
SXminimize.TextWrapped = false
SXminimize.BackgroundTransparency = 1
SXminimize.TextColor3 = Color3.new(1, 1, 1)
SXminimize.Parent = HDFrame
SXminimize.Text = "-"
SXminimize.BorderSizePixel = 1
SXminimize.BorderColor3 = Color3.new(0.639216, 0.635294, 0.647059)
SXminimize.Size = UDim2.new(0,200,0,50)
SXminimize.Font = Enum.Font.GothamBold
SXminimize.Name = "SXminimize"
SXminimize.Position = UDim2.new(0.6000000238418579,5,-0.2029999941587448,-1)
SXminimize.TextScaled = false
SXminimize.ZIndex = 2
SXminimize.TextSize = 14
SXminimize.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059) 
SXminimize.MouseButton1Click:Connect(function() 
if SXAndroidIsOpen == true then 
SXAndroidIsOpen = false 
bg:TweenSize(UDim2.new(1,0,0,0))  
SXminimize.Text = "+" 
else 
SXAndroidIsOpen = true 
bg:TweenSize(UDim2.new(1,0,7,10)) 
SXminimize.Text = "-" 
end 
end) 

--- [SXtitle - TextLabel]
SXtitle.Visible = true
SXtitle.TextWrapped = false
SXtitle.BackgroundTransparency = 1
SXtitle.TextColor3 = Color3.new(1, 1, 1)
SXtitle.Parent = HDFrame
SXtitle.Text = "Executor GUI"
SXtitle.BorderSizePixel = 1
SXtitle.BorderColor3 = Color3.new(0.639216, 0.635294, 0.647059)
SXtitle.Size = UDim2.new(0,200,0,50)
SXtitle.Font = Enum.Font.GothamBold
SXtitle.Name = "Executor GUI"
SXtitle.Position = UDim2.new(-0.10199999809265137,-10,-0.2029999941587448,-1)
SXtitle.TextScaled = false
SXtitle.ZIndex = 2
SXtitle.TextSize = 12
SXtitle.BackgroundColor3 = Color3.new(0.639216, 0.635294, 0.647059)

--- [HDCorner - UICorner]
HDCorner.Parent = HDFrame
HDCorner.Name = "HDCorner"
HDCorner.CornerRadius = UDim.new(0, 8)

--- [bg - Frame]
bg.Visible = true
bg.Parent = HDFrame
bg.ClipsDescendants = true 
bg.BackgroundTransparency = 0
bg.BorderColor3 = Color3.new(0.278431, 0.270588, 0.317647)
bg.Name = "bg"
bg.Position = UDim2.new(0,0,0,0)
bg.Size = UDim2.new(1,0,7,10)
bg.ZIndex = 1
bg.BorderSizePixel = 0
bg.BackgroundColor3 = Color3.fromRGB( 67, 65, 85) 

--- [bgCorner - UICorner]
bgCorner.Parent = bg
bgCorner.Name = "bgCorner"
bgCorner.CornerRadius = UDim.new(0, 8)

--- [Separator - Frame]
Separator.Visible = true
Separator.Parent = bg
Separator.BackgroundTransparency = 0
Separator.BorderColor3 = Color3.new(0.952941, 0.952941, 0.952941)
Separator.Name = "Separator"
Separator.Position = UDim2.new(0,0,0,35)
Separator.Size = UDim2.new(1,0,0,2)
Separator.ZIndex = 1
Separator.BorderSizePixel = 0
Separator.BackgroundColor3 = Color3.new(0.952941, 0.952941, 0.952941)

--- [ExecBoxFrame - Frame] 
ExecBoxFrame.Visible = true 
ExecBoxFrame.Parent = bg
ExecBoxFrame.BackgroundTransparency = 0
ExecBoxFrame.BorderColor3 = Color3.new(0.227451, 0.243137, 0.333333)
ExecBoxFrame.Name = "ExecBoxFrame"
ExecBoxFrame.Position = UDim2.new(0.10000000149011612,3,0.20000000298023224,0)
ExecBoxFrame.Size = UDim2.new(0.800000011920929,0,0,150)
ExecBoxFrame.ZIndex = 1
ExecBoxFrame.BorderSizePixel = 0
ExecBoxFrame.BackgroundColor3 = Color3.new(0.227451, 0.243137, 0.333333) 

--- [boxCorner - UICorner]
boxCorner.Parent = ExecBoxFrame
boxCorner.Name = "boxCorner"
boxCorner.CornerRadius = UDim.new(0, 5) 

boxStroke.Name = "boxStroke" 
boxStroke.Parent = ExecBoxFrame 
boxStroke.Color = Color3.fromRGB(89, 89, 114) 
boxStroke.Thickness = 1 

--- [ExecBox - TextBox]
ExecBox.Visible = true
ExecBox.TextWrapped = true
ExecBox.Parent = ExecBoxFrame 
ExecBox.TextSize = 8
ExecBox.ClearTextOnFocus = false  
ExecBox.MultiLine = true  
ExecBox.TextXAlignment = Enum.TextXAlignment.Left
ExecBox.TextYAlignment = Enum.TextYAlignment.Top    
ExecBox.Size = UDim2.new(0.8980000019073486,10,0.8980000019073486,5)
ExecBox.TextColor3 = Color3.new(0.646542, 0.680449, 0.829265)
ExecBox.BorderColor3 = Color3.new(0.394429, 0.403197, 0.53824)
ExecBox.Text = "Welcome To Sempyre X | Next Generation" 
ExecBox.BackgroundTransparency = 1
ExecBox.Name = "ExecBox"
ExecBox.Position = UDim2.new(0,7,0,5)
ExecBox.BorderSizePixel = 1
ExecBox.ZIndex = 1
ExecBox.TextScaled = false
ExecBox.BackgroundColor3 = Color3.new(0.394429, 0.403197, 0.53824) 
 

--- [ExecClipboard - TextButton]
ExecClipboard.Visible = true
ExecClipboard.TextWrapped = true
ExecClipboard.BackgroundTransparency = 0
ExecClipboard.TextColor3 = Color3.new(0.713726, 0.713726, 0.917647)
ExecClipboard.Parent = bg
ExecClipboard.Text = "Execute Clipboard"
ExecClipboard.AutoButtonColor = false 
ExecClipboard.BorderSizePixel = 0
ExecClipboard.BorderColor3 = Color3.new(0.431373, 0.431373, 0.556863)
ExecClipboard.Size = UDim2.new(0,120,0,30)
ExecClipboard.Font = Enum.Font.GothamBold
ExecClipboard.Name = "ExecClipboard"
ExecClipboard.Position = UDim2.new(0.30000001192092896,62,0.800000011920929,5)
ExecClipboard.TextScaled = false
ExecClipboard.ZIndex = 1
ExecClipboard.TextSize = 11
ExecClipboard.BackgroundColor3 = Color3.new(0.431373, 0.431373, 0.556863)
ExecClipboard.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        getclipboard()
	toclipboard()
    end)

    if success then
        ExecClipboard.Text = "Executed!"
        wait(1)
        ExecClipboard.Text = "Execute Clipboard" 
else 
    ExecClipboard.Text = "Executed Succesfully!" 
    wait(1)
    ExecClipboard.Text = "Execute Clipboard" 
    warn( tostring(result) .. "\n" .. debug.traceback() ) 
end
end)  

--- [ClipCorner - UICorner]
ClipCorner.Parent = ExecClipboard
ClipCorner.Name = "ClipCorner"
ClipCorner.CornerRadius = UDim.new(0, 8)

--- [ExecButton - TextButton]
ExecButton.Visible = true
ExecButton.TextWrapped = true
ExecButton.BackgroundTransparency = 0
ExecButton.TextColor3 = Color3.new(0.713726, 0.713726, 0.917647)
ExecButton.Parent = bg
ExecButton.Text = "Execute"
ExecButton.AutoButtonColor = false 
ExecButton.BorderSizePixel = 0
ExecButton.BorderColor3 = Color3.new(0.431373, 0.431373, 0.556863)
ExecButton.Size = UDim2.new(0,80,0,30)
ExecButton.Font = Enum.Font.GothamBold
ExecButton.Name = "ExecButton"
ExecButton.Position = UDim2.new(0.20000000298023224,-25,0.800000011920929,5)
ExecButton.TextScaled = false
ExecButton.ZIndex = 1
ExecButton.TextSize = 11
ExecButton.BackgroundColor3 = Color3.new(0.431373, 0.431373, 0.556863) 
ExecButton.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        loadstring(ExecBox.Text)()
        loadstring(game:HttpGet(ExecBox.Text))()
	executecode(game:HttpGet("ExecBox.Text"))
	loadstring(source)()
    end)

    if success then
        ExecButton.Text = "Executed!"
        wait(1)
        ExecButton.Text = "Execute"
else 
    ExecButton.Text = "Executed Succesfully!" 
    wait(1)
    ExecButton.Text = "Execute" 
    warn( tostring(result) .. "\n" .. debug.traceback() ) 
end
end) 

--- [ExButtonCorner - UICorner]
ExButtonCorner.Parent = ExecButton
ExButtonCorner.Name = "ExButtonCorner"
ExButtonCorner.CornerRadius = UDim.new(0, 8)
framework.init();
