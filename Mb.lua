--//Example
local g = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):FindFirstChild("dsfwefwfwdfsfasdadaxczcw")
if g then
	g:Destroy()
end

local h = game:GetService("UserInputService")
local i = game:GetService("VirtualInputManager")
local j = game:GetService("TweenService")
local l = game:service"TweenService"
local m = game:GetService("RunService")
local n = game:GetService("Players").LocalPlayer
local o = n:GetMouse()
local p = game:GetService("GuiService")
local q = Instance.new("Sound")
q.Name = "Sound Effect"
q.SoundId = "rbxassetid://3398620867"
q.Volume = 1
q.Parent = game.Workspace

_G.Primary = Color3.fromRGB(43, 43, 43)
_G.Dark = Color3.fromRGB(20, 16, 16)

local t = Instance.new("ScreenGui")
local u = Instance.new("ImageButton")
t.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
t.Name = "dsfwefwfwdfsfasdadaxczcw"
u.Parent = t
u.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
u.Size = UDim2.new(0, 50, 0, 50)
u.Draggable = true
u.BackgroundColor3 = _G.Primary
u.BackgroundTransparency = .1
u.Image = "rbxassetid://17664264110"
u.ImageColor3 = Color3.fromRGB(255, 255, 255)
u.ImageTransparency = .1
u.Visible = true
u.Active = true
u.Selectable = true

local r = Instance.new("UIStroke")
r.Parent = u
r.Color = Color3.fromRGB(255, 255, 255)  -- Cor da borda
r.Thickness = 1 -- Espessura da borda

local s = Instance.new("UICorner")
s.Name = "MCNR"
s.Parent = u
s.CornerRadius = UDim.new(0, 5)

function LoadFunction()
	u.MouseEnter:Connect(function()
		j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
			Size = UDim2.new(0, 65, 0, 65)
		}):Play()
	end)
	u.MouseLeave:Connect(function()
		j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
			Size = UDim2.new(0, 50, 0, 50)
		}):Play()
	end)
	local w = false
	u.MouseButton1Down:Connect(function()
		if not w then
			w = false
			j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
				Rotation = 180
			}):Play()
			q:Play()
			j:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
				ImageTransparency = 0
			}):Play()
			wait(.5)
			j:Create(u, TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
				Rotation = 0
			}):Play()
			j:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
				ImageTransparency = 0
			}):Play()
			wait(.5)
		end
	end)
end

LoadFunction()

u.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F1, false, game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.F1, false, game)
end)

if game:GetService("CoreGui"):FindFirstChild("AlchemyHubUI") then
	game:GetService("CoreGui").AlchemyHubUI:Destroy()
	game:GetService("CoreGui").ScreenGui:Destroy()
end

_G.Color = Color3.fromRGB(0, 86, 255)
if _G.Mode == nil then
	_G.Mode = "English"
end;
if game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("VVV") then
	game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("VVV"):Destroy()
end;
local h = game:GetService("UserInputService")
local j = game:GetService("TweenService")
local function bg(bh, a0)
	local bi = nil;
	local bj = nil;
	local bk = nil;
	local bl = nil;
	local function bm(bn)
		local bo = bn.Position - bk;
		local bp = UDim2.new(bl.X.Scale, bl.X.Offset + bo.X, bl.Y.Scale, bl.Y.Offset + bo.Y)
		local bq = j:Create(a0, TweenInfo.new(0.15), {
			Position = bp
		})
		bq:Play()
	end;
	bh.InputBegan:Connect(function(bn)
		if bn.UserInputType == Enum.UserInputType.MouseButton1 or bn.UserInputType == Enum.UserInputType.Touch then
			bi = true;
			bk = bn.Position;
			bl = a0.Position;
			bn.Changed:Connect(function()
				if bn.UserInputState == Enum.UserInputState.End then
					bi = false
				end
			end)
		end
	end)
	bh.InputChanged:Connect(function(bn)
		if bn.UserInputType == Enum.UserInputType.MouseMovement or bn.UserInputType == Enum.UserInputType.Touch then
			bj = bn
		end
	end)
	h.InputChanged:Connect(function(bn)
		if bn == bj and bi then
			bm(bn)
		end
	end)
