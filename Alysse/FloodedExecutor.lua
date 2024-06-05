local FloodedUI = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local MainFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Exeuction = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local script1 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Add = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local script2 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Add2 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local script3 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Add3 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Menu = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Clear = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Copyy = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Executies = Instance.new("TextButton")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local OfficialUI = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Home = Instance.new("ImageButton")
local Executorr = Instance.new("ImageButton")
local ScriptHub = Instance.new("ImageButton")
local Settings = Instance.new("ImageButton")
local Console = Instance.new("ImageButton")
local Credits = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local Ceo = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIDesigner = Instance.new("TextLabel")
local Scripter = Instance.new("TextLabel")
local CEO = Instance.new("TextLabel")
local Compiler = Instance.new("TextLabel")
local Discord = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Version = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Settings_2 = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local WSAdjuster = Instance.new("TextBox")
local JPAdjuster = Instance.new("TextBox")
local SetWS = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local SetJP = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local JPName = Instance.new("TextLabel")
local WSName = Instance.new("TextLabel")
local Console_2 = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local Console_2 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local ConsoleLogs = Instance.new("TextLabel")
local ScriptSearch = Instance.new("Frame")
local InfYield = Instance.new("ImageLabel")
local ExecuteINF = Instance.new("TextButton")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local UICorner_18 = Instance.new("UICorner")
local UICorner_19 = Instance.new("UICorner")
local ScriptSaver = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local AddScripts = Instance.new("TextButton")
local ScripT = Instance.new("TextBox")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local SaveScript = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local ClearScript = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local CopyScript = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local ScriptExecute = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local ScriptName = Instance.new("TextLabel")
local QuickHacks = Instance.new("TextLabel")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local Dex = Instance.new("ImageLabel")
local ExecuteDEX = Instance.new("TextButton")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local UICorner_25 = Instance.new("UICorner")
 
--Properties:
 
FloodedUI.Name = "FloodedUI"
FloodedUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FloodedUI.ResetOnSpawn = false

ImageButton.Parent = FloodedUI
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.00764006842, 0, 0.149593979, 0)
ImageButton.Size = UDim2.new(0.0418628491, 0, 0.0728123784, 0)
ImageButton.Visible = false
ImageButton.Image = "rbxassetid://14221141941"
ImageButton.MouseButton1Click:connect(function()
    MainFrame.Visible = true
    ImageButton.Visible = false
end)
 
UICorner.CornerRadius = UDim.new(6, 0)
UICorner.Parent = ImageButton
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = FloodedUI
MainFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
MainFrame.BackgroundTransparency = 0.800
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.165485829, 0, 0.278385013, 0)
MainFrame.Size = UDim2.new(0.668720067, 0, 0.593827188, 0)
 
UICorner_2.CornerRadius = UDim.new(0, 30)
UICorner_2.Parent = MainFrame
 
Exeuction.Name = "Exeuction"
Exeuction.Parent = MainFrame
Exeuction.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exeuction.BackgroundTransparency = 0.500
Exeuction.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exeuction.BorderSizePixel = 0
Exeuction.Position = UDim2.new(0.0593654029, 0, 0.150190666, 0)
Exeuction.Size = UDim2.new(0.879222095, 0, 0.652486861, 0)
Exeuction.Visible = false
Exeuction.Font = Enum.Font.SourceSans
Exeuction.MultiLine = true
Exeuction.Text = ""
Exeuction.TextColor3 = Color3.fromRGB(0, 0, 0)
Exeuction.TextSize = 25.000
Exeuction.TextStrokeTransparency = 2.000
Exeuction.TextWrapped = true
 
UICorner_3.Parent = Exeuction
 
script1.Name = "script1"
script1.Parent = Exeuction
script1.BackgroundColor3 = Color3.fromRGB(116, 253, 255)
script1.BorderColor3 = Color3.fromRGB(0, 0, 0)
script1.BorderSizePixel = 0
script1.Position = UDim2.new(0, 0, -0.191176444, 0)
script1.Size = UDim2.new(0.23282887, 0, 0.159313709, 0)
script1.Font = Enum.Font.SourceSans
script1.Text = "script1.txt"
script1.TextColor3 = Color3.fromRGB(0, 0, 0)
script1.TextSize = 20.000
script1.TextWrapped = true
 
