-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExecutorGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create ScrollingFrame for TextBox
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -10, 0.8, -10)
scrollingFrame.Position = UDim2.new(0, 5, 0, 5)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 5
scrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Parent = frame

-- Create TextBox
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -5, 1, -5)
textBox.Position = UDim2.new(0, 5, 0, 5)
textBox.BackgroundTransparency = 1
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Text = ""
textBox.ClearTextOnFocus = false
textBox.MultiLine = true
textBox.TextXAlignment = Enum.TextXAlignment.Left
textBox.TextYAlignment = Enum.TextYAlignment.Top
textBox.TextWrapped = false
textBox.Parent = scrollingFrame

-- Adjust CanvasSize based on text content
local function updateCanvasSize()
    local textHeight = textBox.TextBounds.Y
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, textHeight + 10)
end

textBox:GetPropertyChangedSignal("Text"):Connect(updateCanvasSize)
updateCanvasSize()

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

-- Create Line Numbers
local lineNumbers = Instance.new("TextLabel")
lineNumbers.Size = UDim2.new(0, 30, 1, -10)
lineNumbers.Position = UDim2.new(0, -35, 0, 5)
lineNumbers.BackgroundTransparency = 1
lineNumbers.TextColor3 = Color3.fromRGB(255, 255, 255)
lineNumbers.Text = ""
lineNumbers.TextXAlignment = Enum.TextXAlignment.Right
lineNumbers.TextYAlignment = Enum.TextYAlignment.Top
lineNumbers.Font = Enum.Font.Code
lineNumbers.TextSize = 14
lineNumbers.Parent = scrollingFrame

-- Update Line Numbers
local function updateLineNumbers()
    local lines = textBox.Text:split("\n")
    local numbers = ""
    for i = 1, #lines do
        numbers = numbers .. i .. "\n"
    end
    lineNumbers.Text = numbers
    lineNumbers.Size = UDim2.new(0, 30, 0, textBox.TextBounds.Y + 10)
end

textBox:GetPropertyChangedSignal("Text"):Connect(updateLineNumbers)
updateLineNumbers()

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
