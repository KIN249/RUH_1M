loadstring([[

-- // المتغيرات الأساسية \\
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "RUH_1M_GUI"
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

-- // الإطار الرئيسي (Main Frame) \\
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 400)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Visible = true
mainFrame.Draggable = true
mainFrame.Active = true
mainFrame.Parent = gui

-- // الشريط العلوي (Title Bar) \\
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

-- // عنوان الواجهة \\
local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "RUH_1M Script"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.Parent = titleBar

-- // زر التقليص (➖) \\
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Text = "—"
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.TextSize = 18
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Size = UDim2.new(0, 30, 0, 30)
minimizeBtn.Position = UDim2.new(1, -70, 0, 0)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
minimizeBtn.BorderSizePixel = 0
minimizeBtn.Parent = titleBar

-- // زر الحذف النهائي (❌) \\
local closeBtn = Instance.new("TextButton")
closeBtn.Text = "×"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
closeBtn.BorderSizePixel = 0
closeBtn.Parent = titleBar

-- // Sidebar و Content Frame \\
local sideBar = Instance.new("Frame")
sideBar.Size = UDim2.new(0, 150, 1, -30)
sideBar.Position = UDim2.new(0, 0, 0, 30)
sideBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
sideBar.BorderSizePixel = 0
sideBar.Parent = mainFrame

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -150, 1, -30)
contentFrame.Position = UDim2.new(0, 150, 0, 30)
contentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
contentFrame.BorderSizePixel = 0
contentFrame.Parent = mainFrame

-- // Frames لكل قسم (لا يتم مسحها) \\
local sections = {"Home", "Auto Farm", "Main GUI", "Main", "Games", "R6", "R15", "Animation", "Settings"}
local frames = {}

for _, name in ipairs(sections) do
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    frame.Visible = false
    frame.Name = name
    frame.Parent = contentFrame
    frames[name] = frame
end

-- // Home Section \\
do
    local homeFrame = frames["Home"]

    local infoLabel = Instance.new("TextLabel")
    infoLabel.Text = "معلومات:"
    infoLabel.Font = Enum.Font.GothamBold
    infoLabel.TextSize = 16
    infoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    infoLabel.BackgroundTransparency = 1
    infoLabel.Size = UDim2.new(0, 100, 0, 20)
    infoLabel.Position = UDim2.new(0, 10, 0, 10)
    infoLabel.TextXAlignment = Enum.TextXAlignment.Left
    infoLabel.Parent = homeFrame

    local text = Instance.new("TextLabel")
    text.Text = "منورين السكربت✨\nالسكربت لسى جديد\nوقاعد اضيف اشياء اكثر واقوى"
    text.Font = Enum.Font.Arial
    text.TextSize = 16
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.BackgroundTransparency = 1
    text.TextWrapped = true
    text.TextXAlignment = Enum.TextXAlignment.Left
    text.Size = UDim2.new(1, -20, 0, 100)
    text.Position = UDim2.new(0, 10, 0, 35)
    text.Parent = homeFrame

    local img = Instance.new("ImageLabel")
    img.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=3700194505&width=420&height=420"
    img.Size = UDim2.new(0, 100, 0, 100)
    img.Position = UDim2.new(1, -110, 1, -110)
    img.BackgroundTransparency = 1
    img.Parent = homeFrame
end

-- // باقي الأقسام (Coming Soon...) \\
for name, frame in pairs(frames) do
    if name ~= "Home" and name ~= "Auto Farm" and name ~= "Main GUI" and name ~= "Settings" then
        local label = Instance.new("TextLabel")
        label.Text = name .. "\nComing Soon..."
        label.Font = Enum.Font.GothamBold
        label.TextSize = 24
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.BackgroundTransparency = 1
        label.Size = UDim2.new(1, 0, 1, 0)
        label.TextXAlignment = Enum.TextXAlignment.Center
        label.TextYAlignment = Enum.TextYAlignment.Center
        label.Parent = frame
    end
end

-- // Auto Farm Section \\
do
    local autoFarmFrame = frames["Auto Farm"]

    local farmLabel = Instance.new("TextLabel")
    farmLabel.Text = "Coming Soon..."
    farmLabel.Font = Enum.Font.GothamBold
    farmLabel.TextSize = 24
    farmLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    farmLabel.BackgroundTransparency = 1
    farmLabel.Size = UDim2.new(1, 0, 1, 0)
    farmLabel.TextXAlignment = Enum.TextXAlignment.Center
    farmLabel.TextYAlignment = Enum.TextYAlignment.Center
    farmLabel.Parent = autoFarmFrame
end

-- // متغير لحفظ الموقع الأصلي قبل التقليص \\
local originalPosition = mainFrame.Position

-- // حالة الوضع (Normal / Minimized) \\
local minimized = false

function toggleMinimize()
    minimized = not minimized

    if minimized then
        originalPosition = mainFrame.Position
        sideBar.Visible = false
        contentFrame.Visible = false
        mainFrame.Size = UDim2.new(0, mainFrame.AbsoluteSize.X, 0, 30)
    else
        sideBar.Visible = true
        contentFrame.Visible = true
        mainFrame.Size = UDim2.new(0, 600, 0, 400)
        mainFrame.Position = originalPosition
    end
end

-- // الضغط على الشريط لتغيير الحالة \\
titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        toggleMinimize()
    end
end)