UICorner_4.Parent = script1
 
Add.Name = "Add"
Add.Parent = Exeuction
Add.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Add.BorderColor3 = Color3.fromRGB(0, 0, 0)
Add.BorderSizePixel = 0
Add.Position = UDim2.new(0.254947603, 0, -0.191176444, 0)
Add.Size = UDim2.new(0, 57, 0, 50)
Add.Font = Enum.Font.SourceSans
Add.Text = "+"
Add.TextColor3 = Color3.fromRGB(0, 0, 0)
Add.TextScaled = true
Add.TextSize = 14.000
Add.TextWrapped = true
Add.Visible = false
 
UICorner_5.Parent = Add
 
script2.Name = "script2"
script2.Parent = Exeuction
script2.BackgroundColor3 = Color3.fromRGB(116, 253, 255)
script2.BorderColor3 = Color3.fromRGB(0, 0, 0)
script2.BorderSizePixel = 0
script2.Position = UDim2.new(0.254947603, 0, -0.191176444, 0)
script2.Size = UDim2.new(0.23282887, 0, 0.159313709, 0)
script2.Visible = false
script2.Font = Enum.Font.SourceSans
script2.Text = "script2.txt"
script2.TextColor3 = Color3.fromRGB(0, 0, 0)
script2.TextSize = 20.000
script2.TextWrapped = true
 
UICorner_6.Parent = script2
 
Add2.Name = "Add2"
Add2.Parent = Exeuction
Add2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Add2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Add2.BorderSizePixel = 0
Add2.Position = UDim2.new(0.506402791, 0, -0.191176444, 0)
Add2.Size = UDim2.new(0, 57, 0, 50)
Add2.Visible = false
Add2.Font = Enum.Font.SourceSans
Add2.Text = "+"
Add2.TextColor3 = Color3.fromRGB(0, 0, 0)
Add2.TextScaled = true
Add2.TextSize = 14.000
Add2.TextWrapped = true
 
UICorner_7.Parent = Add2
 
script3.Name = "script3"
script3.Parent = Exeuction
script3.BackgroundColor3 = Color3.fromRGB(116, 253, 255)
script3.BorderColor3 = Color3.fromRGB(0, 0, 0)
script3.BorderSizePixel = 0
script3.Position = UDim2.new(0.506402791, 0, -0.191176444, 0)
script3.Size = UDim2.new(0.23282887, 0, 0.159313709, 0)
script3.Visible = false
script3.Font = Enum.Font.SourceSans
script3.Text = "script2.txt"
script3.TextColor3 = Color3.fromRGB(0, 0, 0)
script3.TextSize = 20.000
script3.TextWrapped = true
 
UICorner_8.Parent = script3
 
Add3.Name = "Add3"
Add3.Parent = Exeuction
Add3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Add3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Add3.BorderSizePixel = 0
Add3.Position = UDim2.new(0.759022117, 0, -0.191176444, 0)
Add3.Size = UDim2.new(0, 57, 0, 50)
Add3.Visible = false
Add3.Font = Enum.Font.SourceSans
Add3.Text = "+"
Add3.TextColor3 = Color3.fromRGB(0, 0, 0)
Add3.TextScaled = true
Add3.TextSize = 14.000
Add3.TextWrapped = true
 
UICorner_9.Parent = Add3
 
Menu.Name = "Menu"
Menu.Parent = MainFrame
Menu.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.00818835758, 0, -0.214623213, 0)
Menu.Size = UDim2.new(0.982599795, 0, 0.139207959, 0)
 
UICorner_10.CornerRadius = UDim.new(0, 10)
UICorner_10.Parent = Menu
 
Title.Name = "Title"
Title.Parent = Menu
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0114583336, 0, 0.0769230798, 0)
Title.Size = UDim2.new(0.114583336, 0, 0.865384638, 0)
Title.Font = Enum.Font.DenkOne
Title.Text = "Flooded"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 30.000
Title.TextWrapped = true
 