end;
local bm = {}
function bm:Window(d, br, bs)
	local s = Instance.new("UICorner")
	local bt = {}
	local bu = false;
	local bv = false;
	local bw = ""
	local bs = bs or Enum.KeyCode.F1;
	local bx = string.gsub(tostring(bs), "Enum.KeyCode.", "")
	local by = Instance.new("ScreenGui")
	by.Name = "VVV"
	by.Parent = game:GetService("CoreGui").RobloxGui.Modules;
	by.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local bz = Instance.new("Frame")
	bz.Name = "Main"
	bz.Parent = by;
	bz.ClipsDescendants = true;
	bz.AnchorPoint = Vector2.new(0.5, 0.5)
	bz.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	bz.BackgroundTransparency = 0.1599999964237213;
	bz.Position = UDim2.new(0.5, 0, 0.5, 0)
	bz.Size = UDim2.new(0, 0, 0, 0)
	s.Parent = bz;
	bz:TweenSize(UDim2.new(0, 550, 0, 350), "Out", "Quad", 0.4, true)
	local bA = Instance.new("UIStroke")
	bA.Name = "BtnStroke"
	bA.Parent = bz;
	bA.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	bA.Color = _G.Color;
	bA.LineJoinMode = Enum.LineJoinMode.Round;
	bA.Thickness = 1;
	bA.Transparency = 0;
	bA.Enabled = true;
	bA.Archivable = true;
	local bB = Instance.new("UICorner")
	bB.Name = "MCNR"
	bB.Parent = bz;
	bB.CornerRadius = UDim.new(0, 0)
	local bC = Instance.new("Frame")
	bC.Name = "Top"
	bC.Parent = bz;
	bC.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	bC.Size = UDim2.new(0, 556, 0, 30)
	bC.BackgroundTransparency = 1.000;
	local bD = Instance.new("UICorner")
	bD.Name = "TCNR"
	bD.Parent = bC;
	bD.CornerRadius = UDim.new(0, 5)
	local bE = Instance.new("ImageLabel")
	bE.Name = "Logo"
	bE.Parent = bz;
	bE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	bE.BackgroundTransparency = 1.000;
	bE.Position = UDim2.new(0, 5, 0, -115)
	bE.Size = UDim2.new(0, 80, 0, 80)
	bE.Image = "rbxassetid://14645512457"
	local bF = Instance.new("Frame")
	bF.Name = "Tab"
	bF.Parent = bz;
	bF.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	bF.Position = UDim2.new(0, 5, 0, 50)
	bF.Size = UDim2.new(0, 0, 0, 0)
	local bG = Instance.new("UIListLayout")
	bG.Name = "TabCorner"
	bG.Parent = bF;
	bG.SortOrder = Enum.SortOrder.LayoutOrder;
	bG.Padding = UDim.new(0, 15)
	local bA = Instance.new("UIStroke")
	local bH = Instance.new("ScrollingFrame")
	local bI = Instance.new("UICorner")
	bH.Name = "ScrollTab"
	bH.Parent = bF;
	bH.Active = true;
	bH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	bH.BackgroundTransparency = 1.000;
	bH.Size = UDim2.new(0, 133, 0, 300)
	bH.CanvasSize = UDim2.new(0, 0, 0, 0)
	bH.ScrollBarThickness = 0;
	local bJ = Instance.new("UIListLayout")
	bJ.Name = "PLL"
	bJ.Parent = bH;
	bJ.SortOrder = Enum.SortOrder.LayoutOrder;
	bJ.Padding = UDim.new(0, 15)
	local bK = Instance.new("UIPadding")
	bK.Name = "PPD"
	bK.Parent = bH;
	bK.PaddingLeft = UDim.new(0, 9)
	bK.PaddingTop = UDim.new(0, 2)
	local bA = Instance.new("UIStroke")
	local bL = Instance.new("Frame")
	local bM = Instance.new("TextLabel")
	local bN = Instance.new("Frame")
	bN.Name = "Page"
	bN.Parent = bz;
	bN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	bN.BackgroundTransparency = 1.000;
	bN.Position = UDim2.new(0.255426834, 0, 0.086000003, 0)
	bN.Size = UDim2.new(0, 410, 0, 308)
	local bO = Instance.new("UICorner")
	bO.Parent = bN;
	bO.CornerRadius = UDim.new(0, 3)
	local bP = Instance.new("Frame")
	bP.Name = "MainPage"
	bP.Parent = bN;
	bP.ClipsDescendants = true;
	bP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	bP.BackgroundTransparency = 1.000;
	bP.Size = UDim2.new(0, 410, 0, 308)
	local bQ = Instance.new("Folder")
	bQ.Name = "PageList"
	bQ.Parent = bP;
	local bR = Instance.new("UIPageLayout")
	bR.Parent = bQ;
	bR.SortOrder = Enum.SortOrder.LayoutOrder;
	bR.EasingDirection = Enum.EasingDirection.InOut;
	bR.EasingStyle = Enum.EasingStyle.Quad;
	bR.FillDirection = Enum.FillDirection.Vertical;
	bR.Padding = UDim.new(0, 10)
	bR.TweenTime = 0.400;
	bR.GamepadInputEnabled = false;
	bR.ScrollWheelInputEnabled = false;
	bR.TouchInputEnabled = false;
	bg(bC, bz)
	h.InputBegan:Connect(function(bn)
		if bn.KeyCode == Enum.KeyCode.F1 then
			if bu == false then
				bu = true;
				bz:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
				bz.Visible = false
			else
				bu = false;
				bz:TweenSize(UDim2.new(0, 550, 0, 350), "Out", "Quad", 0.5, true)
				bz.Visible = true
			end
		end
	end)
	bL.Parent = bz;
	bL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	bL.BackgroundTransparency = 1.000;
	bL.BorderColor3 = Color3.fromRGB(0, 0, 0)
	bL.BorderSizePixel = 0;
	bL.Position = UDim2.new(0.1, -150, 0.158805028, -80)
	bL.Size = UDim2.new(0, 327, 0, 100)
	bM.Parent = bL;
	bM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	bM.BackgroundTransparency = 1.000;
	bM.BorderColor3 = Color3.fromRGB(0, 0, 0)
	bM.BorderSizePixel = 0;
	bM.Position = UDim2.new(0.199847102, 0, 0.25, 0)
	bM.Size = UDim2.new(0, 200, 0, 50)
	bM.Font = Enum.Font.FredokaOne;
	bM.Text = "Mobile Version"
	bM.TextColor3 = Color3.fromRGB(0, 86, 255)
	bM.TextSize = 20.000;
	bM.TextWrapped = true;
	local bS = {}
	function bS:Tab(d, bT)
		local bA = Instance.new("UIStroke")
		local bU = Instance.new("UICorner")
		local bV = Instance.new("TextButton")
		local bW = Instance.new("TextLabel")
		local bX = Instance.new("UICorner")
		local bY = Instance.new("TextLabel")
		bV.Parent = bH;
		bV.Name = d .. "Server"
		bV.Text = ""
		bV.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		bV.BackgroundTransparency = 1.000;
		bV.Size = UDim2.new(0, 120, 0, 25)
		bV.Font = Enum.Font.GothamSemibold;
		bV.TextColor3 = Color3.fromRGB(255, 255, 255)
		bV.TextSize = 12.000;
		bV.TextTransparency = 0.5;
		bY.Parent = bV;
		bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
		bY.BackgroundTransparency = 1.000;
		bY.Position = UDim2.new(0, 25, 0, 0)
		bY.Size = UDim2.new(0, 100, 0, 25)
		bY.Font = Enum.Font.GothamSemibold;
		bY.Text = d;
		bY.TextColor3 = Color3.fromRGB(255, 255, 255)
		bY.TextSize = 15.000;
		bY.TextXAlignment = Enum.TextXAlignment.Left;
		local bZ = Instance.new("ImageLabel")
		bZ.Name = "LogoIDK"
		bZ.Parent = bV;
		bZ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		bZ.BackgroundTransparency = 1.000;
		bZ.Position = UDim2.new(0, 3, 0, 3)
		bZ.Size = UDim2.new(0, 20, 0, 20)
		bZ.Image = bT;
		bX.CornerRadius = UDim.new(0, 3)
		bX.Parent = bV;
		bA.Name = "BtnStroke"
		bA.Parent = bV;
		bA.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		bA.Color = _G.Color;
		bA.LineJoinMode = Enum.LineJoinMode.Round;
		bA.Thickness = 1;
		bA.Transparency = 0;
		bA.Enabled = true;
		bA.Archivable = true;
		local b_ = Instance.new("ScrollingFrame")
		b_.Name = d .. "_Page"
		b_.Parent = bQ;
		b_.Active = true;
		b_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		b_.BackgroundTransparency = 1.000;
		b_.BorderSizePixel = 0;
		b_.Size = UDim2.new(0, 400, 0, 308)
		b_.CanvasSize = UDim2.new(0, 0, 0, 0)
		b_.ScrollBarThickness = 0;
		local c0 = Instance.new("UIPadding")
		local c1 = Instance.new("UIListLayout")
		c0.Parent = b_;
		c0.PaddingLeft = UDim.new(0, 10)
		c0.PaddingTop = UDim.new(0, 5)
		c1.Padding = UDim.new(0, 12)
		c1.Parent = b_;
		c1.SortOrder = Enum.SortOrder.LayoutOrder;
		bV.MouseButton1Click:Connect(function()
			for y, z in next, bH:GetChildren() do
				if z:IsA("TextButton") then
					j:Create(z, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play()
				end;
				j:Create(bV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0
				}):Play()
			end;
			for y, z in next, bQ:GetChildren() do
				bw = string.gsub(bV.Name, "Server", "") .. "_Page"
				if z.Name == bw then
					bR:JumpTo(z)
				end
			end
		end)
		if bv == false then
			for y, z in next, bH:GetChildren() do
				if z:IsA("TextButton") then
					j:Create(z, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play()
				end;
				j:Create(bV, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0
				}):Play()
			end;
			bR:JumpToIndex(1)
			bv = true
		end;
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				b_.CanvasSize = UDim2.new(0, 0, 0, c1.AbsoluteContentSize.Y + 20)
				bH.CanvasSize = UDim2.new(0, 0, 0, bJ.AbsoluteContentSize.Y + 20)
			end)
		end)
		function bm:Notification(c2)
			local c3 = Instance.new("TextButton")
			local c4 = Instance.new("Frame")
			local c5 = Instance.new("TextButton")
			local c6 = Instance.new("UICorner")
			local c7 = Instance.new("TextLabel")
			local c8 = Instance.new("TextLabel")
			local c9 = Instance.new("TextLabel")
			local ca = Instance.new("UICorner")
			local cb = Instance.new("UIStroke")
			local cc = Instance.new("Frame")
			c3.Name = "NotificationHold"
			c3.Parent = bz;
			c3.BackgroundColor3 = Color3.new(125, 125, 125)
			c3.BackgroundTransparency = 1;
			c3.BorderSizePixel = 0;
			c3.Size = UDim2.new(0, 589, 0, 378)
			c3.AutoButtonColor = false;
			c3.Font = Enum.Font.SourceSans;
			c3.Text = ""
			c3.TextColor3 = Color3.new(125, 0, 125)
			c3.TextSize = 13.000;
			j:Create(c3, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 1
			}):Play()
			wait(0.4)
			c4.Name = "NotificationFrame"
			c4.Parent = c3;
			c4.AnchorPoint = Vector2.new(0.5, 0.5)
			c4.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			c4.BorderColor3 = Color3.new(125, 0, 125)
			c4.BorderSizePixel = 0;
			c4.Transparency = 0;
			c4.ClipsDescendants = true;
			c4.Position = UDim2.new(0, 295, 0, 190)
			c4.Size = UDim2.new(0, 0, 0, 0)
			c4:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
			ca.Name = "NotifCorner"
			ca.Parent = c4;
			ca.CornerRadius = UDim.new(0, 5)
			cb.Name = "NotifHolderUIStroke"
			cb.Parent = c4;
			cb.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			cb.Color = Color3.new(125, 0, 125)
			cb.LineJoinMode = Enum.LineJoinMode.Round;
			cb.Thickness = 2;
			cb.Transparency = 0;
			cb.Enabled = true;
			cb.Archivable = true;
			c5.Name = "OkayBtn"
			c5.Parent = c4;
			c5.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
			c5.BorderSizePixel = 2;
			c5.BorderColor3 = Color3.new(125, 0, 125)
			c5.Position = UDim2.new(0, 125, 0, 190)
			c5.Size = UDim2.new(0, 150, 0, 30)
			c5.AutoButtonColor = true;
			c5.Font = Enum.Font.SourceSans;
			c5.Text = ""
			c5.TextColor3 = Color3.new(125, 0, 125)
			c5.TextSize = 13.000;
			c6.CornerRadius = UDim.new(0, 5)
			c6.Name = "OkayBtnCorner"
			c6.Parent = c5;
			c7.Name = "OkayBtnTitle"
			c7.Parent = c5;
			c7.BackgroundColor3 = Color3.new(125, 0, 125)
			c7.BackgroundTransparency = 1.000;
			c7.Size = UDim2.new(0, 150, 0, 30)
			c7.Text = "OK"
			c7.Font = Enum.Font.GothamSemibold;
			c7.TextColor3 = Color3.fromRGB(0, 0, 0)
			c7.TextSize = 22.000;
			c8.Name = "NotificationTitle"
			c8.Parent = c4;
			c8.BackgroundColor3 = Color3.new(125, 0, 125)
			c8.BackgroundTransparency = 1.000;
			c8.Position = UDim2.new(0, 0, 0, 10)
			c8.Size = UDim2.new(0, 400, 0, 25)
			c8.ZIndex = 3;
			c8.Font = Enum.Font.GothamSemibold;
			c8.Text = "Notification"
			c8.TextColor3 = Color3.fromRGB(255, 0, 0)
			c8.TextSize = 22.000;
			cc.Name = "Line"
			cc.Parent = c4;
			cc.BackgroundColor3 = Color3.new(125, 0, 125)
			cc.BorderSizePixel = 0;
			cc.Position = UDim2.new(0, 10, 0, 40)
			cc.Size = UDim2.new(0, 380, 0, 1)
			c9.Name = "NotificationDesc"
			c9.Parent = c4;
			c9.BackgroundColor3 = _G.SectionColor;
			c9.BackgroundTransparency = 1.000;
			c9.Position = UDim2.new(0, 10, 0, 80)
			c9.Size = UDim2.new(0, 380, 0, 200)
			c9.Font = Enum.Font.GothamSemibold;
			c9.Text = c2;
			c9.TextScaled = false;
			c9.TextColor3 = Color3.new(125, 0, 125)
			c9.TextSize = 16.000;
			c9.TextWrapped = true;
			c9.TextXAlignment = Enum.TextXAlignment.Center;
			c9.TextYAlignment = Enum.TextYAlignment.Top;
			c5.MouseEnter:Connect(function()
				j:Create(c5, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				}):Play()
			end)
			c5.MouseLeave:Connect(function()
				j:Create(c5, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				}):Play()
			end)
			c5.MouseButton1Click:Connect(function()
				c4:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
				wait(0.4)
				j:Create(c3, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play()
				wait(.3)
				c3:Destroy()
			end)
		end;
		local cd = {}
		function cd:Button(d, ce)
			local cf = Instance.new("Frame")
			local s = Instance.new("UICorner")
			local cg = Instance.new("TextButton")
			local ch = Instance.new("UICorner")
			local ci = Instance.new("Frame")
			local cj = Instance.new("UICorner")
			cf.Name = "Button"
			cf.Parent = b_;
			cf.BackgroundColor3 = Color3.new(0, 0, 0)
			cf.Size = UDim2.new(0, 387, 0, 31)
			s.CornerRadius = UDim.new(0, 5)
			s.Parent = cf;
			cg.Name = "TextBtn"
			cg.Parent = cf;
			cg.BackgroundColor3 = _G.Color;
			cg.BackgroundTransparency = 0.30000001192092896;
			cg.Position = UDim2.new(0, 1, 0, 1)
			cg.Size = UDim2.new(0, 385, 0, 32)
			cg.AutoButtonColor = false;
			cg.Font = Enum.Font.GothamSemibold;
			cg.Text = d;
			cg.TextColor3 = Color3.fromRGB(0, 0, 0)
			cg.TextSize = 15.000;
			ch.CornerRadius = UDim.new(0, 5)
			ch.Parent = cg;
			ci.Name = "Black"
			ci.Parent = cf;
			ci.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ci.BackgroundTransparency = 1.000;
			ci.BorderSizePixel = 0;
			ci.Position = UDim2.new(0, 1, 0, 1)
			ci.Size = UDim2.new(0, 385, 0, 29)
			cj.CornerRadius = UDim.new(0, 5)
			cj.Parent = ci;
			cg.MouseEnter:Connect(function()
				j:Create(ci, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.7
				}):Play()
			end)
			cg.MouseLeave:Connect(function()
				j:Create(ci, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play()
			end)
			cg.MouseButton1Click:Connect(function()
				cg.TextSize = 0;
				j:Create(cg, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextSize = 15
				}):Play()
				ce()
			end)
		end;
		function cd:Toggle(d, ck, ce)
			ck = ck or false;
			local cl = ck;
			local s = Instance.new("UICorner")
			local r = Instance.new("UIStroke")
			local cf = Instance.new("TextButton")
			local ch = Instance.new("UICorner")
			local bY = Instance.new("TextLabel")
			local cm = Instance.new("Frame")
			local cj = Instance.new("UICorner")
			local cn = Instance.new("ImageLabel")
			local co = Instance.new("UICorner")
			local cp = Instance.new("ImageLabel")
			cf.Name = "Button"
			cf.Parent = b_;
			cf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			cf.Position = UDim2.new(0, 1, 0, 1)
			cf.Size = UDim2.new(0, 387, 0, 31)
			cf.Transparency = 1;
			cf.AutoButtonColor = false;
			cf.Font = Enum.Font.SourceSans;
			cf.Text = ""
			cf.TextColor3 = Color3.fromRGB(0, 0, 0)
			cf.TextSize = 11.000;
			r.Name = "UIStroke"
			r.Parent = cf;
			r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			r.Color = _G.Color;
			r.LineJoinMode = Enum.LineJoinMode.Round;
			r.Thickness = 1;
			r.Transparency = 0;
			r.Enabled = true;
			r.Archivable = true;
			ch.CornerRadius = UDim.new(0, 3)
			ch.Parent = cf;
			cp.Name = "Icon"
			cp.Parent = cf;
			cp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			cp.BackgroundTransparency = 1.000;
			cp.Position = UDim2.new(0, 5, 0, 1)
			cp.Size = UDim2.new(0, 30, 0, 30)
			cp.Image = "rbxassetid://"
			bY.Parent = cf;
			bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
			bY.BackgroundTransparency = 1.000;
			bY.Position = UDim2.new(0, 45, 0, 1)
			bY.Size = UDim2.new(0, 280, 0, 30)
			bY.Font = Enum.Font.GothamSemibold;
			bY.Text = "" .. d;
			bY.TextColor3 = Color3.fromRGB(255, 255, 255)
			bY.TextSize = 15;
			bY.TextXAlignment = Enum.TextXAlignment.Left;
			cm.Name = "ToggleImage"
			cm.Parent = cf;
			cm.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			cm.BackgroundTransparency = 0.8999999761581421;
			cm.Position = UDim2.new(0, 10, 0, 6)
			cm.Size = UDim2.new(0, 25, 0, 20)
			cj.CornerRadius = UDim.new(0, 10)
			cj.Parent = cm;
			cn.Name = "Circle"
			cn.Parent = cm;
			cn.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			cn.Position = UDim2.new(0, 0, 0, 0)
			cn.Size = UDim2.new(0, 0, 0, 0)
			cn.Image = "http://www.roblox.com/asset/?id=00"
			co.CornerRadius = UDim.new(0, 10)
			co.Parent = cn;
			cf.MouseButton1Click:Connect(function()
				local cq = Instance.new("Sound")
				cq.Name = "SoundEffect"
				cq.SoundId = "rbxassetid://130785805"
				cq.Volume = 1;
				cq.Parent = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
				cq:Play()
				if cl == false then
					cl = true;
					pcall(ce, true)
					cn.BackgroundColor3 = _G.Color;
					cn.Image = "http://www.roblox.com/asset/?id=6023426926"
					cj.CornerRadius = UDim.new(0, 100)
					cn:TweenSize(UDim2.new(0, 25, 0, 20), "In", "Back", 0.1, true)
				else
					cl = false;
					pcall(ce, false)
					cn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					cn:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Back", 0.1, true)
					cn.Image = "http://www.roblox.com/asset/?id=00"
				end;
				cq:Destroy()
			end)
			if ck == true then
				cl = true;
				cn.BackgroundColor3 = _G.Color;
				cn.Image = "http://www.roblox.com/asset/?id=6023426926"
				cj.CornerRadius = UDim.new(0, 100)
				cn:TweenSize(UDim2.new(0, 25, 0, 20), "In", "Back", 0.1, true)
				pcall(ce, cl)
			end
		end;
		function cd:Dropdown(d, cr, ce)
			local cs = false;
			local ct = Instance.new("Frame")
			local s = Instance.new("UICorner")
			local cu = Instance.new("TextLabel")
			local cv = Instance.new("ScrollingFrame")
			local c1 = Instance.new("UIListLayout")
			local c0 = Instance.new("UIPadding")
			local cw = Instance.new("TextButton")
			local cx = Instance.new("ImageLabel")
			local r = Instance.new("UIStroke")
			ct.Name = "Dropdown"
			ct.Parent = b_;
			ct.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ct.Transparency = 1;
			ct.ClipsDescendants = true;
			ct.Size = UDim2.new(0, 387, 0, 31)
			r.Name = "UIStroke"
			r.Parent = ct;
			r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			r.Color = _G.Color;
			r.LineJoinMode = Enum.LineJoinMode.Round;
			r.Thickness = 1;
			r.Transparency = 0;
			r.Enabled = true;
			r.Archivable = true;
			s.CornerRadius = UDim.new(0, 3)
			s.Parent = ct;
			cu.Name = "DropTitle"
			cu.Parent = ct;
			cu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			cu.BackgroundTransparency = 1.000;
			cu.Size = UDim2.new(0, 385, 0, 31)
			cu.Font = Enum.Font.GothamSemibold;
			cu.Text = d;
			cu.TextColor3 = Color3.fromRGB(255, 255, 255)
			cu.TextSize = 15.000;
			cv.Name = "DropScroll"
			cv.Parent = cu;
			cv.Active = true;
			cv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			cv.BackgroundTransparency = 1.000;
			cv.BorderSizePixel = 0;
			cv.Position = UDim2.new(0, 0, 0, 31)
			cv.Size = UDim2.new(0, 385, 0, 100)
			cv.CanvasSize = UDim2.new(0, 0, 0, 0)
			cv.ScrollBarThickness = 3;
			c1.Parent = cv;
			c1.SortOrder = Enum.SortOrder.LayoutOrder;
			c1.Padding = UDim.new(0, 5)
			c0.Parent = cv;
			c0.PaddingLeft = UDim.new(0, 5)
			c0.PaddingTop = UDim.new(0, 5)
			cw.Name = "DropButton"
			cw.Parent = ct;
			cw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			cw.BackgroundTransparency = 1.000;
			cw.Size = UDim2.new(0, 385, 0, 31)
			cw.Font = Enum.Font.SourceSans;
			cw.Text = ""
			cw.TextColor3 = Color3.fromRGB(0, 0, 0)
			cw.TextSize = 14.000;
			for y, z in next, cr do
				local cy = Instance.new("TextButton")
				cy.Name = "Item"
				cy.Parent = cv;
				cy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cy.BackgroundTransparency = 1.000;
				cy.Size = UDim2.new(0, 385, 0, 26)
				cy.Font = Enum.Font.GothamSemibold;
				cy.Text = tostring(z)
				cy.TextColor3 = Color3.fromRGB(255, 255, 255)
				cy.TextSize = 13.000;
				cy.TextTransparency = 0.500;
				cy.MouseEnter:Connect(function()
					j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play()
				end)
				cy.MouseLeave:Connect(function()
					j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play()
				end)
				cy.MouseButton1Click:Connect(function()
					cs = false;
					ct:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
					j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play()
					ce(cy.Text)
					cu.Text = d .. " : " .. cy.Text
				end)
			end;
			cv.CanvasSize = UDim2.new(0, 0, 0, c1.AbsoluteContentSize.Y + 10)
			cw.MouseButton1Click:Connect(function()
				if cs == false then
					cs = true;
					ct:TweenSize(UDim2.new(0, 385, 0, 131), "Out", "Quad", 0.3, true)
					j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play()
				else
					cs = false;
					ct:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
					j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play()
				end
			end)
			local cz = {}
			function cz:Add(cA)
				local cy = Instance.new("TextButton")
				cy.Name = "Item"
				cy.Parent = cv;
				cy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				cy.BackgroundTransparency = 1.000;
				cy.Size = UDim2.new(0, 385, 0, 26)
				cy.Font = Enum.Font.GothamSemibold;
				cy.Text = tostring(cA)
				cy.TextColor3 = Color3.fromRGB(255, 255, 255)
				cy.TextSize = 13.000;
				cy.TextTransparency = 0.500;
				cy.MouseEnter:Connect(function()
					j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play()
				end)
				cy.MouseLeave:Connect(function()
					j:Create(cy, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play()
				end)
				cy.MouseButton1Click:Connect(function()
					cs = false;
					ct:TweenSize(UDim2.new(0, 387, 0, 31), "Out", "Quad", 0.3, true)
					j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play()
					ce(cy.Text)
					cu.Text = d .. " : " .. cy.Text
				end)
			end;
			function cz:Clear()
				cu.Text = tostring(d) .. " : "
				cs = false;
				ct:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
				j:Create(cx, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Rotation = 180
				}):Play()
				for y, z in next, cv:GetChildren() do
					if z:IsA("TextButton") then
						z:Destroy()
					end
				end
			end;
			return cz
		end;
		function cd:Slider(d, cB, cC, cD, ce)
			local cE = {}
			local cF = Instance.new("Frame")
			local cG = Instance.new("Frame")
			local r = Instance.new("UIStroke")
			local s = Instance.new("UICorner")
			local cH = Instance.new("ImageLabel")
			local cI = Instance.new("TextLabel")
			local bY = Instance.new("TextLabel")
			local cJ = Instance.new("Frame")
			local cK = Instance.new("Frame")
			local cL = Instance.new("Frame")
			local cM = Instance.new("UICorner")
			local cN = Instance.new("UICorner")
			local cO = Instance.new("Frame")
			local cP = Instance.new("TextBox")
			local cQ = Instance.new("UIStroke")
			local cR = Instance.new("TextButton")
			local ch = Instance.new("UICorner")
			local cj = Instance.new("UICorner")
			cF.Name = slidertitle or "SliderFrame"
			cF.Parent = b_;
			cF.BackgroundColor3 = _G.Color;
			cF.BackgroundTransparency = 1.000;
			cF.BorderSizePixel = 0;
			cF.Size = UDim2.new(0, 387, 0, 60)
			cG.Name = "SliderFrame_2"
			cG.Parent = cF;
			cG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			cG.BackgroundTransparency = 1;
			cG.BorderSizePixel = 0;
			cG.Position = UDim2.new(0, 1, 0, 1)
			cG.Size = UDim2.new(0, 387, 0, 60)
			r.Name = "UIStroke"
			r.Parent = cG;
			r.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			r.Color = _G.Color;
			r.LineJoinMode = Enum.LineJoinMode.Round;
			r.Thickness = 1;
			r.Transparency = 0;
			r.Enabled = true;
			r.Archivable = true;
			s.Parent = cG;
			s.CornerRadius = UDim.new(0, 3)
			cH.Name = "ImageLabel"
			cH.Parent = cG;
			cH.BackgroundColor3 = _G.Color;
			cH.BackgroundTransparency = 1.000;
			cH.BorderSizePixel = 0;
			cH.Position = UDim2.new(0, 7.5, 0, 7.5)
			cH.Size = UDim2.new(0, 30, 0, 30)
			cH.Image = "rbxassetid://"
			bY.Parent = cG;
			bY.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
			bY.BackgroundTransparency = 1.000;
			bY.Position = UDim2.new(0, 45, 0, 5)
			bY.Size = UDim2.new(0, 280, 0, 30)
			bY.Font = Enum.Font.GothamSemibold;
			bY.Text = "|  " .. d;
			bY.TextColor3 = Color3.fromRGB(255, 255, 255)
			bY.TextSize = 15.000;
			bY.TextXAlignment = Enum.TextXAlignment.Left;
			cJ.Name = "SliderInput"
			cJ.Parent = cG;
			cJ.BackgroundColor3 = _G.Color;
			cJ.BackgroundTransparency = 0.7;
			cJ.BorderSizePixel = 0;
			cJ.Position = UDim2.new(0, 8, 0, 42)
			cJ.Size = UDim2.new(0, 365, 0, 6)
			cN.CornerRadius = UDim.new(0, 100000)
			cN.Parent = cJ;
			cK.Name = "SliderButton"
			cK.Parent = cJ;
			cK.BackgroundColor3 = _G.Color;
			cK.BackgroundTransparency = 1.000;
			cK.BorderSizePixel = 0;
			cK.Position = UDim2.new(0, 0, 0, -7)
			cK.Size = UDim2.new(0, 346, 0, 25)
			cL.Name = "SliderCount"
			cL.Parent = cK;
			cL.BackgroundColor3 = _G.Color;
			cL.BackgroundTransparency = 0.3;
			cL.BorderSizePixel = 0;
			cL.Position = UDim2.new(0, cD, 0, 0)
			cL.Size = UDim2.new(0, 18, 0, 18)
			cR.Name = "Title_2"
			cR.Parent = cK;
			cR.AnchorPoint = Vector2.new(0, 0)
			cR.BackgroundColor3 = _G.Color;
			cR.AutoButtonColor = false;
			cR.BackgroundTransparency = 1.000;
			cR.Position = UDim2.new(0, cD, 0, 0)
			cR.Size = UDim2.new(0, 18, 0, 18)
			cR.Font = Enum.Font.GothamBold;
			cR.Text = tostring(cD and math.floor(cD / cC * (cC - cB) + cB) or 0)
			cR.TextColor3 = Color3.fromRGB(255, 255, 255)
			cR.TextSize = 8.000;
			cR.TextXAlignment = Enum.TextXAlignment.Center;
			ch.Parent = cR;
			ch.CornerRadius = UDim.new(0, 100000)
			cM.CornerRadius = UDim.new(0, 100000)
			cM.Parent = cL;
			cQ.Name = "SliderStroke"
			cQ.Parent = cO;
			cQ.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			cQ.Color = _G.Color;
			cQ.LineJoinMode = Enum.LineJoinMode.Round;
			cQ.Thickness = 1;
			cQ.Transparency = 0.5;
			cQ.Enabled = true;
			cQ.Archivable = true;
			cO.Name = "BoxFrame"
			cO.Parent = cG;
			cO.BackgroundColor3 = _G.Color;
			cO.BackgroundTransparency = 1.000;
			cO.Size = UDim2.new(0, 50, 0, 15)
			cO.Position = UDim2.new(0, 323, 0, 8)
			cP.Name = "SliderBox"
			cP.Parent = cO;
			cP.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
			cP.BackgroundTransparency = 1.000;
			cP.Position = UDim2.new(0, 0, 0, 1.65)
			cP.Size = UDim2.new(0, 50, 0, 15)
			cP.ClearTextOnFocus = false;
			cP.Font = Enum.Font.Code;
			cP.Text = tostring(cD and math.floor(cD / cC * (cC - cB) + cB) or 0)
			cP.TextColor3 = Color3.fromRGB(200, 200, 200)
			cP.TextSize = 10.000;
			cP.TextTransparency = 0;
			cP.TextXAlignment = Enum.TextXAlignment.Center;
			cP.TextEditable = true;
			cj.Parent = cO;
			cj.CornerRadius = UDim.new(0, 2)
			local cS;
			local cT;
			local cU;
			local cV = cK;
			local function cV(bn)
				local slidein = UDim2.new(math.clamp((bn.Position.X - cK.AbsolutePosition.X) / cK.AbsoluteSize.X, 0, 1), 0, 0, 0)
				cL:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
				cR:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
				local Value = math.floor(slidein.X.Scale * cC / cC * (cC - cB) + cB)
				cP.Text = tostring(Value)
				cR.Text = tostring(Value)
				pcall(ce, Value, slidein)
			end;
			cK.InputBegan:Connect(function(bn)
				if bn.UserInputType == Enum.UserInputType.MouseButton1 or bn.UserInputType == Enum.UserInputType.Touch then
					cS = true;
					cU = bn;
					cT = bn.Position.X;
					slidein = cK.AbsolutePosition.X;
					game.TweenService:Create(cL, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0,
						Size = UDim2.new(0, 14, 0, 14)
					}):Play()
					game.TweenService:Create(cR, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						AnchorPoint = Vector2.new(0.22, 0.8),
						TextSize = 13.000,
						BackgroundTransparency = 0,
						Size = UDim2.new(0, 25, 0, 25)
					}):Play()
					game.TweenService:Create(cP, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						TextTransparency = 0
					}):Play()
					game.TweenService:Create(cJ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.5
					}):Play()
					game.TweenService:Create(cQ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						Transparency = 0
					}):Play()
				end;
				bn.Changed:Connect(function(bn)
					if bn.UserInputType == Enum.UserInputState.End then
						cS = false
					end
				end)
			end)
			cK.InputEnded:Connect(function(bn)
				if bn.UserInputType == Enum.UserInputType.MouseMovement or bn.UserInputType == Enum.UserInputType.Touch then
					cS = false;
					cU = bn;
					game.TweenService:Create(cL, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.3,
						Size = UDim2.new(0, 18, 0, 18)
					}):Play()
					game.TweenService:Create(cR, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						AnchorPoint = Vector2.new(0, 0),
						TextSize = 8.000,
						BackgroundTransparency = 1.000,
						Size = UDim2.new(0, 18, 0, 18)
					}):Play()
					game.TweenService:Create(cP, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						TextTransparency = 0.5
					}):Play()
					game.TweenService:Create(cJ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.7
					}):Play()
					game.TweenService:Create(cQ, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						Transparency = 0.5
					}):Play()
				end
			end)
			h.InputChanged:Connect(function(bn)
				if bn == cU and cS then
					cV(bn)
				end
			end)
			function set(cW)
				if cW == "Text" then
					if tonumber(cP.Text) then
						if tonumber(cP.Text) <= cC then
							Value = cP.Text;
							cR.Text = cP.Text;
							cL:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
							cR:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
							pcall(function()
								ce(Value)
							end)
						end;
						if tonumber(cP.Text) > cC then
							cP.Text = cC;
							cR.Text = cC;
							Value = cC;
							cL:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
							cR:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
							pcall(function()
								ce(Value)
							end)
						end;
						if tonumber(cP.Text) >= cB then
							Value = cP.Text;
							cR.Text = cP.Text;
							cL:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
							cR:TweenPosition(UDim2.new(((tonumber(cP.Text) or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
							pcall(function()
								ce(Value)
							end)
						end;
						if tonumber(cP.Text) < cB then
							Value = cB;
							cR = cB;
							cL.Position = UDim2.new(((cB or cB) - cB) / (cC - cB), 0, 0, 0)
							cR.Position = UDim2.new(((cB or cB) - cB) / (cC - cB), 0, 0, 0)
							pcall(function()
								ce(Value)
							end)
						end
					else
						cP.Text = "" or Value;
						cR.Text = Value
					end
				end
			end;
			cP.Focused:Connect(function()
				cP.Changed:Connect(set)
			end)
			cP.FocusLost:Connect(function(cX)
				if not cX then
					if cP.Text == "" then
						cP.Text = cB;
						cR.Text = cB;
						Value = cB;
						cL:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
						cR:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
						pcall(function()
							ce(Value)
						end)
					end;
					if tonumber(cP.Text) > tonumber(cC) then
						Value = cC;
						cP.Text = cC;
						cR.Text = cC;
						cL:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
						cR:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
						pcall(function()
							ce(Value)
						end)
					else
						Value = tonumber(cP.Text)
					end;
					if tonumber(cP.Text) < cB then
						cP.Text = cB;
						cR.Text = cB;
						Value = cB;
						cL:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
						cR:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
						pcall(function()
							ce(Value)
						end)
					else
						Value = tonumber(cP.Text)
					end
				end;
				if tonumber(cP.Text) > cC then
					cP.Text = cC;
					cR.Text = cC;
					Value = cC;
					cL:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
					cR:TweenPosition(UDim2.new(((cC or cB) - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
					pcall(function()
						ce(Value)
					end)
				else
					Value = tonumber(cP.Text)
				end;
				if tonumber(cP.Text) < cB then
					cP.Text = cB;
					cR.Text = cB;
					Value = cB;
					cL.Position = UDim2.new((cB - cB) / (cC - cB), 0, 0, 0)
					cR.Position = UDim2.new((cB - cB) / (cC - cB), 0, 0, 0)
					pcall(function()
						ce(Value)
					end)
				else
					Value = tonumber(cP.Text)
				end;
				if cP.Text == "" then
					cP.Text = cB;
					cR.Text = cB;
					Value = cB;
					cL:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.08, true)
					cR:TweenPosition(UDim2.new((cB - cB) / (cC - cB), 0, 0, 0), "InOut", "Linear", 0.12, true)
					pcall(function()
						ce(Value)
					end)
				end
			end)
			return cE
		end;
		function cd:Textbox(d, cY, ce)
			local cZ = Instance.new("Frame")
			local c_ = Instance.new("UICorner")
			local d0 = Instance.new("Frame")
			local d1 = Instance.new("UICorner")
			local d2 = Instance.new("TextLabel")
			local d3 = Instance.new("TextButton")
			local d4 = Instance.new("TextBox")
			local s = Instance.new("UICorner")
			cZ.Name = "Textbox"
			cZ.Parent = b_;
			cZ.BackgroundColor3 = _G.Color;
			cZ.BackgroundTransparency = 0;
			cZ.Size = UDim2.new(0, 387, 0, 31)
			c_.CornerRadius = UDim.new(0, 5)
			c_.Name = "TextboxCorner"
			c_.Parent = cZ;
			d0.Name = "Textboxx"
			d0.Parent = cZ;
			d0.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			d0.Position = UDim2.new(0, 1, 0, 1)
			d0.Size = UDim2.new(0, 385, 0, 29)
			d1.CornerRadius = UDim.new(0, 5)
			d1.Name = "TextboxxCorner"
			d1.Parent = d0;
			d2.Name = "TextboxLabel"
			d2.Parent = cZ;
			d2.BackgroundColor3 = _G.Color;
			d2.BackgroundTransparency = 1.000;
			d2.Position = UDim2.new(0, 15, 0, 0)
			d2.Text = d;
			d2.Size = UDim2.new(0, 145, 0, 31)
			d2.Font = Enum.Font.GothamSemibold;
			d2.TextColor3 = Color3.fromRGB(255, 255, 255)
			d2.TextSize = 16.000;
			d2.TextTransparency = 0;
			d2.TextXAlignment = Enum.TextXAlignment.Left;
			d3.Name = "txtbtn"
			d3.Parent = cZ;
			d3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			d3.BackgroundTransparency = 1.000;
			d3.Position = UDim2.new(0, 1, 0, 1)
			d3.Size = UDim2.new(0, 387, 0, 29)
			d3.Font = Enum.Font.SourceSans;
			d3.Text = ""
			d3.TextColor3 = Color3.fromRGB(0, 0, 0)
			d3.TextSize = 14.000;
			d4.Name = "RealTextbox"
			d4.Parent = cZ;
			d4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			d4.BackgroundTransparency = 0;
			d4.Position = UDim2.new(0, 275, 0, 4)
			d4.Size = UDim2.new(0, 100, 0, 24)
			d4.Font = Enum.Font.GothamSemibold;
			d4.Text = ""
			d4.TextColor3 = Color3.fromRGB(225, 225, 225)
			d4.TextSize = 11.000;
			d4.TextTransparency = 0;
			d4.FocusLost:Connect(function()
				ce(d4.Text)
				if cY then
					d4.Text = ""
				end
			end)
			s.CornerRadius = UDim.new(0, 5)
			s.Parent = d4
		end;
		function cd:Label(d)
			local d5 = Instance.new("TextLabel")
			local d6 = Instance.new("UIPadding")
			local d7 = {}
			d5.Name = "Label"
			d5.Parent = b_;
			d5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			d5.BackgroundTransparency = 1.000;
			d5.Size = UDim2.new(0, 410, 0, 20)
			d5.Font = Enum.Font.GothamSemibold;
			d5.TextColor3 = Color3.fromRGB(225, 225, 225)
			d5.TextSize = 16.000;
			d5.Text = d;
			d5.TextXAlignment = Enum.TextXAlignment.Left;
			d6.PaddingLeft = UDim.new(0, 15)
			d6.Parent = d5;
			d6.Name = "PaddingLabel"
			function d7:Set(d8)
				d5.Text = d8
			end;
			return d7
		end;
		function cd:Label1(d)
			local d9 = Instance.new("TextLabel")
			local da = Instance.new("UIPadding")
			local db = {}
			d9.Name = "Label1"
			d9.Parent = b_;
			d9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			d9.BackgroundTransparency = 1.000;
			d9.Size = UDim2.new(0, 410, 0, 20)
			d9.Font = Enum.Font.GothamSemibold;
			d9.TextColor3 = Color3.fromRGB(255, 255, 255)
			d9.TextSize = 15.000;
			d9.Text = d;
			d9.TextXAlignment = Enum.TextXAlignment.Left;
			da.PaddingLeft = UDim.new(0, 15)
			da.Parent = d9;
			da.Name = "PaddingLabel1"
			function db:Refresh(dc)
				d9.Text = dc
			end;
			return db
		end;
		function cd:Textbox(d, cY, ce)
			local cZ = Instance.new("Frame")
			local c_ = Instance.new("UICorner")
			local d0 = Instance.new("Frame")
			local d1 = Instance.new("UICorner")
			local d2 = Instance.new("TextLabel")
			local d3 = Instance.new("TextButton")
			local d4 = Instance.new("TextBox")
			local s = Instance.new("UICorner")
			cZ.Name = "Textbox"
			cZ.Parent = b_;
			cZ.BackgroundColor3 = _G.Color;
			cZ.BackgroundTransparency = 0;
			cZ.Size = UDim2.new(0, 387, 0, 31)
			c_.CornerRadius = UDim.new(0, 5)
			c_.Name = "TextboxCorner"
			c_.Parent = cZ;
			d0.Name = "Textboxx"
			d0.Parent = cZ;
			d0.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			d0.Position = UDim2.new(0, 1, 0, 1)
			d0.Size = UDim2.new(0, 385, 0, 29)
			d1.CornerRadius = UDim.new(0, 3)
			d1.Name = "TextboxxCorner"
			d1.Parent = d0;
			d2.Name = "TextboxLabel"
			d2.Parent = cZ;
			d2.BackgroundColor3 = _G.Color;
			d2.BackgroundTransparency = 1.000;
			d2.Position = UDim2.new(0, 15, 0, 0)
			d2.Text = d;
			d2.Size = UDim2.new(0, 145, 0, 31)
			d2.Font = Enum.Font.GothamSemibold;
			d2.TextColor3 = Color3.fromRGB(225, 225, 225)
			d2.TextSize = 16.000;
			d2.TextTransparency = 0;
			d2.TextXAlignment = Enum.TextXAlignment.Left;
			d3.Name = "txtbtn"
			d3.Parent = cZ;
			d3.BackgroundColor3 = _G.Color;
			d3.BackgroundTransparency = 1.000;
			d3.Position = UDim2.new(0, 1, 0, 1)
			d3.Size = UDim2.new(0, 387, 0, 29)
			d3.Font = Enum.Font.SourceSans;
			d3.Text = ""
			d3.TextColor3 = Color3.fromRGB(0, 0, 0)
			d3.TextSize = 14.000;
			d4.Name = "RealTextbox"
			d4.Parent = cZ;
			d4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			d4.BackgroundTransparency = 0;
			d4.Position = UDim2.new(0, 275, 0, 4)
			d4.Size = UDim2.new(0, 100, 0, 24)
			d4.Font = Enum.Font.GothamSemibold;
			d4.Text = ""
			d4.TextColor3 = Color3.fromRGB(225, 225, 225)
			d4.TextSize = 11.000;
			d4.TextTransparency = 0;
			d4.FocusLost:Connect(function()
				ce(d4.Text)
				if cY then
					d4.Text = ""
				end
			end)
			s.CornerRadius = UDim.new(0, 3)
			s.Parent = d4
		end;
		function cd:Label(d)
			local d5 = Instance.new("TextLabel")
			local d6 = Instance.new("UIPadding")
			local d7 = {}
			d5.Name = "Label"
			d5.Parent = b_;
			d5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			d5.BackgroundTransparency = 1.000;
			d5.Size = UDim2.new(0, 410, 0, 20)
			d5.Font = Enum.Font.GothamSemibold;
			d5.TextColor3 = Color3.fromRGB(225, 225, 225)
			d5.TextSize = 16.000;
			d5.Text = d;
			d5.TextXAlignment = Enum.TextXAlignment.Left;
			d6.PaddingLeft = UDim.new(0, 15)
			d6.Parent = d5;
			d6.Name = "PaddingLabel"
			function d7:Set(d8)
				d5.Text = d8
			end;
			return d7
		end;
		function cd:Label1(d)
			local d9 = Instance.new("TextLabel")
			local da = Instance.new("UIPadding")
			local db = {}
			d9.Name = "Label1"
			d9.Parent = b_;
			d9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			d9.BackgroundTransparency = 1.000;
			d9.Size = UDim2.new(0, 410, 0, 20)
			d9.Font = Enum.Font.GothamSemibold;
			d9.TextColor3 = Color3.fromRGB(255, 255, 255)
			d9.TextSize = 15.000;
			d9.Text = d;
			d9.RichText = true;
			d9.TextXAlignment = Enum.TextXAlignment.Left;
			da.PaddingLeft = UDim.new(0, 15)
			da.Parent = d9;
			da.Name = "PaddingLabel1"
			function db:Refresh(dc)
				d9.Text = dc
			end;
			return db
		end;
		function cd:Dis(d, dd)
			local d9 = Instance.new("TextLabel")
			local da = Instance.new("UIPadding")
			local db = {}
			d9.Name = "Label1"
			d9.Parent = b_;
			d9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			d9.BackgroundTransparency = 1.000;
			d9.Size = UDim2.new(0, 410, 0, 20)
			d9.Font = Enum.Font.GothamSemibold;
			d9.TextColor3 = Color3.fromRGB(255, 255, 255)
			d9.TextSize = 15.000;
			d9.Text = d;
			d9.TextXAlignment = Enum.TextXAlignment.Left;
			Labeld.Name = "Labeld"
			Labeld.Parent = b_;
			Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Labeld.BackgroundTransparency = 1.000;
			Labeld.Size = UDim2.new(0, 410, 0, 20)
			Labeld.Font = Enum.Font.GothamSemibold;
			Labeld.TextColor3 = _G.Color;
			Labeld.TextSize = 15.000;
			Labeld.Text = dd or ""
			Labeld.TextXAlignment = Enum.TextXAlignment.Left;
			da.PaddingLeft = UDim.new(0, 15)
			da.Parent = d9;
			da.Name = "PaddingLabel1"
			function db:Refresh(dc)
				d9.Text = dc
			end;
			return db
		end;
		function cd:Seperator(d)
			task.wait(0.1)
			local de = Instance.new("Frame")
			local df = Instance.new("Frame")
			local dg = Instance.new("TextLabel")
			local dh = Instance.new("Frame")
			de.Name = "Seperator"
			de.Parent = b_;
			de.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			de.BackgroundTransparency = 1.000;
			de.Size = UDim2.new(0, 310, 0, 20)
			df.Name = "Sep1"
			df.Parent = de;
			df.BackgroundColor3 = Color3.new(125, 125, 125)
			df.BorderSizePixel = 0;
			df.Position = UDim2.new(0, 0, 0, 10)
			df.Size = UDim2.new(0, 80, 0, 1)
			dg.Name = "Sep2"
			dg.Parent = de;
			dg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			dg.BackgroundTransparency = 1.000;
			dg.Position = UDim2.new(0, 140, 0, 0)
			dg.Size = UDim2.new(0, 100, 0, 20)
			dg.Font = Enum.Font.GothamSemibold;
			dg.Text = d;
			dg.TextColor3 = Color3.fromRGB(255, 255, 255)
			dg.TextSize = 14.000;
			dh.Name = "Sep3"
			dh.Parent = de;
			dh.BackgroundColor3 = Color3.new(125, 125, 125)
			dh.BorderSizePixel = 0;
			dh.Position = UDim2.new(0, 300, 0, 10)
			dh.Size = UDim2.new(0, 80, 0, 1)
		end;
		function cd:Line()
			local di = Instance.new("Frame")
			local cc = Instance.new("Frame")
			di.Name = "Linee"
			di.Parent = b_;
			di.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			di.BackgroundTransparency = 1.000;
			di.Position = UDim2.new(0, 0, 0.119999997, 0)
			di.Size = UDim2.new(0, 10, 0, 10)
			cc.Name = "Line"
			cc.Parent = di;
			cc.BackgroundColor3 = Color3.new(125, 125, 125)
			cc.BorderSizePixel = 0;
			cc.Position = UDim2.new(0, 0, 0, 10)
			cc.Size = UDim2.new(0, 390, 0, 1)
		end;
		return cd
	end;
	return bS
end;
return bm