-- // زر التقليص \\
minimizeBtn.MouseButton1Click:Connect(function()
    toggleMinimize()
end)

-- // زر الحذف النهائي \\
closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- // الأزرار الجانبية \\
local selectedButton = nil

for i, name in ipairs(sections) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.Position = UDim2.new(0, 0, 0, 40 * (i - 1))
    btn.Text = name
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 16
    btn.TextColor3 = Color3.fromRGB(220, 220, 220)
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    btn.BorderSizePixel = 0
    btn.Parent = sideBar

    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end)

    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    end)

    btn.MouseButton1Click:Connect(function()
        for _, frame in pairs(frames) do
            frame.Visible = false
        end

        frames[name].Visible = true

        if selectedButton then
            selectedButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        end

        btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        selectedButton = btn
    end)
end

-- // إظهار Home تلقائيًا عند تشغيل السكربت \\
for _, frame in pairs(frames) do
    frame.Visible = false
end
frames["Home"].Visible = true


-- // Main GUI Section \\
do
    local mainGuiFrame = frames["Main GUI"]

    -- === Fly Button === --
    local flyLabel = Instance.new("TextLabel")
    flyLabel.Text = "طيران (Fly):"
    flyLabel.Font = Enum.Font.GothamBold
    flyLabel.TextSize = 16
    flyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    flyLabel.BackgroundTransparency = 1
    flyLabel.Size = UDim2.new(0, 150, 0, 20)
    flyLabel.Position = UDim2.new(0, 10, 0, 10)
    flyLabel.Parent = mainGuiFrame

    local flyToggle = Instance.new("TextButton")
    flyToggle.Text = ""
    flyToggle.Font = Enum.Font.GothamBold
    flyToggle.TextSize = 16
    flyToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    flyToggle.Size = UDim2.new(0, 25, 0, 25)
    flyToggle.Position = UDim2.new(0, 120, 0, 5)
    flyToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    flyToggle.BorderSizePixel = 0
    flyToggle.Parent = mainGuiFrame

    -- متغير للتحكم في حالة الطيران
    local toggledFly = false

    flyToggle.MouseButton1Click:Connect(function()
        toggledFly = not toggledFly

        if toggledFly then
            pcall(function()
                loadstring(game:HttpGet("https://pastefy.app/IHIgGN9b/raw", true))()
            end)

            flyToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            flyToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)
end