Exit.Name = "Exit"
Exit.Parent = Menu
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.949999988, 0, 0.0192307699, 0)
Exit.Size = UDim2.new(0.0416666679, 0, 0.942307711, 0)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 0, 0)
Exit.TextScaled = true
Exit.TextSize = 40.000
Exit.TextWrapped = true
Exit.MouseButton1Click:connect(function()
    MainFrame.Visible = false
    ImageButton.Visible = true
    ScriptSearch.Visible = false
    InfYield.Visible = false
    QuickHacks.Visible = false
    ScriptSaver.Visible = false
    AddScripts.Visible = false
    Console_2.Visible = false
    Settings_2.Visible = false
    Dex.Visible = false
end)
 
UITextSizeConstraint.Parent = Exit
UITextSizeConstraint.MaxTextSize = 40
 
Clear.Name = "Clear"
Clear.Parent = Menu
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BackgroundTransparency = 1.000
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.402471453, 0, 0.0341652781, 0)
Clear.Size = UDim2.new(0.0869111642, 0, 0.961538434, 0)
Clear.Font = Enum.Font.DenkOne
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 30.000
Clear.TextWrapped = true
Clear.MouseButton1Click:connect(function()
    Exeuction.Text = ""
end)
 
UITextSizeConstraint_2.Parent = Clear
UITextSizeConstraint_2.MaxTextSize = 30
 
Copyy.Name = "Copyy"
Copyy.Parent = Menu
Copyy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Copyy.BackgroundTransparency = 1.000
Copyy.BorderColor3 = Color3.fromRGB(0, 0, 0)
Copyy.BorderSizePixel = 0
Copyy.Position = UDim2.new(0.516316772, 0, 0.0939033031, 0)
Copyy.Size = UDim2.new(0.114835441, 0, 0.804991424, 0)
Copyy.Font = Enum.Font.DenkOne
Copyy.Text = "Copy Script"
Copyy.TextColor3 = Color3.fromRGB(255, 255, 255)
Copyy.TextScaled = true
Copyy.TextSize = 30.000
Copyy.TextWrapped = true
Copyy.MouseButton1Click:connect(function()
    setclipboard(Exeuction.Text)
    game.StarterGui:SetCore("SendNotification", {
            Title = "Flooded Android",
            Text = "Text Copied Into Clipboard!",
            Duration = 3
        })
end)
 
UITextSizeConstraint_3.Parent = Copyy
UITextSizeConstraint_3.MaxTextSize = 30
 
Executies.Name = "Executies"
Executies.Parent = Menu
Executies.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executies.BackgroundTransparency = 1.000
Executies.BorderColor3 = Color3.fromRGB(0, 0, 0)
Executies.BorderSizePixel = 0
Executies.Position = UDim2.new(0.266096145, 0, 0.0515756123, 0)
Executies.Size = UDim2.new(0.100932986, 0, 0.909952462, 0)
Executies.Font = Enum.Font.DenkOne
Executies.Text = "Execute"
Executies.TextColor3 = Color3.fromRGB(255, 255, 255)
Executies.TextScaled = true
Executies.TextSize = 30.000
Executies.TextWrapped = true
Executies.MouseButton1Click:connect(function()
    loadstring(Exeuction.Text)()
    game.StarterGui:SetCore("SendNotification", {
            Title = "Flooded",
            Text = "Script Executed",
            Duration = 3
        })
end)

UITextSizeConstraint_4.Parent = Executies
UITextSizeConstraint_4.MaxTextSize = 30
 
OfficialUI.Name = "Official UI"
OfficialUI.Parent = MainFrame
OfficialUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OfficialUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
OfficialUI.BorderSizePixel = 0
OfficialUI.Position = UDim2.new(1.0849539, 0, -0.175801381, 0)
OfficialUI.Size = UDim2.new(0.0658880323, 0, 1.17509317, 0)
 
UICorner_11.CornerRadius = UDim.new(0, 10)
UICorner_11.Parent = OfficialUI
 
Home.Name = "Home"
Home.Parent = OfficialUI
Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.0421568342, 0, 0.0952947587, 0)
Home.Size = UDim2.new(0.884615481, 0, 0.0771653503, 0)
Home.Image = "rbxassetid://14248632714"
Home.MouseButton1Click:connect(function()
    Credits.Visible = true
    Version.Visible = true
    Exeuction.Visible = false
    ScriptSearch.Visible = false
    ScripT.Visible = false
    InfYield.Visible = false
    QuickHacks.Visible = false
    ScriptSaver.Visible = false
    AddScripts.Visible = false
    Console_2.Visible = false
    Settings_2.Visible = false
    Dex.Visible = false
end)
 
