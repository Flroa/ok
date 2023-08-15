local guilib = {}
local ts = game:GetService("TweenService")


function smoothdrag(ui)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        ts:Create(ui, TweenInfo.new(0.6), {Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)}):Play()
    end

    ui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = ui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    ui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("RunService"):BindToRenderStep("Drag", Enum.RenderPriority.Input.Value, function()
        if dragging then
            update(dragInput)
        end
    end)
end



local tabs
local Core
local maingui
function guilib:Init(Title)
    Title = Title or "exo.gg"
    maingui = Instance.new("ScreenGui")
    maingui.Parent = game.Players.LocalPlayer.PlayerGui

    tabs = Instance.new("Frame")
    tabs.Name = "tabs"
    tabs.Parent = maingui
    tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabs.BackgroundTransparency = 1.000
    tabs.Size = UDim2.new(0, 1917, 0, 809)
    
    Core = Instance.new("Frame")
    Core.Name = "Core"
    Core.Parent = tabs
    Core.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    Core.Position = UDim2.new(0.00730307773, 0, 0.0160692204, 0)
    Core.Size = UDim2.new(0, 240, 0, 430)
    smoothdrag(Core)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 15)
    UICorner.Parent = Core

    local titl = Instance.new("TextLabel")
    titl.Name = "titl"
    titl.Parent = Core
    titl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titl.BackgroundTransparency = 1.000
    titl.Position = UDim2.new(0.0957137495, 0, 0.0334538594, 0)
    titl.Size = UDim2.new(0, 97, 0, 17)
    titl.Font = Enum.Font.GothamBold
    titl.Text = Title
    titl.TextColor3 = Color3.fromRGB(229, 229, 229)
    titl.TextSize = 14.000
    titl.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    titl.TextXAlignment = Enum.TextXAlignment.Left
end

local toggleguicon
toggleguicon = game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
    if isTyping then return end
    if input.KeyCode == Enum.KeyCode.V and maingui then
        maingui.Enabled = not maingui.Enabled
    end
end)


local mostbut = Instance.new("Frame")
local UIListLayout2 = Instance.new("UIListLayout")
local tabcount = 0
local firsttab = nil
function guilib:NewTab(Name, Icon)
    Name = Name or "Tab"
    Icon = Icon or nil
    tabcount = tabcount + 1
    mostbut.Name = "mostbut"
    mostbut.Parent = Core
    mostbut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mostbut.BackgroundTransparency = 1.000
    mostbut.Position = UDim2.new(0, 0, 0.101952277, 0)
    mostbut.Size = UDim2.new(0, 240, 0, 414)

    UIListLayout2.Parent = mostbut
    UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout2.Padding = UDim.new(0, 13)

    local ButtonHolder = Instance.new("Frame")
    ButtonHolder.Name = "ButtonHolderHolder"
    ButtonHolder.Parent = mostbut
    ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonHolder.Position = UDim2.new(0.0625, 0, 0, 0)
    ButtonHolder.Size = UDim2.new(0, 209, 0, 45)
    if firsttab == nil then
        firsttab = Instance.new("BoolValue", ButtonHolder)
        firsttab.Name = "firsttab"
        firsttab.Value = true
    else
        firsttab = Instance.new("BoolValue", ButtonHolder)
        firsttab.Name = "firsttab"
        firsttab.Value = false
    end

    local UICorner_3 = Instance.new("UICorner")
    UICorner_3.CornerRadius = UDim.new(0, 12)
    UICorner_3.Parent = ButtonHolder

    local TextLabel_2 = Instance.new("TextLabel")
    TextLabel_2.Parent = ButtonHolder
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.Position = UDim2.new(0.224880382, 0, 0.311111122, 0)
    TextLabel_2.Size = UDim2.new(0, 143, 0, 17)
    TextLabel_2.Font = Enum.Font.GothamBold
    TextLabel_2.Text = Name
    TextLabel_2.TextColor3 = Color3.fromRGB(229, 229, 229)
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
if Icon ~= nil and Icon ~= 0 then
    local Icon_2 = Instance.new("ImageLabel")
    Icon_2.Name = "Icon"
    Icon_2.Parent = ButtonHolder
    Icon_2.BackgroundTransparency = 1.000
    Icon_2.Position = UDim2.new(0.0909090936, 0, 0.266666681, 0)
    Icon_2.Size = UDim2.new(0, 20, 0, 20)
    Icon_2.Image = "http://www.roblox.com/asset/?id="..Icon

    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint_2.Parent = Icon_2
