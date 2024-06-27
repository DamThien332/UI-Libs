local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = "http://www.roblox.com/asset/?id=17664264110"
ImageButton1.MouseButton1Down:connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, 279, false, game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false, 279, false, game)
  end)
  
UICorner.Parent = ImageButton1

do local GUI = game.CoreGui:FindFirstChild("SOMEXHUB");if GUI then GUI:Destroy();end;if _G.Color == nil then
    _G.Color = Color3.fromRGB(203, 52, 0)
   end 
end
do
    local NamfonHub = workspace:FindFirstChild("DeeKub")
    if NamfonHub then
        NamfonHub:Destroy()
    end
end