Executorr.Name = "Executorr"
Executorr.Parent = OfficialUI
Executorr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executorr.BorderColor3 = Color3.fromRGB(0, 0, 0)
Executorr.BorderSizePixel = 0
Executorr.Position = UDim2.new(0.00253346795, 0, 0.222716615, 0)
Executorr.Size = UDim2.new(0.997466743, 0, 0.120740511, 0)
Executorr.Image = "rbxassetid://14287996121"
Executorr.MouseButton1Click:connect(function()
    Credits.Visible = false
    Version.Visible = false
    Exeuction.Visible = true
    ScriptSearch.Visible = false
    ScripT.Visible = false
    InfYield.Visible = false
    QuickHacks.Visible = false
    ScriptSaver.Visible = false
    AddScripts.Visible = false
    Console_2.Visible = false
    Settings_2.Visible = false
    Dex.Visible = false
end)
 
ScriptHub.Name = "Script Hub"
ScriptHub.Parent = OfficialUI
ScriptHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptHub.BorderSizePixel = 0
ScriptHub.Position = UDim2.new(0.0421568342, 0, 0.389209628, 0)
ScriptHub.Size = UDim2.new(0.884615302, 0, 0.0795178413, 0)
ScriptHub.Image = "rbxassetid://14248709795"
ScriptHub.MouseButton1Click:connect(function()
    Credits.Visible = false
    Version.Visible = false
    Exeuction.Visible = false
    ScriptSearch.Visible = true
    ScripT.Visible = false
    InfYield.Visible = true
    QuickHacks.Visible = true
    ScriptSaver.Visible = true
    AddScripts.Visible = true
    SaveScript.Visible = true
    Console_2.Visible = false
    Settings_2.Visible = false
    Dex.Visible = true
end)
 
Settings.Name = "Settings"
Settings.Parent = OfficialUI
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.0310691167, 0, 0.854534745, 0)
Settings.Size = UDim2.new(0.963142633, 0, 0.113230281, 0)
Settings.Image = "rbxassetid://14287801000"
Settings.MouseButton1Click:connect(function()
    Credits.Visible = false
    Version.Visible = false
    Exeuction.Visible = false
    ScriptSearch.Visible = false
    ScripT.Visible = false
    InfYield.Visible = false
    QuickHacks.Visible = false
    ScriptSaver.Visible = false
    AddScripts.Visible = false
    SaveScript.Visible = false
    Console_2.Visible = false
    Settings_2.Visible = true
    Dex.Visible = false
end)
 
Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits.BackgroundTransparency = 0.500
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0337768681, 0, 0.38910833, 0)
Credits.Size = UDim2.new(0.93142271, 0, 0.538507223, 0)
 
UICorner_12.CornerRadius = UDim.new(0, 10)
UICorner_12.Parent = Credits
 
Ceo.Name = "Ceo"
Ceo.Parent = Credits
Ceo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ceo.BackgroundTransparency = 1.000
Ceo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ceo.BorderSizePixel = 0
Ceo.Position = UDim2.new(0.343990177, 0, 0, 0)
Ceo.Size = UDim2.new(0.219780222, 0, 0.171821311, 0)
Ceo.Font = Enum.Font.DenkOne
Ceo.Text = "Credits"
Ceo.TextColor3 = Color3.fromRGB(255, 255, 255)
Ceo.TextScaled = true
Ceo.TextSize = 40.000
Ceo.TextWrapped = true
 
UITextSizeConstraint_5.Parent = Ceo
UITextSizeConstraint_5.MaxTextSize = 40
 
UIDesigner.Name = "UI Designer"
UIDesigner.Parent = Credits
UIDesigner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UIDesigner.BackgroundTransparency = 1.000
UIDesigner.BorderColor3 = Color3.fromRGB(0, 0, 0)
UIDesigner.BorderSizePixel = 0
UIDesigner.Position = UDim2.new(0.014729307, 0, 0.169869736, 0)
UIDesigner.Size = UDim2.new(0.22660473, 0, 0.1930338, 0)
UIDesigner.Font = Enum.Font.DenkOne
UIDesigner.Text = "UI Designer : Nath."
UIDesigner.TextColor3 = Color3.fromRGB(255, 255, 255)
UIDesigner.TextScaled = true
UIDesigner.TextSize = 14.000
UIDesigner.TextWrapped = true
 
