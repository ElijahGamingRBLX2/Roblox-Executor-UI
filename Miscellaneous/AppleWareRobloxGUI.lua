-- Create ScreenGui for Executor
local executorGui = Instance.new("ScreenGui")
executorGui.Name = "ExecutorGUI"
executorGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
executorGui.Enabled = true  -- Executor GUI is now always visible

-- Create Frame for Executor
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Parent = executorGui

-- Create ScrollingFrame for TextBox
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -50, 0.8, -10)
scrollingFrame.Position = UDim2.new(0, 45, 0, 5)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 5
scrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Parent = frame

-- Create TextBox for Executor
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -10, 1, -10)
textBox.Position = UDim2.new(0, 5, 0, 5)
textBox.BackgroundTransparency = 1
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Text = ""
textBox.ClearTextOnFocus = false
textBox.MultiLine = true
textBox.TextXAlignment = Enum.TextXAlignment.Left
textBox.TextYAlignment = Enum.TextYAlignment.Top
textBox.TextWrapped = true  -- Ensure text wraps within the TextBox
textBox.Parent = scrollingFrame

-- Create Line Numbers
local lineNumbers = Instance.new("TextLabel")
lineNumbers.Size = UDim2.new(0, 40, 1, -10)
lineNumbers.Position = UDim2.new(0, 5, 0, 5)
lineNumbers.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
lineNumbers.TextColor3 = Color3.fromRGB(255, 255, 255)
lineNumbers.Text = "1"
lineNumbers.TextXAlignment = Enum.TextXAlignment.Right
lineNumbers.TextYAlignment = Enum.TextYAlignment.Top
lineNumbers.Font = Enum.Font.Code
lineNumbers.TextSize = 14
lineNumbers.Parent = frame

-- Adjust CanvasSize based on text content
local function updateCanvasSize()
    local textHeight = textBox.TextBounds.Y
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, textHeight + 10)
end

-- Update Line Numbers
local function updateLineNumbers()
    local lines = textBox.Text:split("\n")
    local numbers = ""
    for i = 1, #lines do
        numbers = numbers .. i .. "\n"
    end
    lineNumbers.Text = numbers
end

textBox:GetPropertyChangedSignal("Text"):Connect(function()
    updateCanvasSize()
    updateLineNumbers()
end)

updateCanvasSize()
updateLineNumbers()

-- Create Execute Button
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, -7.5, 0.15, -5)
executeButton.Position = UDim2.new(0, 5, 0.85, 0)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
executeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
executeButton.Text = "Execute"
executeButton.Parent = frame

-- Create Clear Button
local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, -7.5, 0.15, -5)
clearButton.Position = UDim2.new(0.5, 2.5, 0.85, 0)
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
    local scriptText = textBox.Text
    local func, err = loadstring(scriptText)
    if func then
        pcall(func)
    else
        warn("Error in script: " .. err)
    end
end)

clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)