-- // Settings Section \\
do
    local settingsFrame = frames["Settings"]

    -- === Speed Section === --
    local speedLabel = Instance.new("TextLabel")
    speedLabel.Text = "تعديل السرعة:"
    speedLabel.Font = Enum.Font.GothamBold
    speedLabel.TextSize = 16
    speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedLabel.BackgroundTransparency = 1
    speedLabel.Size = UDim2.new(0, 150, 0, 20)
    speedLabel.Position = UDim2.new(0, 10, 0, 10)
    speedLabel.Parent = settingsFrame

    local speedBox = Instance.new("TextBox")
    speedBox.PlaceholderText = "مثال: 100"
    speedBox.ClearTextOnFocus = true
    speedBox.Font = Enum.Font.Gotham
    speedBox.TextSize = 14
    speedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    speedBox.BorderSizePixel = 0
    speedBox.Size = UDim2.new(0, 100, 0, 25)
    speedBox.Position = UDim2.new(0, 10, 0, 35)
    speedBox.Parent = settingsFrame

    local toggleBtnSpeed = Instance.new("TextButton")
    toggleBtnSpeed.Text = ""
    toggleBtnSpeed.Font = Enum.Font.GothamBold
    toggleBtnSpeed.TextSize = 16
    toggleBtnSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleBtnSpeed.Size = UDim2.new(0, 25, 0, 25)
    toggleBtnSpeed.Position = UDim2.new(0, 120, 0, 35)
    toggleBtnSpeed.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    toggleBtnSpeed.BorderSizePixel = 0
    toggleBtnSpeed.Parent = settingsFrame

    -- متغيرات للسرعة
    local toggledSpeed = false
    local originalSpeed = 16
    local defaultSpeed = 100

    local function setSpeed(speed)
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = speed
            end
        end
    end

    toggleBtnSpeed.MouseButton1Click:Connect(function()
        toggledSpeed = not toggledSpeed

        if toggledSpeed then
            local speed = tonumber(speedBox.Text)
            if speed and speed > 0 then
                originalSpeed = speed
                toggleBtnSpeed.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                setSpeed(speed)
            else
                speedBox.Text = tostring(defaultSpeed)
                toggleBtnSpeed.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                setSpeed(defaultSpeed)
            end
        else
            toggleBtnSpeed.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            setSpeed(originalSpeed)
        end
    end)

    speedBox.FocusLost:Connect(function()
        if not toggledSpeed then
            local speed = tonumber(speedBox.Text)
            if speed and speed > 0 then
                originalSpeed = speed
            else
                speedBox.Text = tostring(originalSpeed)
            end
        end
    end)


    -- === Jump Power Section === --
    local jumpLabel = Instance.new("TextLabel")
    jumpLabel.Text = "تعديل النط:"
    jumpLabel.Font = Enum.Font.GothamBold
    jumpLabel.TextSize = 16
    jumpLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    jumpLabel.BackgroundTransparency = 1
    jumpLabel.Size = UDim2.new(0, 150, 0, 20)
    jumpLabel.Position = UDim2.new(0, 180, 0, 10)
    jumpLabel.Parent = settingsFrame

    local jumpBox = Instance.new("TextBox")
    jumpBox.PlaceholderText = "مثال: 100"
    jumpBox.ClearTextOnFocus = true
    jumpBox.Font = Enum.Font.Gotham
    jumpBox.TextSize = 14
    jumpBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    jumpBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    jumpBox.BorderSizePixel = 0
    jumpBox.Size = UDim2.new(0, 100, 0, 25)
    jumpBox.Position = UDim2.new(0, 180, 0, 35)
    jumpBox.Parent = settingsFrame

    local toggleBtnJump = Instance.new("TextButton")
    toggleBtnJump.Text = ""
    toggleBtnJump.Font = Enum.Font.GothamBold
    toggleBtnJump.TextSize = 16
    toggleBtnJump.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleBtnJump.Size = UDim2.new(0, 25, 0, 25)
    toggleBtnJump.Position = UDim2.new(0, 290, 0, 35)
    toggleBtnJump.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    toggleBtnJump.BorderSizePixel = 0
    toggleBtnJump.Parent = settingsFrame

    -- متغيرات للنط
    local toggledJump = false
    local originalJump = 50
    local defaultJump = 100 -- القيمة الافتراضية إذا لم يدخل شي

    local function setJump(power)
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.JumpPower = power
            end
        end
    end

    toggleBtnJump.MouseButton1Click:Connect(function()
        toggledJump = not toggledJump

        if toggledJump then
            local power = tonumber(jumpBox.Text)
            if power and power > 0 then
                originalJump = power
                toggleBtnJump.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                setJump(power)
            else
                jumpBox.Text = tostring(defaultJump)
                toggleBtnJump.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                setJump(defaultJump)
            end
        else
            toggleBtnJump.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            setJump(originalJump)
        end
    end)

    jumpBox.FocusLost:Connect(function()
        if not toggledJump then
            local power = tonumber(jumpBox.Text)
            if power and power > 0 then
                originalJump = power
            else
                jumpBox.Text = tostring(originalJump)
            end
        end
    end)
end


-- // F5 to Toggle GUI \\
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F5 then
        gui.Enabled = not gui.Enabled
    end
end)

]])()