Scripter.Name = "Scripter"
Scripter.Parent = Credits
Scripter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scripter.BackgroundTransparency = 1.000
Scripter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scripter.BorderSizePixel = 0
Scripter.Position = UDim2.new(0.0147292586, 0, 0.401510298, 0)
Scripter.Size = UDim2.new(0.22660473, 0, 0.1930338, 0)
Scripter.Font = Enum.Font.DenkOne
Scripter.Text = "Scripter : Nath."
Scripter.TextColor3 = Color3.fromRGB(255, 255, 255)
Scripter.TextScaled = true
Scripter.TextSize = 14.000
Scripter.TextWrapped = true
 
CEO.Name = "CEO"
CEO.Parent = Credits
CEO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CEO.BackgroundTransparency = 1.000
CEO.BorderColor3 = Color3.fromRGB(0, 0, 0)
CEO.BorderSizePixel = 0
CEO.Position = UDim2.new(0.329014987, 0, 0.169869736, 0)
CEO.Size = UDim2.new(0.22660473, 0, 0.1930338, 0)
CEO.Font = Enum.Font.DenkOne
CEO.Text = "CEO : Nath."
CEO.TextColor3 = Color3.fromRGB(255, 255, 255)
CEO.TextScaled = true
CEO.TextSize = 14.000
CEO.TextWrapped = true
 
Compiler.Name = "Compiler"
Compiler.Parent = Credits
Compiler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Compiler.BackgroundTransparency = 1.000
Compiler.BorderColor3 = Color3.fromRGB(0, 0, 0)
Compiler.BorderSizePixel = 0
Compiler.Position = UDim2.new(0.329014987, 0, 0.432395697, 0)
Compiler.Size = UDim2.new(0.22660473, 0, 0.1930338, 0)
Compiler.Font = Enum.Font.DenkOne
Compiler.Text = "Compiler : Nath."
Compiler.TextColor3 = Color3.fromRGB(255, 255, 255)
Compiler.TextScaled = true
Compiler.TextSize = 14.000
Compiler.TextWrapped = true
 
Discord.Name = "Discord"
Discord.Parent = Credits
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Position = UDim2.new(0.725274742, 0, -0.637011528, 0)
Discord.Size = UDim2.new(0.264835179, 0, 0.258665293, 0)
Discord.Font = Enum.Font.SourceSans
Discord.Text = "Copy Discord Link"
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.TextScaled = true
Discord.TextSize = 14.000
Discord.TextWrapped = true
 
UICorner_13.CornerRadius = UDim.new(0, 20)
UICorner_13.Parent = Discord
 
Version.Name = "Version"
Version.Parent = MainFrame
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0.032537438, 0, 0.0270159077, 0)
Version.Size = UDim2.new(0.263050139, 0, 0.107331328, 0)
Version.Font = Enum.Font.DenkOne
Version.Text = "Version : BETA V2"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextScaled = true
Version.TextSize = 35.000
Version.TextWrapped = true
 
UITextSizeConstraint_6.Parent = Version
UITextSizeConstraint_6.MaxTextSize = 30
 
Settings_2.Name = "Settings"
Settings_2.Parent = MainFrame
Settings_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Settings_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.BorderSizePixel = 0
Settings_2.Position = UDim2.new(0.054247696, 0, 0.0810811073, 0)
Settings_2.Size = UDim2.new(0.891504586, 0, 0.837837756, 0)
Settings_2.Visible = false
 
UICorner_14.Parent = Settings_2
 
WSAdjuster.Name = "WSAdjuster"
WSAdjuster.Parent = Settings_2
WSAdjuster.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WSAdjuster.BorderColor3 = Color3.fromRGB(0, 0, 0)
WSAdjuster.BorderSizePixel = 0
WSAdjuster.Position = UDim2.new(0.0206659008, 0, 0.114143923, 0)
WSAdjuster.Size = UDim2.new(0.229621127, 0, 0.124069482, 0)
WSAdjuster.Font = Enum.Font.SourceSans
WSAdjuster.Text = ""
WSAdjuster.TextColor3 = Color3.fromRGB(0, 0, 0)
WSAdjuster.TextScaled = true
WSAdjuster.TextSize = 14.000
WSAdjuster.TextWrapped = true
 
