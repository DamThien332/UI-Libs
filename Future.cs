do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("UiFuji")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local UiFuji = Instance.new("ScreenGui")
UiFuji.Name = "UiFuji"
UiFuji.Parent = game:GetService("CoreGui").RobloxGui.Modules
UiFuji.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local Create = {}
    function Create:window()
        local FocusUI = false ; 
        local Main = Instance.new("Frame")
        Main.Name = "Main"
        Main.Parent = UiFuji
        Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        Main.Position = UDim2.new(0.330043167, 0, 0.254589975, 0)
        Main.Size = UDim2.new(0, 550, 0, 400)
        Main.ClipsDescendants = true

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = Main

        local PageTab = Instance.new("Frame")
        PageTab.Name = "PageTab"
        PageTab.Parent = Main
        PageTab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        PageTab.BorderSizePixel = 0
        PageTab.Position = UDim2.new(-0.000865922426, 0, 0, 0)
        PageTab.Size = UDim2.new(0, 150, 0, 400)

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 8)
        UICorner.Parent = PageTab

        local Logo = Instance.new("ImageLabel")
        Logo.Name = "Logo"
        Logo.Parent = PageTab
        Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Logo.BackgroundTransparency = 1.000
        Logo.Position = UDim2.new(0.133333325, 0, -0.000689207751, 0)
        Logo.Size = UDim2.new(0, 110, 0, 110)
        Logo.Image = "http://www.roblox.com/asset/?id=17872490085"

        local PageFrame = Instance.new("Frame")
        PageFrame.Name = "PageFrame"
        PageFrame.Parent = PageTab
        PageFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        PageFrame.BorderSizePixel = 0
        PageFrame.Position = UDim2.new(0.866666675, 0, 0, 0)
        PageFrame.Size = UDim2.new(0, 20, 0, 398)

        local Scrolling_PageTab = Instance.new("ScrollingFrame")
        Scrolling_PageTab.Parent = PageTab
        Scrolling_PageTab.Active = true
        Scrolling_PageTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Scrolling_PageTab.BackgroundTransparency = 1.000
        Scrolling_PageTab.BorderSizePixel = 0
        Scrolling_PageTab.Position = UDim2.new(0, 0, 0.280701756, 0)
        Scrolling_PageTab.Size = UDim2.new(0, 150, 0, 287)
        Scrolling_PageTab.CanvasSize = UDim2.new(0, 0, 1, 50)
        Scrolling_PageTab.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        Scrolling_PageTab.ScrollBarThickness = 4
        Scrolling_PageTab.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = Scrolling_PageTab
        UIListLayout.FillDirection = Enum.FillDirection.Vertical
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)

        UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
            Scrolling_PageTab.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 5)
        end)

        local PageOrders = -1

		local Container_Page = Instance.new("Frame",Main)
		Container_Page.Name = ""
		Container_Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container_Page.Size = UDim2.new(0, 400, 0, 400)
		Container_Page.BackgroundTransparency = 1
		Container_Page.Position = UDim2.new(0.5, 0, 0.5, 0)
		Container_Page.AnchorPoint = Vector2.new(0.315, 0.5)

		local PageFolder = Instance.new("Folder")
		PageFolder.Parent = Container_Page

		local UIPage = Instance.new('UIPageLayout',PageFolder)
        UIPage.FillDirection = Enum.FillDirection.Vertical
		UIPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIPage.EasingDirection = Enum.EasingDirection.InOut
		UIPage.EasingStyle = Enum.EasingStyle.Quad
		UIPage.Padding = UDim.new(2, 0)
		UIPage.TweenTime = 0.350

        MakeDraggable(PageTab,Main)
        local tween = game:GetService("TweenService")
        local library = {currenttab = '',toggledui = false}
        tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 400)}):Play()
    
        game:GetService("UserInputService").InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.RightControl then 
                if library.toggledui == false then
                    library.toggledui = true  
                    tween:Create(Main,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 550, 0, 0)}):Play()
                    wait(0.5) Main.Visible = false
                else 
                    library.toggledui = false
                    Main.Visible = true
                    tween:Create(Main,TweenInfo.new(0.5,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 400)}):Play()
                end 
            end
        end)

