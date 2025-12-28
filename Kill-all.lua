-- Sakurmo Obfuscated Script
local _0x5F2A = Instance.new("ScreenGui")
local _0x1A2B = Instance.new("Frame")
local _0x3C4D = Instance.new("TextLabel")
local _0x5E6F = Instance.new("TextButton")
local _0x7G8H = Instance.new("TextLabel")
local _0x9I0J = Instance.new("TextBox")
local _0x1K2L = Instance.new("TextLabel")
local _0xTS = game:GetService("TweenService")
local _0xUIS = game:GetService("UserInputService")
local _0xP = game:GetService("Players")
local _0xRS = game:GetService("RunService")
local _0xLP = _0xP.LocalPlayer
local _0xC = nil

_0x5F2A.Name = "S_" .. tostring(math.random(100,999))
_0x5F2A.Parent = game:GetService("CoreGui")
_0x5F2A.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

_0x1A2B.Name = "M_" .. tostring(math.random(100,999))
_0x1A2B.Parent = _0x5F2A
_0x1A2B.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
_0x1A2B.BackgroundTransparency = 0.35
_0x1A2B.AnchorPoint = Vector2.new(0.5, 0.5)
_0x1A2B.Position = UDim2.new(0.5, 0, 0.5, 0)
_0x1A2B.Size = UDim2.new(0, 0, 0, 0)
_0x1A2B.Active = true
_0x1A2B.BorderSizePixel = 2
_0x1A2B.BorderColor3 = Color3.fromRGB(50, 50, 50)
_0x1A2B.ClipsDescendants = true

local _0xD1, _0xD2, _0xD3, _0xD4
local function _0xUP(_0xIN)
    local _0xDL = _0xIN.Position - _0xD3
    local _0xTP = UDim2.new(_0xD4.X.Scale, _0xD4.X.Offset + _0xDL.X, _0xD4.Y.Scale, _0xD4.Y.Offset + _0xDL.Y)
    _0xTS:Create(_0x1A2B, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = _0xTP}):Play()
end

_0x1A2B.InputBegan:Connect(function(_0xIN)
    if _0xIN.UserInputType == Enum.UserInputType.MouseButton1 or _0xIN.UserInputType == Enum.UserInputType.Touch then
        _0xD1 = true; _0xD3 = _0xIN.Position; _0xD4 = _0x1A2B.Position
        _0xIN.Changed:Connect(function() if _0xIN.UserInputState == Enum.UserInputState.End then _0xD1 = false end end)
    end
end)

_0x1A2B.InputChanged:Connect(function(_0xIN)
    if _0xIN.UserInputType == Enum.UserInputType.MouseMovement or _0xIN.UserInputType == Enum.UserInputType.Touch then _0xD2 = _0xIN end
end)

_0xUIS.InputChanged:Connect(function(_0xIN)
    if _0xIN == _0xD2 and _0xD1 then _0xUP(_0xIN) end
end)

_0xTS:Create(_0x1A2B, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 380, 0, 280)}):Play()

_0x3C4D.Parent = _0x1A2B; _0x3C4D.BackgroundColor3 = Color3.fromRGB(30, 30, 30); _0x3C4D.Size = UDim2.new(1, 0, 0, 60)
_0x3C4D.Font = Enum.Font.GothamBlack; _0x3C4D.Text = "칼 올킬 핵"; _0x3C4D.TextColor3 = Color3.fromRGB(200, 200, 200); _0x3C4D.TextScaled = true

_0x5E6F.Parent = _0x1A2B; _0x5E6F.BackgroundColor3 = Color3.fromRGB(40, 40, 40); _0x5E6F.Position = UDim2.new(0.1, 0, 0.28, 0)
_0x5E6F.Size = UDim2.new(0.8, 0, 0, 80); _0x5E6F.Font = Enum.Font.GothamBlack; _0x5E6F.Text = "모두 죽이기"
_0x5E6F.TextColor3 = Color3.fromRGB(220, 220, 220); _0x5E6F.TextSize = 35; _0x5E6F.AutoButtonColor = false

_0x7G8H.Parent = _0x5E6F; _0x7G8H.BackgroundTransparency = 1; _0x7G8H.Position = UDim2.new(0, 0, 0.68, 0)
_0x7G8H.Size = UDim2.new(1, 0, 0.25, 0); _0x7G8H.Font = Enum.Font.Gotham; _0x7G8H.Text = "검 들어야 작동"
_0x7G8H.TextColor3 = Color3.fromRGB(150, 150, 150); _0x7G8H.TextSize = 14

_0x9I0J.Parent = _0x1A2B; _0x9I0J.BackgroundColor3 = Color3.fromRGB(25, 25, 25); _0x9I0J.Position = UDim2.new(0.1, 0, 0.70, 0)
_0x9I0J.Size = UDim2.new(0.8, 0, 0, 45); _0x9I0J.Font = Enum.Font.Gotham; _0x9I0J.PlaceholderText = "범위 입력"
_0x9I0J.Text = ""; _0x9I0J.TextColor3 = Color3.fromRGB(200, 200, 200); _0x9I0J.TextScaled = true

_0x1K2L.Parent = _0x1A2B; _0x1K2L.BackgroundTransparency = 1; _0x1K2L.Position = UDim2.new(0, 0, 0.90, 0)
_0x1K2L.Size = UDim2.new(1, 0, 0.1, 0); _0x1K2L.Text = "Made By Sakurmo"; _0x1K2L.TextColor3 = Color3.fromRGB(120, 120, 120); _0x1K2L.TextScaled = true

local function _0xSTR(_0xDST)
    if _0xC then _0xC:Disconnect() end
    _0xC = _0xRS.Heartbeat:Connect(function()
        local _0xCH = _0xLP.Character
        if not _0xCH or not _0xCH:FindFirstChild("HumanoidRootPart") then return end
        local _0xT = _0xCH:FindFirstChildWhichIsA("Tool")
        if not _0xT or not _0xT:FindFirstChild("Handle") then return end
        for _, _0xV in pairs(_0xP:GetPlayers()) do
            if _0xV == _0xLP then continue end
            local _0xTC = _0xV.Character
            if _0xTC and _0xTC:FindFirstChild("HumanoidRootPart") and _0xTC:FindFirstChild("Humanoid") and _0xTC.Humanoid.Health > 0 then
                if (_0xTC.HumanoidRootPart.Position - _0xCH.HumanoidRootPart.Position).Magnitude <= _0xDST then
                    _0xT:Activate()
                    for _, _0xPT in pairs(_0xTC:GetDescendants()) do
                        if _0xPT:IsA("BasePart") then
                            firetouchinterest(_0xT.Handle, _0xPT, 0); firetouchinterest(_0xT.Handle, _0xPT, 1)
                        end
                    end
                end
            end
        end
    end)
end

_0x5E6F.MouseButton1Click:Connect(function()
    local _0xIT = _0x9I0J.Text
    local _0xIV = tonumber(_0xIT) or 1000000
    if _0xLP.Character and _0xLP.Character:FindFirstChildWhichIsA("Tool") then _0xSTR(_0xIV) end
end)

_0xLP.CharacterAdded:Connect(function(_0xCH)
    _0xCH.ChildRemoved:Connect(function(_0xCHLD)
        if _0xCHLD:IsA("Tool") and not _0xCH:FindFirstChildWhichIsA("Tool") then
            if _0xC then _0xC:Disconnect(); _0xC = nil end
        end
    end)
end)