JPAdjuster.Name = "JPAdjuster"
JPAdjuster.Parent = Settings_2
JPAdjuster.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JPAdjuster.BorderColor3 = Color3.fromRGB(0, 0, 0)
JPAdjuster.BorderSizePixel = 0
JPAdjuster.Position = UDim2.new(0.324913889, 0, 0.114143923, 0)
JPAdjuster.Size = UDim2.new(0.229621127, 0, 0.124069482, 0)
JPAdjuster.Font = Enum.Font.SourceSans
JPAdjuster.Text = ""
JPAdjuster.TextColor3 = Color3.fromRGB(0, 0, 0)
JPAdjuster.TextScaled = true
JPAdjuster.TextSize = 14.000
JPAdjuster.TextWrapped = true
 
SetWS.Name = "SetWS"
SetWS.Parent = Settings_2
SetWS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetWS.BorderColor3 = Color3.fromRGB(0, 0, 0)
SetWS.BorderSizePixel = 0
SetWS.Position = UDim2.new(0.0390355922, 0, 0.295285374, 0)
SetWS.Size = UDim2.new(0.191733643, 0, 0.0967741907, 0)
SetWS.Font = Enum.Font.SourceSans
SetWS.Text = "Set"
SetWS.TextColor3 = Color3.fromRGB(0, 0, 0)
SetWS.TextScaled = true
SetWS.TextSize = 14.000
SetWS.TextWrapped = true
SetWS.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WSAdjuster.Text
end)
 
UICorner_15.Parent = SetWS
 
SetJP.Name = "SetJP"
SetJP.Parent = Settings_2
SetJP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetJP.BorderColor3 = Color3.fromRGB(0, 0, 0)
SetJP.BorderSizePixel = 0
SetJP.Position = UDim2.new(0.343283594, 0, 0.295285374, 0)
SetJP.Size = UDim2.new(0.191733643, 0, 0.0967741907, 0)
SetJP.Font = Enum.Font.SourceSans
SetJP.Text = "Set"
SetJP.TextColor3 = Color3.fromRGB(0, 0, 0)
SetJP.TextScaled = true
SetJP.TextSize = 14.000
SetJP.TextWrapped = true
SetJP.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JPAdjuster.Text
end)
 
UICorner_16.Parent = SetJP
 
JPName.Name = "JPName"
JPName.Parent = Settings_2
JPName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JPName.BackgroundTransparency = 1.000
JPName.BorderColor3 = Color3.fromRGB(0, 0, 0)
JPName.BorderSizePixel = 0
JPName.Position = UDim2.new(0.0206659008, 0, 0, 0)
JPName.Size = UDim2.new(0.229621127, 0, 0.124069482, 0)
JPName.Font = Enum.Font.DenkOne
JPName.Text = "Change WalkSpeed"
JPName.TextColor3 = Color3.fromRGB(255, 255, 255)
JPName.TextScaled = true
JPName.TextSize = 14.000
JPName.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
JPName.TextWrapped = true
 
WSName.Name = "WSName"
WSName.Parent = Settings_2
WSName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WSName.BackgroundTransparency = 2.000
WSName.BorderColor3 = Color3.fromRGB(0, 0, 0)
WSName.BorderSizePixel = 0
WSName.Position = UDim2.new(0.323765785, 0, 0.00496277912, 0)
WSName.Size = UDim2.new(0.230769232, 0, 0.109181143, 0)
WSName.Font = Enum.Font.DenkOne
WSName.Text = "Change JumpPower"
WSName.TextColor3 = Color3.fromRGB(255, 255, 255)
WSName.TextScaled = true
WSName.TextSize = 14.000
WSName.TextWrapped = true
 
ScriptSearch.Name = "ScriptSearch"
ScriptSearch.Parent = FloodedUI
ScriptSearch.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
ScriptSearch.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptSearch.BorderSizePixel = 0
ScriptSearch.Position = UDim2.new(0.182780519, 0, 0.283950627, 0)
ScriptSearch.Size = UDim2.new(0.620324612, 0, 0.53209877, 0)
ScriptSearch.Visible = false
 