local Tab = {}
    function Tab:CreateTab(text)
        PageOrders = PageOrders + 1
		local name = tostring(text) or tostring(math.random(1,5000))
        
        local TextButton_Tab = Instance.new("TextButton")
        TextButton_Tab.Name = text.."Server"
        TextButton_Tab.Parent = Scrolling_PageTab
        TextButton_Tab.BackgroundColor3 = Color3.fromRGB(10,10,10)
        TextButton_Tab.BackgroundTransparency = 1
        TextButton_Tab.BorderSizePixel = 0
        TextButton_Tab.Position = UDim2.new(0.5, 0, 0, 0)
        TextButton_Tab.Size = UDim2.new(0, 150, 0, 35)
        TextButton_Tab.Font = Enum.Font.GothamMedium
        TextButton_Tab.Text = ""
        TextButton_Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Tab.TextSize = 14.000
        TextButton_Tab.TextXAlignment = Enum.TextXAlignment.Left
        TextButton_Tab.ZIndex = 2

        local TextButton_Line = Instance.new("Frame")
        TextButton_Line.Parent = TextButton_Tab
        TextButton_Line.BackgroundColor3 = Color3.fromRGB(80, 222, 255)
        TextButton_Line.BackgroundTransparency = 1
        TextButton_Line.Size = UDim2.new(0, 2, 0, 35)

        local TextButton_Tab1 = Instance.new("TextButton")
        TextButton_Tab1.Parent = TextButton_Tab
        TextButton_Tab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Tab1.BackgroundTransparency = 1
        TextButton_Tab1.BorderSizePixel = 0
        TextButton_Tab1.AnchorPoint = Vector2.new(0.5,0.5)
        TextButton_Tab1.Position = UDim2.new(0.55, 0, 0.5, 0)
        TextButton_Tab1.Size = UDim2.new(0, 150, 0, 35)
        TextButton_Tab1.Font = Enum.Font.GothamMedium
        TextButton_Tab1.Text = tostring(text)
        TextButton_Tab1.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Tab1.TextSize = 14.000
        TextButton_Tab1.TextXAlignment = Enum.TextXAlignment.Left
        TextButton_Tab1.ZIndex = 2

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = Scrolling_PageTab
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)

        local UIPadding = Instance.new("UIPadding")
        UIPadding.Parent = Scrolling_PageTab

        local PageMain = Instance.new("Frame")
        PageMain.Name = name.."_PageMain"
        PageMain.Parent = PageFolder
        PageMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PageMain.BackgroundTransparency = 1.000
        PageMain.BorderSizePixel = 0
        PageMain.Position = UDim2.new(0.271861345, 0, 0, 0)
        PageMain.Size = UDim2.new(0, 400, 0, 400)
        PageMain.Visible = true
		PageMain.LayoutOrder = PageOrders

        local Scrolling_PageMain = Instance.new("ScrollingFrame")
        Scrolling_PageMain.Parent = PageMain
        Scrolling_PageMain.Active = true
        Scrolling_PageMain.AnchorPoint = Vector2.new(0.5, 0.5)
        Scrolling_PageMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Scrolling_PageMain.BackgroundTransparency = 1.000
        Scrolling_PageMain.BorderSizePixel = 0
        Scrolling_PageMain.Position = UDim2.new(0.513095379, 0, 0.5, 0)
        Scrolling_PageMain.Size = UDim2.new(0, 390, 0, 380)
        Scrolling_PageMain.CanvasSize = UDim2.new(0, 0, 0, 0)
        Scrolling_PageMain.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        Scrolling_PageMain.ScrollBarThickness = 4
        Scrolling_PageMain.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = Scrolling_PageMain
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)

        UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
            Scrolling_PageMain.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
        end)

        local UIPadding_2 = Instance.new("UIPadding")
        UIPadding_2.Parent = Scrolling_PageMain

		TextButton_Tab1.MouseButton1Click:connect(function()
			if PageMain.Name == text.."_PageMain" then
				UIPage:JumpToIndex(PageMain.LayoutOrder)
			end

			for i ,v in next , Scrolling_PageTab:GetChildren() do
				if v:IsA("TextButton") then
					for o,p in pairs(v:GetChildren()) do
                        for x,d in pairs(v:GetChildren()) do
						TweenService:Create(
							v,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundTransparency =  1}
						):Play()
						TweenService:Create(
							p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundTransparency =  1}
                        ):Play()
                        end
					end
				end
				TweenService:Create(
					TextButton_Tab,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency =  0}
				):Play()
                TweenService:Create(
                    TextButton_Line,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency =  0}
                ):Play()
			end
		end)
		if FocusUI == false then
			TweenService:Create(
				TextButton_Tab,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency =  0}
			):Play()
			TweenService:Create(
				TextButton_Line,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency =  0}
			):Play()

			PageMain.Visible = true
			TextButton_Tab.Name = text .. "Server"
			FocusUI  = true
		end

		TextButton_Tab.MouseEnter:Connect(function()
            TweenService:Create(
                TextButton_Tab1,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(80, 222, 255)}
            ):Play()
		end)
		TextButton_Tab.MouseLeave:Connect(function()
            TweenService:Create(
                TextButton_Tab1,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255,255,255)}
            ):Play()
		end)

