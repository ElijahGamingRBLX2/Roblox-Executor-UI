-- Idk If Its The Same But Made With ChatGPT
-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExecutorGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create TextBox
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -10, 0.7, -10)
textBox.Position = UDim2.new(0, 5, 0, 5)
textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Text = ""
textBox.ClearTextOnFocus = false
textBox.Parent = frame

-- Create Execute Button
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, -7.5, 0.2, -5)
executeButton.Position = UDim2.new(0, 5, 0.75, 0)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
executeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
executeButton.Text = "Execute"
executeButton.Parent = frame

-- Create Clear Button
local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, -7.5, 0.2, -5)
clearButton.Position = UDim2.new(0.5, 2.5, 0.75, 0)
clearButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
clearButton.TextColor3 = Color3.fromRGB(0, 0, 0)
clearButton.Text = "Clear"
clearButton.Parent = frame

-- Dragging functionality
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- Button functionalities
executeButton.MouseButton1Click:Connect(function()
    -- Add your execute functionality here
    print("Executing: " .. textBox.Text)
end)

clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)