InfYield.Name = "Inf Yield"
InfYield.Parent = ScriptSearch
InfYield.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfYield.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfYield.BorderSizePixel = 0
InfYield.Position = UDim2.new(0.0284071527, 0, 0.763341069, 0)
InfYield.Size = UDim2.new(0.0875652805, 0, 0.183294669, 0)
InfYield.Image = "rbxassetid://14261033095"
 
ExecuteINF.Name = "ExecuteINF"
ExecuteINF.Parent = InfYield
ExecuteINF.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
ExecuteINF.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteINF.BorderSizePixel = 0
ExecuteINF.Position = UDim2.new(1.20000005, 0, 0.25, 0)
ExecuteINF.Size = UDim2.new(2, 0, 0.5, 0)
ExecuteINF.Font = Enum.Font.DenkOne
ExecuteINF.Text = "Execute"
ExecuteINF.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteINF.TextScaled = true
ExecuteINF.TextSize = 14.000
ExecuteINF.TextWrapped = true
ExecuteINF.MouseButton1Click:connect(function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 
UITextSizeConstraint_7.Parent = ExecuteINF
UITextSizeConstraint_7.MaxTextSize = 50
 
UICorner_18.CornerRadius = UDim.new(1, 0)
UICorner_18.Parent = InfYield
 
UICorner_19.CornerRadius = UDim.new(0, 10)
UICorner_19.Parent = ScriptSearch
 
ScriptSaver.Name = "ScriptSaver"
ScriptSaver.Parent = ScriptSearch
ScriptSaver.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
ScriptSaver.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptSaver.BorderSizePixel = 0
ScriptSaver.Position = UDim2.new(0.0284414105, 0, 0.0626450107, 0)
ScriptSaver.Size = UDim2.new(0.941979527, 0, 0.605568469, 0)
 
UICorner_20.Parent = ScriptSaver
 
AddScripts.Name = "Add Scripts"
AddScripts.Parent = ScriptSaver
AddScripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddScripts.BackgroundTransparency = 1.000
AddScripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
AddScripts.BorderSizePixel = 0
AddScripts.Position = UDim2.new(0.351037621, 0, 0.406130224, 0)
AddScripts.Size = UDim2.new(0.287439615, 0, 0.187739462, 0)
AddScripts.Visible = false
AddScripts.Font = Enum.Font.DenkOne
AddScripts.Text = "Add Scripts"
AddScripts.TextColor3 = Color3.fromRGB(255, 255, 255)
AddScripts.TextScaled = true
AddScripts.TextSize = 14.000
AddScripts.TextWrapped = true
 
ScripT.Name = "ScripT"
ScripT.Parent = ScriptSaver
ScripT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScripT.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScripT.BorderSizePixel = 0
ScripT.Position = UDim2.new(0.0444810167, 0, 0.0750284195, 0)
ScripT.Size = UDim2.new(0.913033545, 0, 0.845774889, 0)
ScripT.Visible = false
ScripT.Font = Enum.Font.SourceSans
ScripT.Text = ""
ScripT.TextColor3 = Color3.fromRGB(0, 0, 0)
ScripT.TextScaled = true
ScripT.TextSize = 25.000
ScripT.TextWrapped = true
 
UITextSizeConstraint_8.Parent = ScripT
UITextSizeConstraint_8.MaxTextSize = 25
 
SaveScript.Name = "SaveScript"
SaveScript.Parent = ScripT
SaveScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveScript.BorderSizePixel = 0
SaveScript.Position = UDim2.new(0.719230771, 0, 1.27822566, 0)
SaveScript.Size = UDim2.new(0.315384626, 0, 0.278225809, 0)
SaveScript.Font = Enum.Font.DenkOne
SaveScript.Text = "Save"
SaveScript.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveScript.TextScaled = true
SaveScript.TextSize = 14.000
SaveScript.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SaveScript.TextWrapped = true
 
UICorner_21.Parent = SaveScript
 
ClearScript.Name = "ClearScript"
ClearScript.Parent = ScripT
ClearScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClearScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearScript.BorderSizePixel = 0
ClearScript.Position = UDim2.new(0.335897446, 0, 1.27822566, 0)
ClearScript.Size = UDim2.new(0.315384626, 0, 0.278225809, 0)
ClearScript.Font = Enum.Font.DenkOne
ClearScript.Text = "Clear"
ClearScript.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearScript.TextScaled = true
ClearScript.TextSize = 14.000
ClearScript.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
ClearScript.TextWrapped = true
 
UICorner_22.Parent = ClearScript
 
CopyScript.Name = "CopyScript"
CopyScript.Parent = ScripT
CopyScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyScript.BorderSizePixel = 0
CopyScript.Position = UDim2.new(-0.0487179495, 0, 1.27822566, 0)
CopyScript.Size = UDim2.new(0.315384626, 0, 0.278225809, 0)
CopyScript.Font = Enum.Font.DenkOne
CopyScript.Text = "Copy"
CopyScript.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyScript.TextScaled = true
CopyScript.TextSize = 14.000
CopyScript.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
CopyScript.TextWrapped = true
 
UICorner_23.Parent = CopyScript
 
ScriptExecute.Name = "ScriptExecute"
ScriptExecute.Parent = ScriptSaver
ScriptExecute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptExecute.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptExecute.BorderSizePixel = 0
ScriptExecute.Position = UDim2.new(0.237785459, 0, 0.0536398478, 0)
ScriptExecute.Size = UDim2.new(0.186245784, 0, 0.157088116, 0)
ScriptExecute.Visible = false
ScriptExecute.Font = Enum.Font.SourceSans
ScriptExecute.Text = "Execute"
ScriptExecute.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptExecute.TextScaled = true
ScriptExecute.TextSize = 14.000
ScriptExecute.TextWrapped = true
 
UICorner_24.Parent = ScriptExecute
 
ScriptName.Name = "ScriptName"
ScriptName.Parent = ScriptSaver
ScriptName.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScriptName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.BorderSizePixel = 0
ScriptName.Position = UDim2.new(0.0128849279, 0, 0.0536398478, 0)
ScriptName.Size = UDim2.new(0.183903068, 0, 0.157088116, 0)
ScriptName.Visible = false
ScriptName.Font = Enum.Font.SourceSans
ScriptName.Text = ""
ScriptName.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.TextScaled = true
ScriptName.TextSize = 14.000
ScriptName.TextWrapped = true
 
QuickHacks.Name = "QuickHacks"
QuickHacks.Parent = ScriptSearch
QuickHacks.Active = true
QuickHacks.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
QuickHacks.BackgroundTransparency = 1.000
QuickHacks.BorderColor3 = Color3.fromRGB(0, 0, 0)
QuickHacks.BorderSizePixel = 0
QuickHacks.Position = UDim2.new(0.390966058, 0, 0.675173998, 0)
QuickHacks.Size = UDim2.new(0.207053468, 0, 0.0881670564, 0)
QuickHacks.Font = Enum.Font.DenkOne
QuickHacks.Text = "Quick Hacks"
QuickHacks.TextColor3 = Color3.fromRGB(255, 255, 255)
QuickHacks.TextScaled = true
QuickHacks.TextSize = 14.000
QuickHacks.TextWrapped = true
 
UITextSizeConstraint_9.Parent = QuickHacks
UITextSizeConstraint_9.MaxTextSize = 38
 
Dex.Name = "Dex"
Dex.Parent = ScriptSearch
Dex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dex.BorderSizePixel = 0
Dex.Position = UDim2.new(0.390320539, 0, 0.763341069, 0)
Dex.Size = UDim2.new(0.0875652805, 0, 0.183294669, 0)
Dex.Image = "rbxassetid://14287927604"
 
ExecuteDEX.Name = "ExecuteDEX"
ExecuteDEX.Parent = Dex
ExecuteDEX.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
ExecuteDEX.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteDEX.BorderSizePixel = 0
ExecuteDEX.Position = UDim2.new(1.20000005, 0, 0.25, 0)
ExecuteDEX.Size = UDim2.new(2, 0, 0.5, 0)
ExecuteDEX.Font = Enum.Font.DenkOne
ExecuteDEX.Text = "Execute"
ExecuteDEX.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteDEX.TextScaled = true
ExecuteDEX.TextSize = 14.000
ExecuteDEX.TextWrapped = true
 
UITextSizeConstraint_10.Parent = ExecuteDEX
UITextSizeConstraint_10.MaxTextSize = 50
 
UICorner_25.CornerRadius = UDim.new(1, 0)
UICorner_25.Parent = Dex