local Page = {}
    function Page:CreatePage(text)
        local Page = Instance.new("Frame")
        Page.Name = "Page"
        Page.Parent = Scrolling_PageMain
        Page.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0, 0, 0.0215189867, 0)
        Page.Size = UDim2.new(0, 380, 0, 380)
        Page.ZIndex = true
        
        local TextLabel = Instance.new("TextLabel")
        TextLabel.Parent = Page
        TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextLabel.Size = UDim2.new(0, 359, 0, 35)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = tostring(text)
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = Page

		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.Parent = Page
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 10)

		local UIPaddingPage = Instance.new("UIPadding")
		UIPaddingPage.Parent = Page
		UIPaddingPage.PaddingLeft = UDim.new(0, 10)
		UIPaddingPage.PaddingTop = UDim.new(0, 0)

		TextLabel.MouseEnter:Connect(function()
            TweenService:Create(
                TextLabel,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(80, 222, 255)}
            ):Play()
		end)
		TextLabel.MouseLeave:Connect(function()
            TweenService:Create(
                TextLabel,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255,255,255)}
            ):Play()
		end)

		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			Page.Size =  UDim2.new(0, 380, 0,UIListLayout.AbsoluteContentSize.Y + 12)
		end);


local Items = {}
    function Items:Label(text)
        local Labelfuc = {}
        local Label_Main = Instance.new("TextLabel")
        Label_Main.Parent = Page
        Label_Main.BackgroundColor3 = Color3.fromRGB(10,10,10)
        Label_Main.BackgroundTransparency = 1
        Label_Main.BorderSizePixel = 0
        Label_Main.AnchorPoint = Vector2.new(0.5,0.5)
        Label_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
        Label_Main.Size = UDim2.new(0, 360, 0, 25)
        Label_Main.Font = Enum.Font.GothamMedium
        Label_Main.TextColor3 = Color3.fromRGB(255,255,255)
        Label_Main.Text = tostring(text)
        Label_Main.TextSize = 14.000
       
        local Line1 = Instance.new("Frame")
        Line1.Name = "Page"
        Line1.Parent = Label_Main
        Line1.BackgroundColor3 = Color3.fromRGB(80, 222, 255)
        Line1.BorderSizePixel = 0
        Line1.AnchorPoint = Vector2.new(0.5,0.5)
        Line1.Position = UDim2.new(0.825, 0, 0.5, 0)
        Line1.Size = UDim2.new(0, 110, 0, 2)

        local Line2 = Instance.new("Frame")
        Line2.Name = "Page"
        Line2.Parent = Label_Main
        Line2.BackgroundColor3 = Color3.fromRGB(80, 222, 255)
        Line2.BorderSizePixel = 0
        Line2.AnchorPoint = Vector2.new(0.5,0.5)
        Line2.Position = UDim2.new(0.175, 0, 0.5, 0)
        Line2.Size = UDim2.new(0, 110, 0, 2)

        function  Labelfuc:Change(text)
            Label_Main.Text = tostring(text)
        end
            return Labelfuc
        end

    function Items:Button(text,callback)
		local Button_Frame = Instance.new("Frame")
		Button_Frame.Parent = Page
		Button_Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
		Button_Frame.BackgroundTransparency = 1
		Button_Frame.BorderSizePixel = 0
		Button_Frame.AnchorPoint = Vector2.new(0.5,0.5)
		Button_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Button_Frame.Size = UDim2.new(0, 360, 0, 25)

		local Button_Main = Instance.new("TextButton")
		Button_Main.Parent = Button_Frame
		Button_Main.BackgroundColor3 = Color3.fromRGB(80, 222, 255)
		Button_Main.BackgroundTransparency = 0
		Button_Main.BorderSizePixel = 0
		Button_Main.AnchorPoint = Vector2.new(0.5,0.5)
		Button_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Button_Main.Size = UDim2.new(0, 320, 0, 25)
		Button_Main.Font = Enum.Font.GothamMedium
		Button_Main.TextColor3 = Color3.fromRGB(255,255,255)
		Button_Main.Text = tostring(text)
		Button_Main.TextSize = 14.000

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Name = ""
		UICorner.Parent = Button_Main

		Button_Main.MouseButton1Click:Connect(function()
			TweenService:Create(
				Button_Main,
				TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 300, 0, 25)}
			):Play() wait(0.1)
			TweenService:Create(
				Button_Main,
				TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In),
				{Size = UDim2.new(0, 320, 0, 25)}
			):Play()
			TweenService:Create(
				Button_Main,
				TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
				{TextSize = 10}
			):Play() wait(0.1)
			TweenService:Create(
				Button_Main,
				TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
				{TextSize = 14}
			):Play()
			callback()
		end)
		end

	function Items:Toggle(text,Stats,callback)
		local Toggle_Main = Instance.new("Frame")
		Toggle_Main.Parent = Page
		Toggle_Main.BackgroundColor3 = Color3.fromRGB(22,22,22)
		Toggle_Main.BorderSizePixel = 0
		Toggle_Main.AnchorPoint = Vector2.new(0.5,0.5)
		Toggle_Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Toggle_Main.Size = UDim2.new(0, 360, 0, 35)

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Name = ""
		UICorner.Parent = Toggle_Main

		local TextButton_Toggle = Instance.new("TextButton")
		TextButton_Toggle.Parent = Toggle_Main
		TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(80, 222, 255)
		TextButton_Toggle.BackgroundTransparency = 1
		TextButton_Toggle.BorderSizePixel = 0
		TextButton_Toggle.AnchorPoint = Vector2.new(0.5,0.5)
		TextButton_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
		TextButton_Toggle.Size = UDim2.new(0,340, 0, 35)
		TextButton_Toggle.Font = Enum.Font.GothamMedium
		TextButton_Toggle.TextColor3 = Color3.fromRGB(100,100,100)
		TextButton_Toggle.Text = tostring(text)
		TextButton_Toggle.TextSize = 14.000
		TextButton_Toggle.TextXAlignment = Enum.TextXAlignment.Left

		local Toggle1 = Instance.new("Frame")
		Toggle1.Parent = Toggle_Main
		Toggle1.BackgroundColor3 = Color3.fromRGB(15,15,15)
		Toggle1.AnchorPoint = Vector2.new(0.5,0.5)
		Toggle1.Position = UDim2.new(0.925, 0, 0.5, 0)
		Toggle1.Size = UDim2.new(0, 18, 0, 18)

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Name = ""
		UICorner.Parent = Toggle1

		local Togglevalue = false

		TextButton_Toggle.MouseButton1Down:Connect(function()
			if Togglevalue == false then ------- true
				TweenService:Create(
					TextButton_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255,255,255)}
				):Play()
				TweenService:Create(
					Toggle1,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(80, 222, 255)}
				):Play()
			elseif Togglevalue == true then
				TweenService:Create(
					TextButton_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(100,100,100)}
				):Play()
				TweenService:Create(
					Toggle1,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(15,15,15)}
				):Play()
			end
			Togglevalue = not Togglevalue
			pcall(callback,Togglevalue)
		end)

		if Stats == true then
			TweenService:Create(
				TextButton_Toggle,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{TextColor3 = Color3.fromRGB(255,255,255)}
			):Play()
			TweenService:Create(
				Toggle1,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = Color3.fromRGB(10,140,255)}
			):Play()
			Togglevalue = not Togglevalue
			pcall(callback,Togglevalue)
		end

		TextButton_Toggle.MouseEnter:Connect(function()
            if Togglevalue == false then
			TweenService:Create(
				Toggle1,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = Color3.fromRGB(80, 222, 255)}
			):Play()
            end
		end)
		TextButton_Toggle.MouseLeave:Connect(function()
            if Togglevalue == false then
                TweenService:Create(
                    Toggle1,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(10,10,10)}
                ):Play()
            end
		end)

		    return  Togglevalue
		end

    function Items:Dropdown(text,option,default,callback)
		local defaultt = default or ""
		local Drop_Frame = Instance.new("Frame")
		Drop_Frame.Name = "DropFrame"
		Drop_Frame.Parent = Page
		Drop_Frame.BackgroundColor3 = Color3.fromRGB(22,22,22)
		Drop_Frame.BackgroundTransparency = 0
		Drop_Frame.BorderSizePixel = 0
		Drop_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Drop_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Drop_Frame.Size = UDim2.new(0, 360, 0, 35)
		Drop_Frame.ClipsDescendants = true

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Name = ""
		UICorner.Parent = Drop_Frame

		local TextLabe_DropDown = Instance.new("TextLabel")
		TextLabe_DropDown.Name = "LabelFrameDrop"
		TextLabe_DropDown.Parent = Drop_Frame
		TextLabe_DropDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabe_DropDown.BackgroundTransparency = 1
		TextLabe_DropDown.Position = UDim2.new(0.035, 0, 0.025, 0)
		TextLabe_DropDown.Size = UDim2.new(0, 350, 0, 35)
		TextLabe_DropDown.Font = Enum.Font.GothamMedium
		TextLabe_DropDown.TextColor3 = Color3.fromRGB(100,100,100)
		TextLabe_DropDown.TextSize = 14
		TextLabe_DropDown.TextWrapped = true
		TextLabe_DropDown.TextXAlignment = Enum.TextXAlignment.Left
		TextLabe_DropDown.Text = tostring(text).." :"

		function getpro()
			if default then
				if table.find(option, default) then
					pcall(callback, default)
					return tostring(text).." : " .. default
				else
					return text
				end
			else
				return text
			end
		end
		TextLabe_DropDown.Text = getpro()
		local Icon = Instance.new("ImageLabel")
		Icon.Name = "Icon"
		Icon.Parent = TextLabe_DropDown
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.AnchorPoint = Vector2.new(0.5,0.5)
		Icon.Position = UDim2.new(0.925, 0, 0.5, 0)
		Icon.Rotation = 0
		Icon.Size = UDim2.new(0, 12, 0, 12)
		Icon.Image = "http://www.roblox.com/asset/?id=10815258127"
		Icon.ImageColor3 = Color3.fromRGB(100,100,100)
		local Scrolling_Drop = Instance.new("ScrollingFrame")
		Scrolling_Drop.Name = "Scrolling_Drop"
		Scrolling_Drop.Parent = TextLabe_DropDown
		Scrolling_Drop.Active = true
		Scrolling_Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Scrolling_Drop.BackgroundTransparency = 1
		Scrolling_Drop.BorderSizePixel = 0
		Scrolling_Drop.AnchorPoint = Vector2.new(0.5,0.5)
		Scrolling_Drop.Position = UDim2.new(0.5, 0, 2.7, 0)
		Scrolling_Drop.Size = UDim2.new(0, 360, 0, 120) --UDim2.new(0, 270, 0, 155)
		Scrolling_Drop.CanvasSize = UDim2.new(0, 0, 0, 2)
		Scrolling_Drop.ScrollBarThickness = 1
		Scrolling_Drop.ScrollBarImageTransparency = 1
		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.Name = "UIListLayout"
		UIListLayout.Parent = Scrolling_Drop
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 6)
		local UIPaddinglist = Instance.new("UIPadding")
		UIPaddinglist.Name = "UIPaddinglist"
		UIPaddinglist.Parent = Scrolling_Drop
		UIPaddinglist.PaddingTop = UDim.new(0, 5)
		local Button_Drop = Instance.new("TextButton")
		Button_Drop.Name = "ButtonDrop"
		Button_Drop.Parent = Drop_Frame
		Button_Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button_Drop.BackgroundTransparency = 1
		Button_Drop.ClipsDescendants = true
		Button_Drop.Size = UDim2.new(0, 360, 0, 35)
		Button_Drop.Font = Enum.Font.SourceSans
		Button_Drop.Text = ""
		Button_Drop.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button_Drop.TextSize = 14.000
		local dog = false
		local droptween = true
		local FrameSize = 160
		local cout = 0
		for i , v in pairs(option) do
			cout =cout + 1
			if cout == 1 then
				FrameSize = 160
			elseif cout == 2 then
				FrameSize = 160
			elseif cout >= 3 then
				FrameSize = 160
			end
			local Button_Frame = Instance.new("Frame")
			Button_Frame.Name = "ListFrame"
			Button_Frame.Parent = Scrolling_Drop
			Button_Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
			Button_Frame.BackgroundTransparency = 1
			Button_Frame.BorderSizePixel = 0
			Button_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
			Button_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
			Button_Frame.Size = UDim2.new(0, 360, 0, 30)

			local Dropdown_Button = Instance.new("TextButton")
			Dropdown_Button.Name = "Dropdwon_Button"
			Dropdown_Button.Parent = Button_Frame
			Dropdown_Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Dropdown_Button.BackgroundColor3 = Color3.fromRGB(15,15,15)
			Dropdown_Button.BackgroundTransparency = 0
			Dropdown_Button.BorderSizePixel = 0
			Dropdown_Button.Position = UDim2.new(0.475, 0, 0.5, 0)
			Dropdown_Button.Size = UDim2.new(0, 330, 0, 30)
			Dropdown_Button.Font = Enum.Font.GothamSemibold
			Dropdown_Button.TextColor3 = Color3.fromRGB(136, 136, 138)
			Dropdown_Button.TextSize = 14
			Dropdown_Button.TextXAlignment = Enum.TextXAlignment.Left
			Dropdown_Button.Text = ""

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Name = ""
			UICorner.Parent = Dropdown_Button

			local TextLabel_Button = Instance.new("TextLabel")
			TextLabel_Button.Name = "TextLabel_TapDro2p"
			TextLabel_Button.Parent = Dropdown_Button
			TextLabel_Button.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Button.BackgroundTransparency = 1
			TextLabel_Button.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextLabel_Button.Size = UDim2.new(0, 330, 0, 30)
			TextLabel_Button.Font = Enum.Font.GothamSemibold
			TextLabel_Button.TextColor3 = Color3.fromRGB(100,100,100)
			TextLabel_Button.TextSize = 14
			TextLabel_Button.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel_Button.Text = tostring(v)

			Dropdown_Button.MouseButton1Click:Connect(function()
				TweenService:Create(
					TextLabe_DropDown,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255,255,255)}
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(255,255,255)}
				):Play()
				TweenService:Create(
					Drop_Frame,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 360, 0, 35)}
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
				TextLabe_DropDown.Text =  text.." : "..tostring(v)
				callback(v)
				dog = not dog
				droptween = false
			end)
			Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20 )
		end
		Button_Drop.MouseButton1Click:Connect(function()
			if dog == false then
				TweenService:Create(
					Drop_Frame,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 360, 0, FrameSize)}
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = 90}
				):Play()
				Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20  )
			else
				TweenService:Create(
					Drop_Frame,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 360, 0, 35)}
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
				Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20  )
			end
			dog = not dog
		end)
		Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20  )
		local dropfunc = {}

		function dropfunc:Clear()
			TextLabe_DropDown.Text = tostring(text).." :"
			TweenService:Create(
				TextLabe_DropDown,
				TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
				{TextColor3 = Color3.fromRGB(100,100,100)}
			):Play()
			TweenService:Create(
				Icon,
				TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
				{ImageColor3 = Color3.fromRGB(100,100,100)}
			):Play()
			TweenService:Create(
				Drop_Frame,
				TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 360, 0, 35)}
			):Play()
			TweenService:Create(
				Icon,
				TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
				{Rotation = 0}
			):Play()
			dog = not dog
			droptween = true
			for i, v in next, Scrolling_Drop:GetChildren() do
				if v:IsA("Frame") then
					v:Destroy()
				end
			end
		end
		function dropfunc:Add(t)
			local Button_Frame = Instance.new("Frame")
			Button_Frame.Name = "ListFrame"
			Button_Frame.Parent = Scrolling_Drop
			Button_Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
			Button_Frame.BackgroundTransparency = 1
			Button_Frame.BorderSizePixel = 0
			Button_Frame.AnchorPoint = Vector2.new(0.5, 0.5)
			Button_Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
			Button_Frame.Size = UDim2.new(0, 360, 0, 30)

			local Dropdown_Button = Instance.new("TextButton")
			Dropdown_Button.Name = "Dropdwon_Button"
			Dropdown_Button.Parent = Button_Frame
			Dropdown_Button.AnchorPoint = Vector2.new(0.5, 0.5)
			Dropdown_Button.BackgroundColor3 = Color3.fromRGB(15,15,15)
			Dropdown_Button.BackgroundTransparency = 0
			Dropdown_Button.BorderSizePixel = 0
			Dropdown_Button.Position = UDim2.new(0.475, 0, 0.5, 0)
			Dropdown_Button.Size = UDim2.new(0, 330, 0, 30)
			Dropdown_Button.Font = Enum.Font.GothamSemibold
			Dropdown_Button.TextColor3 = Color3.fromRGB(136, 136, 138)
			Dropdown_Button.TextSize = 14
			Dropdown_Button.TextXAlignment = Enum.TextXAlignment.Left
			Dropdown_Button.Text = ""

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Name = ""
			UICorner.Parent = Dropdown_Button

			local TextLabel_Button = Instance.new("TextLabel")
			TextLabel_Button.Name = "TextLabel_TapDro2p"
			TextLabel_Button.Parent = Dropdown_Button
			TextLabel_Button.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Button.BackgroundTransparency = 1
			TextLabel_Button.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextLabel_Button.Size = UDim2.new(0, 330, 0, 30)
			TextLabel_Button.Font = Enum.Font.GothamSemibold
			TextLabel_Button.TextColor3 = Color3.fromRGB(100,100,100)
			TextLabel_Button.TextSize = 14
			TextLabel_Button.TextXAlignment = Enum.TextXAlignment.Center
			TextLabel_Button.Text = tostring(t)

			Dropdown_Button.MouseButton1Click:Connect(function()
				TweenService:Create(
					TextLabe_DropDown,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255,255,255)}
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(255,255,255)}
				):Play()
				TweenService:Create(
					Drop_Frame,
					TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 360, 0, 35)}
				):Play()
				TweenService:Create(
					Icon,
					TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
				TextLabe_DropDown.Text =  text.." : "..tostring(t)
				callback(t)
				dog = not dog
				droptween = false
			end)
			Scrolling_Drop.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
		end
		return dropfunc
		end

	function Items:Slider(text,floor,min,max,de,lol,callback)
		local sliderfunc = {}
		local SliderFrame = Instance.new("Frame")
		SliderFrame.Name = "SliderFrame"
		SliderFrame.Parent = Page
		SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		SliderFrame.BackgroundColor3 = Color3.fromRGB(22,22,22)
		SliderFrame.BackgroundTransparency = 0
		SliderFrame.ClipsDescendants = true
		SliderFrame.Position = UDim2.new(0.5, 0, 0.457317084, 0)
		SliderFrame.Size = UDim2.new(0, 360, 0, 45)

		local SliderFrame_UICorner = Instance.new("UICorner")
		SliderFrame_UICorner.Name = "SliderFrame_UICorner"
		SliderFrame_UICorner.Parent = SliderFrame
		SliderFrame_UICorner.CornerRadius = UDim.new(0, 5)

		local LabelNameSlider = Instance.new("TextLabel")
		LabelNameSlider.Name = "LabelNameSlider"
		LabelNameSlider.Parent = SliderFrame
		LabelNameSlider.AnchorPoint = Vector2.new(0.5, 0.5)
		LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LabelNameSlider.BackgroundTransparency = 1
		LabelNameSlider.BorderSizePixel = 0
		LabelNameSlider.Position = UDim2.new(0.5, 0, 0.35, 0)
		LabelNameSlider.Size = UDim2.new(0, 340, 0, 20)
		LabelNameSlider.Font = Enum.Font.GothamMedium
		LabelNameSlider.TextColor3 = Color3.fromRGB(100,100,100)
		LabelNameSlider.Text = tostring(text)
		LabelNameSlider.TextSize = 14
		LabelNameSlider.TextWrapped = true
		LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

		local ShowValueFrame = Instance.new("Frame")
		ShowValueFrame.Name = "ShowValueFrame"
		ShowValueFrame.Parent = SliderFrame
		ShowValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ShowValueFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
		ShowValueFrame.BorderSizePixel = 0
		ShowValueFrame.Position = UDim2.new(0.9, 0, 0.35, 0)
		ShowValueFrame.Size = UDim2.new(0, 50, 0, 18)

		local ShowValueFrameUICorner = Instance.new("UICorner")
		ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
		ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
		ShowValueFrameUICorner.Parent = ShowValueFrame

		local CustomValue = Instance.new("TextBox")
		CustomValue.Name = "CustomValue"
		CustomValue.Parent = ShowValueFrame
		CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
		CustomValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
		CustomValue.BackgroundTransparency = 1
		CustomValue.ClipsDescendants = true
		CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
		CustomValue.Size = UDim2.new(0, 50, 0, 18)
		CustomValue.Font = Enum.Font.GothamMedium
		CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
		CustomValue.Text = ""
		CustomValue.TextSize = 12
		CustomValue.TextColor3 = Color3.fromRGB(100,100,100)

		if floor == true then
			CustomValue.Text =  tostring(de and string.format((de / max) * (max - min) + min) or 0)
		else
			CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
		end

		local ValueFrame = Instance.new("Frame")
		ValueFrame.Name = "ValueFrame"
		ValueFrame.Parent = SliderFrame
		ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		ValueFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
		ValueFrame.BorderSizePixel = 0
		ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
		ValueFrame.Size = UDim2.new(0, 340, 0, 5)

		local Main_UiStroke = Instance.new("UIStroke")
		Main_UiStroke.Thickness = 1
		Main_UiStroke.Name = ""
		Main_UiStroke.Parent = ValueFrame
		Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
		Main_UiStroke.Color = Color3.fromRGB(15,15,15)
		Main_UiStroke.Transparency = 0

		local ValueFrameUICorner = Instance.new("UICorner")
		ValueFrameUICorner.CornerRadius = UDim.new(0, 10)
		ValueFrameUICorner.Name = "ShowValueFrameUICorner"
		ValueFrameUICorner.Parent = ValueFrame

		local PartValue = Instance.new("Frame")
		PartValue.Name = "PartValue"
		PartValue.Parent = ValueFrame
		PartValue.Active = true
		PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
		PartValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
		PartValue.BackgroundTransparency = 1.000
		PartValue.Position = UDim2.new(0.498982757, 0, 0.300000012, 0)
		PartValue.Size = UDim2.new(0, 340, 0, 5)

		local MainValue = Instance.new("Frame")
		MainValue.Name = "MainValue"
		MainValue.Parent = PartValue
		MainValue.BackgroundColor3 = Color3.fromRGB(80, 222, 255)
		MainValue.Position = UDim2.new(0.00101725257, 0, 0.200000003, 0)
		MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
		MainValue.BorderSizePixel = 0

		local MainValueUICorner = Instance.new("UICorner")
		MainValueUICorner.CornerRadius = UDim.new(0, 10)
		MainValueUICorner.Name = "a"
		MainValueUICorner.Parent = MainValue

		local ConneValue = Instance.new("Frame")
		ConneValue.Name = "ConneValue"
		ConneValue.Parent = PartValue
		ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
		ConneValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
		ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.6,0, 0)
		ConneValue.Size = UDim2.new(0, 0, 0, 0)
		ConneValue.BorderSizePixel = 0

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(0, 300)
		UICorner.Parent = ConneValue

		local function move(input)
			local pos =
				UDim2.new(
					math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
					0,
					0.6,
					0
				)
			local pos1 =
				UDim2.new(
					math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
					0,
					0,
					5
				)
			MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
			ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
			if floor == true then
				local value = string.format("%.0f",((pos.X.Scale * max) / max) * (max - min) + min)
				CustomValue.Text = tostring(value)
				callback(value)
			else
				local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
				CustomValue.Text = tostring(value)
				callback(value)
			end
		end
		local dragging = false
		ConneValue.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)
		ConneValue.InputEnded:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)
		SliderFrame.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)
		SliderFrame.InputEnded:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)
		ValueFrame.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)
		ValueFrame.InputEnded:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				move(input)
			end
		end)
		CustomValue.FocusLost:Connect(function()
			if CustomValue.Text == "" then
				CustomValue.Text  = de
			end
			if  tonumber(CustomValue.Text) > max then
				CustomValue.Text  = max
			end
			MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
			ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
			if floor == true then
				CustomValue.Text = tostring(CustomValue.Text and string.format("%.0f",(CustomValue.Text / max) * (max - min) + min) )
			else
				CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
			end
			pcall(callback, CustomValue.Text)
		end)

		function sliderfunc:Update(value)
			MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
			CustomValue.Text = value
			pcall(function()
				callback(value)
			end)
		end
            return sliderfunc
        end

    return Items
end
    return Page
end
    return Tab
end

function mobileGGEZ()
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    ImageButton.Size = UDim2.new(0, 50, 0, 50)
    ImageButton.Draggable = true
    ImageButton.BackgroundTransparency = 1
    ImageButton.Image = "http://www.roblox.com/asset/?id=17872490085"
    ImageButton.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)
end
mobileGGEZ()