end
    local Toggle_2 = Instance.new("TextButton")
    Toggle_2.Name = "Toggle"
    Toggle_2.Parent = ButtonHolder
    Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Toggle_2.BackgroundTransparency = 1.000
    Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle_2.BorderSizePixel = 0
    Toggle_2.Size = UDim2.new(0.995215297, 0, 1, 0)
    Toggle_2.ZIndex = 2
    Toggle_2.Font = Enum.Font.SourceSans
    Toggle_2.Text = ""
    Toggle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    Toggle_2.TextSize = 14.000

    local UIGradient_2 = Instance.new("UIGradient")
    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 28, 28)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(101, 62, 62))}  
    UIGradient_2.Offset = Vector2.new(0.78564592, -0.344444454)
    UIGradient_2.Rotation = -71.56504821777344
    UIGradient_2.Parent = ButtonHolder

    local uistroke = Instance.new("UIStroke")
    uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
    uistroke.Color = Color3.fromRGB(255, 255, 255)
    uistroke.LineJoinMode = Enum.LineJoinMode.Round
    uistroke.Thickness = 1
    uistroke.Transparency = 0
    uistroke.Enabled = true

    local actualtab = Instance.new("Frame")
    actualtab.Name = "Tab"
    actualtab.Parent = tabs
    actualtab.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    actualtab.BackgroundTransparency = 1
    if firsttab and ButtonHolder:FindFirstChild("firsttab").Value == true then
        actualtab.Position = UDim2.new(0, (tabcount)*265+(tabcount-1)*280, 0.0160692204, 0)
    elseif tabcount == 2 then
        actualtab.Position = UDim2.new(0, (tabcount)*115+(tabcount-1)*280, 0.0160692204, 0)
    elseif tabcount == 3 then
        actualtab.Position = UDim2.new(0, (tabcount)*65+(tabcount-1)*280, 0.0160692204, 0)
    elseif tabcount == 4 then
        actualtab.Position = UDim2.new(0, (tabcount)*40+(tabcount-1)*280, 0.0160692204, 0)
    elseif tabcount == 5 then
        actualtab.Position = UDim2.new(0, (tabcount)*25+(tabcount-1)*280, 0.0160692204, 0)
    end
    actualtab.Size = UDim2.new(0, 240, 0, 620)
    actualtab.Visible = false

    smoothdrag(actualtab)
    local UICorner_6 = Instance.new("UICorner")
    UICorner_6.CornerRadius = UDim.new(0, 15)
    UICorner_6.Parent = actualtab

    local tabname = Instance.new("TextLabel")
    tabname.Parent = actualtab
    tabname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabname.BackgroundTransparency = 1.000
    tabname.Position = UDim2.new(0.0998804197, 0, 0.0221635364, 0)
    tabname.TextTransparency = 1
    tabname.Size = UDim2.new(0, 97, 0, 17)
    tabname.Font = Enum.Font.GothamBold
    tabname.Text = Name
    tabname.TextColor3 = Color3.fromRGB(229, 229, 229)
    tabname.TextSize = 14.000
    tabname.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    tabname.TextXAlignment = Enum.TextXAlignment.Left

    local LOL = Instance.new("ScrollingFrame")
    LOL.Name = "LOL"
    LOL.Parent = actualtab
    LOL.Active = true
    LOL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LOL.BackgroundTransparency = 1.000
    LOL.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LOL.BorderSizePixel = 0
    LOL.Position = UDim2.new(1.27156582e-07, 0, 0.0645161793, 0)
    LOL.Size = UDim2.new(0, 240, 0, 580)
    LOL.ScrollBarThickness = 0

    local UIListLayout_4 = Instance.new("UIListLayout")
    UIListLayout_4.Parent = LOL
    UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 9)

    LOL.CanvasSize = UDim2.new(0,0,0,UIListLayout_4.AbsoluteContentSize.Y + 7)
    LOL.ChildAdded:Connect(function()
       LOL.CanvasSize = UDim2.new(0,0,0,UIListLayout_4.AbsoluteContentSize.Y + 7)
    end) 

    Toggle_2.MouseButton1Click:Connect(function()
        if actualtab.Visible == false then
            local tween = ts:Create(UIGradient_2, TweenInfo.new(0.7), {Offset = Vector2.new(0.486, -0.344444)})
            tween:Play()
            actualtab.Visible = true
            ts:Create(actualtab, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
            for i,v in next, actualtab:GetDescendants() do
                if v:IsA("TextLabel") then
                    ts:Create(v, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
                elseif v:IsA("Frame") and v.Name ~= "Contain" and v.Name ~= "Container" or v:IsA("ImageButton") and v.Name ~= "Options" and v.Name ~= "DropDownButton" or v:IsA("ImageLabel") then
                    ts:Create(v, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
                end
            end
        else
            local tween2 = ts:Create(UIGradient_2, TweenInfo.new(0.7), {Offset = Vector2.new(0.7486, -0.344444)})
            tween2:Play()
            ts:Create(actualtab, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            for i,v in next, actualtab:GetDescendants() do
                if v:IsA("TextLabel") then
                    ts:Create(v, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
                elseif v:IsA("Frame") or v:IsA("ImageButton") or v:IsA("ImageLabel") then
                    ts:Create(v, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
                end
            end
            wait(0.1)
            actualtab.Visible = false
        end
    end)

    local elemets = {}
    local Contain = Instance.new("Frame")
    local Contain_2 = Instance.new("ScrollingFrame")
    function elemets:Toggle(Name, default, call)
        Name = Name or "Toggle"
        default = default or false
        call = call or function() end

        local toggle = Instance.new("Frame")
        toggle.Name = "Enabled"
        toggle.Parent = LOL
        toggle.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        toggle.Position = UDim2.new(0.00416666688, 0, 0.123569794, 0)
        toggle.Size = UDim2.new(0, 207, 0, 45)

        local TextLabel_8 = Instance.new("TextLabel")
        TextLabel_8.Parent = toggle
        TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_8.BackgroundTransparency = 1.000
        TextLabel_8.Position = UDim2.new(0.0904265344, 0, 0.311111122, 0)
        TextLabel_8.Size = UDim2.new(0, 111, 0, 18)
        TextLabel_8.Font = Enum.Font.GothamBold
        TextLabel_8.Text = Name
        TextLabel_8.TextColor3 = Color3.fromRGB(229, 229, 229)
        TextLabel_8.TextSize = 14.000
        TextLabel_8.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

        local UICorner_13 = Instance.new("UICorner")
        UICorner_13.Parent = toggle

        local Options_3 = Instance.new("ImageButton")
        Options_3.Name = "Options"
        Options_3.Parent = toggle
        Options_3.BackgroundTransparency = 1.000
        Options_3.BorderSizePixel = 0
        Options_3.Position = UDim2.new(0.821256042, 0, 0.288888901, 0)
        Options_3.Size = UDim2.new(0, 20, 0, 20)
        Options_3.Image = "http://www.roblox.com/asset/?id=6031104648"
        Options_3.ImageColor3 = Color3.fromRGB(163, 162, 165)
        Options_3.ZIndex = 3

        local KeyBind_2 = Instance.new("Frame")
        KeyBind_2.Name = "KeyBind"
        KeyBind_2.Parent = toggle
        KeyBind_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        KeyBind_2.Position = UDim2.new(0.695652187, 0, 0.311111122, 0)
        KeyBind_2.Size = UDim2.new(0, 18, 0, 18)

        local UICorner_14 = Instance.new("UICorner")
        UICorner_14.CornerRadius = UDim.new(0, 5)
        UICorner_14.Parent = KeyBind_2

        local TextBox_2 = Instance.new("TextBox")
        TextBox_2.Parent = KeyBind_2
        TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextBox_2.BackgroundTransparency = 1.000
        TextBox_2.Size = UDim2.new(0, 18, 0, 18)
        TextBox_2.Font = Enum.Font.GothamBold
        TextBox_2.PlaceholderText = "Z"
        TextBox_2.Text = ""
        TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox_2.TextSize = 10.000
        TextBox_2.ZIndex = 3

        local Toggle_7 = Instance.new("TextButton")
        Toggle_7.Name = "Toggle"
        Toggle_7.Parent = toggle
        Toggle_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle_7.BackgroundTransparency = 1.000
        Toggle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Toggle_7.BorderSizePixel = 0
        Toggle_7.Size = UDim2.new(0.995215297, 0, 1, 0)
        Toggle_7.ZIndex = 2
        Toggle_7.Font = Enum.Font.SourceSans
        Toggle_7.Text = ""
        Toggle_7.TextColor3 = Color3.fromRGB(0, 0, 0)
        Toggle_7.TextSize = 14.000


        local Options = Instance.new("Frame")

        Options.Name = "Options"
        Options.Parent = LOL
        Options.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        Options.Position = UDim2.new(0.0687500015, 0, 0.0206896551, 0)
        Options.Size = UDim2.new(0, 207, 0, 0)
        Options.Visible = false

        local UICorner = Instance.new("UICorner")
        UICorner.Parent = Options

        Contain.Name = "Contain"
        Contain.Parent = Options
        Contain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Contain.BackgroundTransparency = 1.000
        Contain.Position = UDim2.new(0.0869565234, 0, 0.144827589, 0)
        Contain.Size = UDim2.new(0, 171, 0, 234)

        Contain_2.Name = "Contain"
        Contain_2.Parent = Options
        Contain_2.Active = true
        Contain_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Contain_2.BackgroundTransparency = 10.000
        Contain_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Contain_2.BorderSizePixel = 0
        Contain_2.Position = UDim2.new(0.0360933021, 0, 0.151170611, 0)
        Contain_2.Size = UDim2.new(0, 199, 0, 234)
        Contain_2.ScrollBarThickness = 1

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = Contain_2
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 8)
                
        local toggled = false
        Toggle_7.MouseButton1Click:Connect(function()
            toggled = not toggled
            if toggled then
                ts:Create(toggle, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(255, 101, 104)}):Play()
                ts:Create(TextLabel_8, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(27, 27, 27)}):Play()
                ts:Create(Options_3, TweenInfo.new(0.3), {BackgroundColor3 = Color3.new(27, 27, 27)}):Play()
            else
                ts:Create(toggle, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(27, 27, 27)}):Play()
                ts:Create(TextLabel_8, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(229, 229, 229)}):Play()
                ts:Create(Options_3, TweenInfo.new(0.3), {BackgroundColor3 = Color3.new(163, 162, 165)}):Play()
            end
            call(toggled)
        end)

        local bind = ""
        if TextBox_2.Text ~= ""  then
            bind = Enum.KeyCode[TextBox_2.Text]
        else
            bind = ""
        end
        TextBox_2.FocusLost:Connect(function(enterPressed)
            TextBox_2.Text = TextBox_2.Text:upper()
                bind = TextBox_2.Text:upper()
                if TextBox_2.Text ~= "" then 
                    bind = Enum.KeyCode[TextBox_2.Text]
                
                else
                    bind = ""
                end
                TextBox_2:ReleaseFocus(true)
            end)
            game:GetService("UserInputService").InputBegan:Connect(function(input)
                if input.KeyCode == bind and not game:GetService("UserInputService"):GetFocusedTextBox() then
                        if not toggled then
                            toggled = true
                            ts:Create(toggle, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(255, 101, 104)}):Play()
                            ts:Create(TextLabel_8, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(27, 27, 27)}):Play()
                            ts:Create(Options_3, TweenInfo.new(0.3), {BackgroundColor3 = Color3.new(27, 27, 27)}):Play()
                        else
                            toggled = false
                            ts:Create(toggle, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(27, 27, 27)}):Play()
                            ts:Create(TextLabel_8, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(229, 229, 229)}):Play()
                            ts:Create(Options_3, TweenInfo.new(0.3), {BackgroundColor3 = Color3.new(163, 162, 165)}):Play()
                        end
                        call(toggled)
                end
            end)
            
            TextBox_2:GetPropertyChangedSignal("Text"):Connect(function()
                if TextBox_2.Text:len() > 1 then
                    TextBox_2.Text = TextBox_2.Text:sub(1, 1)
                end
            end)
        local dropped = true
        Toggle_7.MouseButton2Click:Connect(function()
            dropped = not dropped
            if dropped then
                for i,v in next, Options:GetDescendants() do
                    if v:IsA("Frame") then
                        v.Visible = false
                    end
                end
                local tween = ts:Create(Options, TweenInfo.new(0.2), {Size = UDim2.new(0, 207, 0, 0)})
                tween:Play()
                tween.Completed:Wait()
                Options.Visible = false
            else
                Options.Visible = true
                for i,v in next, Options:GetDescendants() do
                    if v:IsA("Frame") and v.Name ~= "DropDownMain" then
                        v.Visible = true
                    end
                end
                ts:Create(Options, TweenInfo.new(0.2), {Size = UDim2.new(0, 207, 0, 290)}):Play()
            end
        end)
        Options_3.MouseButton1Click:Connect(function()
            dropped = not dropped
            if dropped then
                local tween = ts:Create(Options, TweenInfo.new(0.4), {Size = UDim2.new(0, 207, 0, 0)})
                tween:Play()
                tween.Completed:Wait()
                Options.Visible = false
            else
                Options.Visible = true
                local tween = ts:Create(Options, TweenInfo.new(0.4), {Size = UDim2.new(0, 207, 0, 290)}):Play()
            end


        end)

        function frameoverlapcheck(frame,frame2)
            local posx1, posx2 = frame.AbsolutePosition.X, frame2.AbsolutePosition.X
            local sizex1, sizex2 = frame.AbsoluteSize.X, frame2.AbsoluteSize.X
            local Xdistance = math.abs(posx1-posx2)
            local minXdistance = math.abs(sizex1+sizex2/2)
            local posy1,posy2 = frame.AbsolutePosition.Y, frame2.AbsolutePosition.Y
            local sizey1,sizey2 = frame.AbsoluteSize.Y, frame2.AbsoluteSize.Y
            local Ydistance = math.abs(posy1-posy2)
            local minYdistance = math.abs(sizey1+sizey2/2)
            if Ydistance < minYdistance and Xdistance < minXdistance then return true end
            return false
        end
        local minielemts = {}
        function minielemts:Slider(Name, Min, Max, Def, Call)
            Name = Name or "Slider"
            Min = Min or 0
            Max = Max or 10
            Def = Def or 5
            Call = Call or function() end
            local Slider = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local TextLabel = Instance.new("TextLabel")
            local TextLabelsliderval = Instance.new("TextBox")
            local fill = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")


            Slider.Name = "Slider"
            Slider.Parent = Contain_2
            Slider.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            Slider.Position = UDim2.new(0, 0, 0.735042751, 0)
            Slider.Size = UDim2.new(0, 169, 0, 25)
            Slider.Text = ""

            UICorner.CornerRadius = UDim.new(0, 6)
            UICorner.Parent = Slider

            TextLabel.Parent = Slider
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.Position = UDim2.new(0.035502959, 0, 0.338305652, 0)
            TextLabel.Size = UDim2.new(0, 116, 0, 10)
            TextLabel.ZIndex = 2
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = Name
            TextLabel.TextColor3 = Color3.fromRGB(27, 27, 27)
            TextLabel.TextSize = 11.000
            TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextWrapped = true
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left

            TextLabelsliderval.Parent = Slider
            TextLabelsliderval.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabelsliderval.BackgroundTransparency = 1.000
            TextLabelsliderval.Position = UDim2.new(0.745562136, 0, 0.338305652, 0)
            TextLabelsliderval.Size = UDim2.new(0, 43, 0, 10)
            TextLabelsliderval.ZIndex = 2
            TextLabelsliderval.Font = Enum.Font.GothamBold
            TextLabelsliderval.Text = Def
            TextLabelsliderval.TextColor3 = Color3.fromRGB(27, 27, 27)
            TextLabelsliderval.TextSize = 11.000
            TextLabelsliderval.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            TextLabelsliderval.TextWrapped = true

            fill.Name = "fill"
            fill.Parent = Slider
            fill.Active = false
            fill.BackgroundColor3 = Color3.fromRGB(255, 101, 104)
            fill.Selectable = false
            fill.Size = UDim2.new(0, 100, 0, 25)
            fill.Text = ""

            UICorner_2.CornerRadius = UDim.new(0, 6)
            UICorner_2.Parent = fill

            local dragging = false
            fill.MouseButton1Down:Connect(function()
                dragging = true
            end)
            Slider.MouseButton1Down:Connect(function()
                dragging = true
            end)

            game:GetService("UserInputService").InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)
            
            spawn(function()
                repeat
                    if frameoverlapcheck(TextLabelsliderval, fill) then
                        TextLabelsliderval.TextColor3 = Color3.fromRGB(27, 27, 27)
                    else
                        TextLabelsliderval.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                    if frameoverlapcheck(TextLabel, fill) then
                        TextLabel.TextColor3 = Color3.fromRGB(27, 27, 27)
                    else
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                    task.wait()
                until not maingui or not fill or not TextLabel
            end)

            spawn(function()
            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if dragging then
                    local mouse = game:GetService("UserInputService"):GetMouseLocation()
                    local relativePos = mouse-fill.AbsolutePosition
                    local percent = math.clamp(relativePos.X/Slider.AbsoluteSize.X, 0, 1)
                    ts:Create(fill, TweenInfo.new(0.45), {Size = UDim2.new(percent, 0, 0, 25)}):Play()
                    TextLabelsliderval.Text = tostring(math.floor(Min + (Max-Min)*percent))
                    Call(math.floor(Min + (Max-Min)*percent))
                end
            end)
            
            TextLabelsliderval:GetPropertyChangedSignal("Text"):Connect(function()
                local value = tonumber(TextLabelsliderval.Text)
                if value then
                    local percent = math.clamp((value-Min)/(Max-Min), 0, 1)
                    ts:Create(fill, TweenInfo.new(0.45), {Size = UDim2.new(percent, 0, 0, 25)}):Play()
                    Call(value)
                end
            end)
        end)
    end

        local selecteddrop = nil
        function minielemts:Dropdown(Namedrop, Options, Defdrop, call)
            Namedrop = Namedrop or "Dropdown"
            Defdrop = Defdrop or "exo on top"
            Options = Options or {}
            call = call or function() end

            local DropDown = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Open = Instance.new("ImageButton")
            local Textpick = Instance.new("TextLabel")


            DropDown.Name = "DropDown"
            DropDown.Parent = Contain_2
            DropDown.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            DropDown.Size = UDim2.new(0, 171, 0, 30)

            UICorner.CornerRadius = UDim.new(0, 6)
            UICorner.Parent = DropDown

            Open.Name = "DropDownButton"
            Open.Parent = DropDown
            Open.BackgroundTransparency = 1.000
            Open.BorderSizePixel = 0
            Open.Position = UDim2.new(0.836257279, 0, 0.166666672, 0)
            Open.Size = UDim2.new(0, 20, 0, 20)
            Open.Image = "http://www.roblox.com/asset/?id=6031091004"

            Textpick.Name = "Text"
            Textpick.Parent = DropDown
            Textpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Textpick.BackgroundTransparency = 1.000
            Textpick.Position = UDim2.new(0.0568643659, 0, 0.266283542, 0)
            Textpick.Size = UDim2.new(0, 112, 0, 13)
            Textpick.Font = Enum.Font.GothamBold
            Textpick.Text = Namedrop.." -  "..Defdrop
            Textpick.TextColor3 = Color3.fromRGB(229, 229, 229)
            Textpick.TextScaled = true
            Textpick.TextSize = 14.000
            Textpick.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            Textpick.TextWrapped = true
            Textpick.TextXAlignment = Enum.TextXAlignment.Left
            
            local DropDownMain = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Container = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")


            DropDownMain.Name = "DropDownMain"
            DropDownMain.Parent = Contain_2
            DropDownMain.Visible = false
            DropDownMain.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            DropDownMain.Position = UDim2.new(0, 0, 0.161016956, 0)
            DropDownMain.Size = UDim2.new(0, 171, 0, 0)

            UICorner.CornerRadius = UDim.new(0, 6)
            UICorner.Parent = DropDownMain

            Container.Name = "Container"
            Container.Parent = DropDownMain
            Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Container.BackgroundTransparency = 1.000
            Container.Position = UDim2.new(0.0643274859, 0, 0.117437911, 0)
            Container.Size = UDim2.new(0, 152, 0, 46)
            Container.ScrollBarThickness = 1
            

            Container.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 174)
            Container.ChildAdded:Connect(function()
                Container.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 174)
            end) 

            UIListLayout.Parent = Container
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 2)

            for i,v in next, Options do
                local TextButton = Instance.new("TextButton")
                TextButton.Parent = Container
                TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.BackgroundTransparency = 1.000
                TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextButton.BorderSizePixel = 0
                TextButton.Size = UDim2.new(0, 112, 0, 11)
                TextButton.Font = Enum.Font.GothamBold
                TextButton.Text = v
                TextButton.TextColor3 = Color3.fromRGB(72, 72, 72)
                TextButton.TextScaled = true
                TextButton.TextSize = 14.000
                TextButton.TextWrapped = true
                TextButton.TextXAlignment = Enum.TextXAlignment.Left
                TextButton.TextTransparency = 1
                TextButton.Visible = false
                TextButton.MouseButton1Click:Connect(function()
                    call(v)
                    selecteddrop = v
                    Textpick.Text = Namedrop.." -  "..v
                    local tween = ts:Create(DropDownMain, TweenInfo.new(0.15), {Size = UDim2.new(0, 171, 0, 0)})
                    local tween2 = ts:Create(Open, TweenInfo.new(0.15), {Rotation = 0})
                    for i,v in next, Container:GetChildren() do
                        if v:IsA("TextButton") then
                            v.Visible = true
                            ts:Create(v, TweenInfo.new(0.15), {TextTransparency = 1}):Play()
                        end
                    end
                    tween:Play()
                    tween2:Play()
                    tween.Completed:Wait()
                    DropDownMain.Visible = false
                end)
            end
            local dropopen = true
            Open.MouseButton1Click:Connect(function()
                dropopen = not dropopen
                if dropopen then
                    DropDownMain.Visible = true
                    local tween2 = ts:Create(Open, TweenInfo.new(0.15), {Rotation = 180})
                    local tween = ts:Create(DropDownMain, TweenInfo.new(0.15), {Size = UDim2.new(0, 171, 0, 76)})
                    for i,v in next, Container:GetChildren() do
                        if v:IsA("TextButton") then
                            v.Visible = true
                            ts:Create(v, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
                        end
                    end
                    tween:Play()
                    tween2:Play()
                else
                    local tween2 = ts:Create(Open, TweenInfo.new(0.15), {Rotation = 0})
                    local tween = ts:Create(DropDownMain, TweenInfo.new(0.15), {Size = UDim2.new(0, 171, 0, 0)})
                    for i,v in next, Container:GetChildren() do
                        if v:IsA("TextButton") then
                            v.Visible = true
                            ts:Create(v, TweenInfo.new(0.15), {TextTransparency = 1}):Play()
                        end
                    end
                    tween:Play()
                    tween2:Play()
                    tween2.Completed:Wait()
                    DropDownMain.Visible = false
                end
            end)
            Open.MouseButton2Click:Connect(function()
                dropopen = not dropopen
                if dropopen then
                    DropDownMain.Visible = true
                    local tween2 = ts:Create(Open, TweenInfo.new(0.15), {Rotation = 180})
                    local tween = ts:Create(DropDownMain, TweenInfo.new(0.15), {Size = UDim2.new(0, 171, 0, 76)})
                    for i,v in next, Container:GetChildren() do
                        if v:IsA("TextButton") then
                            v.Visible = true
                            ts:Create(v, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
                        end
                    end
                    tween:Play()
                    tween2:Play()
                    tween2.Completed:Wait()
                    DropDownMain.Visible = false
                else
                    DropDownMain.Visible = false
                    local tween2 = ts:Create(Open, TweenInfo.new(0.15), {Rotation = 0})
                    local tween = ts:Create(DropDownMain, TweenInfo.new(0.15), {Size = UDim2.new(0, 171, 0, 0)})
                    for i,v in next, Container:GetChildren() do
                        if v:IsA("TextButton") then
                            v.Visible = true
                            ts:Create(v, TweenInfo.new(0.15), {TextTransparency = 1}):Play()
                        end
                    end
                    tween:Play()
                    tween2:Play()
                    tween2.Completed:Wait()
                    DropDownMain.Visible = false
                end
            end)

        end

        function guilib:Divider(Text)
            Text = Text or "Divider"
            local div = Instance.new("TextLabel")
            div.Name = "div"
            div.Parent = mostbut
            div.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            div.BackgroundTransparency = 1.000
            div.Position = UDim2.new(0.0957137495, 0, 0.782316327, 0)
            div.Size = UDim2.new(0, 97, 0, 17)
            div.Font = Enum.Font.GothamBold
            div.Text = Text
            div.TextColor3 = Color3.fromRGB(90, 90, 90)
            div.TextSize = 14.000
            div.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            div.TextXAlignment = Enum.TextXAlignment.Center
        end  

        local Notifications = Instance.new("ScreenGui")
        Notifications.ResetOnSpawn = false      
        Notifications.Parent = game:GetService("CoreGui")
        function guilib:notify(title, info, dur)
            spawn(function()
                for i,v in pairs(Notifications:GetChildren()) do
                    spawn(function()
                        local newpos = (v.Position - UDim2.new(0, 0, 0.1, 0))
                        game:GetService("TweenService"):Create(v, TweenInfo.new(0.21), {Position = newpos}):Play()
                    end)
                end
                    local tween
                    local Frame = Instance.new("Frame")
                    local UICorner = Instance.new("UICorner")
                    local Frame_2 = Instance.new("Frame")
                    local UICorner_2 = Instance.new("UICorner")
                    local Frame_3 = Instance.new("Frame")
                    local UICorner_3 = Instance.new("UICorner")
                    local Frame_4 = Instance.new("Frame")
                    local Frame_5 = Instance.new("Frame")
                    local TextLabel = Instance.new("TextLabel")
                    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
                    local ImageLabel = Instance.new("ImageLabel")
                    local TextLabel_2 = Instance.new("TextLabel")
                    local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
                    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")


                    Frame.Parent = Notifications
                    Frame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                    Frame.Position = UDim2.new(1.778241336, 0, 0.896547914, 0)
                    TweenService:Create(Frame, TweenInfo.new(0.19), {Position = UDim2.new(0.778241336, 0, 0.896547914, 0)}):Play()
                    Frame.Size = UDim2.new(0.213414624, 0, 0.0828220844, 0)

                    UICorner.CornerRadius = UDim.new(0, 12)
                    UICorner.Parent = Frame

                    Frame_2.Parent = Frame
                    Frame_2.BackgroundColor3 = Color3.fromRGB(223, 79, 81)
                    Frame_2.Size = UDim2.new(0.203007549, 0, 1, 0)

                    UICorner_2.CornerRadius = UDim.new(0, 12)
                    UICorner_2.Parent = Frame_2

                    Frame_3.Parent = Frame
                    Frame_3.BackgroundColor3 = Color3.fromRGB(223, 79, 81)
                    Frame_3.Size = UDim2.new(0.206766948, 0, 1, 0)

                    UICorner_3.CornerRadius = UDim.new(0, 12)
                    UICorner_3.Parent = Frame_3

                    Frame_4.Parent = Frame
                    Frame_4.BackgroundColor3 = Color3.fromRGB(223, 79, 81)
                    Frame_4.BorderSizePixel = 0
                    Frame_4.Position = UDim2.new(0.0526315793, 0, 0, 0)
                    Frame_4.Size = UDim2.new(0.165413558, 0, 1, 0)

                    Frame_5.Parent = Frame
                    Frame_5.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
                    Frame_5.BorderSizePixel = 0
                    Frame_5.Position = UDim2.new(0.218045115, 0, 0, 0)
                    Frame_5.Size = UDim2.new(0.00375939882, 0, 1, 0)

                    TextLabel.Parent = Frame
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.BackgroundTransparency = 1.000
                    TextLabel.Position = UDim2.new(0.258926839, 0, 0.220370382, 0)
                    TextLabel.Size = UDim2.new(0.469924867, 0, 0.314814806, 0)
                    TextLabel.Font = Enum.Font.GothamBold
                    TextLabel.Text = title
                    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.TextScaled = true
                    TextLabel.TextSize = 14.000
                    TextLabel.TextWrapped = true
                    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                    UITextSizeConstraint.Parent = TextLabel
                    UITextSizeConstraint.MaxTextSize = 16

                    ImageLabel.Parent = Frame
                    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ImageLabel.BackgroundTransparency = 1.000
                    ImageLabel.Position = UDim2.new(0.0700000003, 0, 0.310000002, 0)
                    ImageLabel.Size = UDim2.new(0, 20, 0, 20)
                    ImageLabel.Image = "rbxassetid://12129389221"

                    TextLabel_2.Parent = Frame
                    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_2.BackgroundTransparency = 1.000
                    TextLabel_2.LayoutOrder = 1
                    TextLabel_2.Position = UDim2.new(0.25653857, 0, 0.524666131, 0)
                    TextLabel_2.Size = UDim2.new(0.616541445, 0, 0.222222224, 0)
                    TextLabel_2.Font = Enum.Font.GothamMedium
                    TextLabel_2.Text = info
                    TextLabel_2.TextColor3 = Color3.fromRGB(124, 124, 124)
                    TextLabel_2.TextScaled = true
                    TextLabel_2.TextSize = 14.000
                    TextLabel_2.TextWrapped = true
                    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

                    UITextSizeConstraint_2.Parent = TextLabel_2
                    UITextSizeConstraint_2.MaxTextSize = 12

                    UIAspectRatioConstraint.Parent = Frame
                    UIAspectRatioConstraint.AspectRatio = 4.926
                    task.wait(0.12)
                    task.wait(dur)
                    tween = TweenService:Create(Frame, TweenInfo.new(0.4), {Position = UDim2.new(1.778241336, 0, 0.896547914, 0)})
                    tween:Play()
                    tween.Completed:Wait()
                    Frame:Destroy()
                end)
            end
        return minielemts
    end
    return elemets
end
return guilib
