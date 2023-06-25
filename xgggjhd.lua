local Library={};
local HelpSections={}
getgenv().PlayerDropType='Both'
function Library:Initiate()
    CurrentTab=nil
    if game.CoreGui:FindFirstChild'Ancestor'then 
        game.CoreGui.Ancestor:Destroy();
    end;
    local AncestorFunctions={};
    local TweenService=game:GetService'TweenService';
    local Ancestor = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local Categories = Instance.new("Frame")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    local ImageButton_2 = Instance.new("ImageButton")
    local TextBox = Instance.new("TextBox")
    local UICorner = Instance.new("UICorner")
    local UICorner_2 = Instance.new("UICorner")



    local Slider = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local Title_2 = Instance.new("TextLabel")
    local Plus = Instance.new("TextButton")
    local Minus = Instance.new("TextButton")
    local Input = Instance.new("TextBox")
    local UICorner_5 = Instance.new("UICorner")
    local MainSlider = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local Background = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")

    local UICorner_10 = Instance.new("UICorner")



    local UICorner_17 = Instance.new("UICorner")
    local Categories_2 = Instance.new("Frame")

    --Properties:

    Ancestor.Name = "Ancestor"
    Ancestor.Parent = game.CoreGui
    Ancestor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = Ancestor
    MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, -350, 0.5, -200)
    MainFrame.Size = UDim2.new(0, 700, 0, 460)
    MainFrame.Active = true
    MainFrame.Draggable = true
    UICorner_17.Parent = MainFrame
    UICorner_17.CornerRadius=UDim.new(0,6)

    Categories.Name = "Categories"
    Categories.Parent = MainFrame
    Categories.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Categories.BorderSizePixel = 0
    Categories.Size = UDim2.new(0.25, 0, 1, 0)
    Categories.Position = UDim2.new(-.02, 0, 0, 0)

    ScrollingFrame.Parent = Categories
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.BackgroundTransparency = 1.000
    ScrollingFrame.Position = UDim2.new(0.100000001, 0, 0.26000011, 0)
    ScrollingFrame.Size = UDim2.new(0.800000012, 0, 0.65, 0)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.BorderSizePixel=0;
    ScrollingFrame.ScrollBarThickness=0;

    UIListLayout.Parent = ScrollingFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 2)
    local Frame = Instance.new("Frame")
    Frame.Name='Categories'
    Frame.Parent = ScrollingFrame
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Size = UDim2.new(1, 0, 0, 24)
    Categories_2.Name = "Categories"
    Categories_2.Parent = MainFrame
    Categories_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Categories_2.BorderSizePixel = 0
    Categories_2.Position = UDim2.new(0.221428569, 0, 0, 0)
    Categories_2.Size = UDim2.new(0.00857142825, 0, 1, 0)

    local Sections=Instance.new('Folder')
    Sections.Name = "Sections"
    Sections.Parent = MainFrame
    local dragInput,dragStart,startPos;
    local function update(input)
		local delta=input.Position-dragStart;
		MainFrame:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),'Out','Linear',0.01,true);
	end;

    function AncestorFunctions:GetHelpSections()
        return HelpSections;
    end;


	MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType==Enum.UserInputType.MouseButton1 then
			dragging=true;
			dragStart=input.Position;
			startPos=MainFrame.Position;
			repeat game:GetService'RunService'.RenderStepped:wait()until input.UserInputState==Enum.UserInputState.End;
			dragging=false;
		end;
	end);

    ImageButton_2.InputBegan:Connect(function(input)
		if input.UserInputType==Enum.UserInputType.MouseButton1 then
			dragging=true;
			dragStart=input.Position;
			startPos=MainFrame.Position;
			repeat game:GetService'RunService'.RenderStepped:wait()until input.UserInputState==Enum.UserInputState.End;
			dragging=false;
		end;
	end);

    ImageButton_2.InputChanged:Connect(function(input)
		if input.UserInputType==Enum.UserInputType.MouseMovement then
			dragInput=input;
		end;
	end);

	MainFrame.InputChanged:Connect(function(input)
		if input.UserInputType==Enum.UserInputType.MouseMovement then
			dragInput=input;
		end;
	end);

    game:GetService('UserInputService').InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end;
    end);

    local CategoryAmount=0;

    function AncestorFunctions:CreateOption(OptionText)
        local NoticeGUI = Instance.new("ScreenGui")
        local Notice = Instance.new("Frame")
        local Main = Instance.new("Frame")
        local DropShadow = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local Quit = Instance.new("TextButton")
        local DropShadow_2 = Instance.new("Frame")
        local TextLabel_2 = Instance.new("TextLabel")
        local Aux = Instance.new("TextButton")
        local DropShadow_3 = Instance.new("Frame")
        local TextLabel_3 = Instance.new("TextLabel")
        local UICorner_1 = Instance.new("UICorner")
        local UICorner_2 = Instance.new("UICorner")
        local UICorner_3 = Instance.new("UICorner")
        local UICorner_4 = Instance.new("UICorner")
        local UICorner_5 = Instance.new("UICorner")
        local UICorner_6 = Instance.new("UICorner")
        local UICorner_7 = Instance.new("UICorner")
        local UICorner_8 = Instance.new("UICorner")
        local UICorner_9 = Instance.new("UICorner")
        local Option,SelectionMade=false,false;
        --Properties:

        NoticeGUI.Name = "NoticeGUI"
        NoticeGUI.Parent = game.CoreGui

        Notice.Name = "Notice"
        Notice.Parent = NoticeGUI
        Notice.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Notice.BackgroundTransparency = 1.000
        Notice.BorderSizePixel = 0
        Notice.Size = UDim2.new(1, 0, 1, 0)
        Notice.Visible = true

        Main.Name = "Main"
        Main.Parent = Notice
        Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Main.BorderSizePixel = 0
	Main.AnchorPoint = Vector2.new(.5,.5)
        Main.Position = UDim2.new(0.5,0,.5,0)
        Main.Size = UDim2.new(0, 300, 0, 200)
        Main.ZIndex = 5
        Main.Active = true
        Main.Draggable = true
        UICorner_1.Parent=Main;

        DropShadow.Name = "DropShadow"
        DropShadow.Parent = Main
        DropShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        DropShadow.BorderSizePixel = 0
        DropShadow.Position = UDim2.new(0, 4, 0, 4)
        DropShadow.Size = UDim2.new(1, 0, 1, 0)
        DropShadow.ZIndex = 4
        UICorner_2.Parent=DropShadow;

        TextLabel.Parent = Main
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0, 10, 0, 10)
        TextLabel.Size = UDim2.new(1, -20, 1, -20)
        TextLabel.ZIndex = 5
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.Text = OptionText or "Are You Sure?"
        TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
        TextLabel.TextSize = 24.000
        TextLabel.TextWrapped = true
        UICorner_3.Parent=TextLabel
        Quit.Name = "Quit"
        Quit.Parent = Notice
        Quit.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Quit.BorderSizePixel = 0
        Quit.Position = UDim2.new(0.5, 20, 0.62, 0)
        Quit.Selectable = false
        Quit.Size = UDim2.new(0, 130, 0, 40)
        Quit.ZIndex = 5
        Quit.Selected = true
        Quit.Font = Enum.Font.SourceSans
        Quit.Text = ""
        Quit.TextSize = 14.000
        UICorner_4.Parent=Quit
        Quit.MouseButton1Click:Connect(function()
            NoticeGUI:Destroy();
            Option=false;SelectionMade=true;
        end);

        DropShadow_2.Name = "DropShadow"
        DropShadow_2.Parent = Quit
        DropShadow_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        DropShadow_2.BorderSizePixel = 0
        DropShadow_2.Position = UDim2.new(0, 4, 0, 4)
        DropShadow_2.Size = UDim2.new(1, 0, 1, 0)
        DropShadow_2.ZIndex = 4
        UICorner_5.Parent=DropShadow_2;

        TextLabel_2.Parent = Quit
        TextLabel_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        TextLabel_2.BackgroundTransparency = 1.000
        TextLabel_2.BorderSizePixel = 0
        TextLabel_2.Position = UDim2.new(0, 25, 0, 0)
        TextLabel_2.Size = UDim2.new(1, -50, 1, 0)
        TextLabel_2.ZIndex = 5
        TextLabel_2.Font = Enum.Font.GothamBold
        TextLabel_2.Text = "Decline"
        TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_2.TextSize = 23.000
        TextLabel_2.TextWrapped = true
        UICorner_6.Parent=TextLabel2;

        Aux.Name = "Aux"
        Aux.Parent = Notice
        Aux.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Aux.BorderSizePixel = 0
        Aux.Position = UDim2.new(0.5, -150, 0.62, 0)
        Aux.Selectable = false
        Aux.Size = UDim2.new(0, 130, 0, 40)
        Aux.ZIndex = 5
        Aux.Selected = true
        Aux.Font = Enum.Font.SourceSans
        Aux.Text = ""
        Aux.TextSize = 14.000
        UICorner_7.Parent=Aux;
        Aux.MouseButton1Click:Connect(function()
            NoticeGUI:Destroy();
            Option=true;SelectionMade=true;
        end);

        DropShadow_3.Name = "DropShadow"
        DropShadow_3.Parent = Aux
        DropShadow_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        DropShadow_3.BorderSizePixel = 0
        DropShadow_3.Position = UDim2.new(0, 4, 0, 4)
        DropShadow_3.Size = UDim2.new(1, 0, 1, 0)
        DropShadow_3.ZIndex = 4
        UICorner_8.Parent=DropShadow_3;

        TextLabel_3.Parent = Aux
        TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_3.BackgroundTransparency = 1.000
        TextLabel_3.BorderSizePixel = 0
        TextLabel_3.Position = UDim2.new(0, 25, 0, 0)
        TextLabel_3.Size = UDim2.new(1, -50, 1, 0)
        TextLabel_3.ZIndex = 5
        TextLabel_3.Font = Enum.Font.GothamBold
        TextLabel_3.Text = "Accept"
        TextLabel_3.TextColor3 = Color3.fromRGB(255,255,255)
        TextLabel_3.TextSize = 23.000
        TextLabel_3.TextWrapped = true
        UICorner_9.Parent=TextLabel_3;
        repeat task.wait()until SelectionMade;
        return Option
    end;
    function AncestorFunctions:CreateTab(ID,Name)
        local Tab={}
        -- ScrollingFrame.CanvasSize=ScrollingFrame.CanvasSize+UDim2.new(0,0,0,30)
        CategoryAmount=CategoryAmount+1;
        local ImageButton = Instance.new("ImageButton")
        local TextButton = Instance.new("TextButton")
        local Frame = Instance.new("Frame")
        Frame.Name='Categories'
        Frame.Parent = ScrollingFrame
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.BackgroundTransparency = 1.000
        Frame.Size = UDim2.new(1, 0, 0, 25)
        ImageButton.Parent = Frame
        ImageButton.BackgroundColor3 =Color3.fromRGB(255, 255, 255)
        ImageButton.ImageColor3=(CategoryAmount==1 and Color3.fromRGB(0,122,255))or Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderSizePixel = 0
        ImageButton.Size = UDim2.new(0.200000003, 0, 1.2, 0)
        ImageButton.AutoButtonColor = false
        ImageButton.Image ='http://www.roblox.com/asset/?id='..ID;
        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.220000003, 0, 0.2, 0)
        TextButton.Size = UDim2.new(0.800000012, 0, 0.9, 0)
        TextButton.AutoButtonColor = false
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = Name
        TextButton.TextColor3 = (CategoryAmount==1 and Color3.fromRGB(0,122,255))or Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 13
        TextButton.ClipsDescendants=true;
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        local function func()
            for i,v in next,ScrollingFrame:GetChildren()do 
                if v:IsA'Frame'and v~=Frame and v:FindFirstChild'TextButton'and v:FindFirstChild'ImageButton'then 
                    v.TextButton.TextColor3=Color3.fromRGB(255,255,255);
                    v.ImageButton.ImageColor3=Color3.fromRGB(255,255,255);
                    Sections:FindFirstChild(tostring(v.TextButton.Text)).Visible=false;
                elseif v:IsA'Frame'and v:FindFirstChild'TextButton'and v:FindFirstChild'ImageButton'then
                    Sections:FindFirstChild(tostring(v.TextButton.Text)).Visible=true;
                    task.spawn(function()
                        TweenService:Create(ImageButton,TweenInfo.new(0.2),{ImageColor3=Color3.fromRGB(0,122,255)}):Play();
                    end);
                    task.spawn(function()
                        TweenService:Create(TextButton,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(0,122,255);}):Play();
                    end);
                    CurrentTab=ScrollingFrame_2
                end;
            end;
        end;
        TextButton.MouseButton1Click:Connect(func);
        ImageButton.MouseButton1Click:Connect(func)
        function Tab:CreateSection()
            local Elements={}
            local ScrollingFrame_2 = Instance.new("ScrollingFrame")
            local UIListLayout_2 = Instance.new("UIListLayout")

            ScrollingFrame_2.Parent = Sections
            ScrollingFrame_2.Active = true
            ScrollingFrame_2.Visible=(CategoryAmount==1 and true)or false;
            ScrollingFrame_2.Name=Name
            ScrollingFrame_2.AnchorPoint = Vector2.new(0.5, 0.5)
            ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame_2.BackgroundTransparency = 1.000
            ScrollingFrame_2.Position = UDim2.new(0.615, 0, 0.5, 0)
            ScrollingFrame_2.Size = UDim2.new(0.709999979, 0, 0.949999988, 0)
            ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollingFrame_2.BorderSizePixel=0;
            ScrollingFrame_2.ScrollBarThickness=0;
            ScrollingFrame_2.ScrollBarImageColor3=Color3.fromRGB(255,255,255)
            if CategoryAmount==1 then 
                CurrentTab=ScrollingFrame_2;
            end;

            UIListLayout_2.Parent = ScrollingFrame_2
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0.0199999996, 0)

            function Elements:CreateSubSection(MainTitle)
                ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,40)
                local Frame_2 = Instance.new("Frame")
                local Title = Instance.new("TextLabel")
                local Sections_2 = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local UIListLayout_3 = Instance.new("UIListLayout")
                Sections_2.Name = "Sections"
                Sections_2.Parent = ScrollingFrame_2
                Sections_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                Sections_2.Size = UDim2.new(0.996447325, 0, 0, 0)

                UICorner_3.Parent = Sections_2
                local Elements={};
                Frame_2.Parent = Sections_2
                Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_2.BackgroundTransparency = 1.000
                Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                Frame_2.Size = UDim2.new(0.971540928, 0, 1, 0)
                UIListLayout_3.Parent = Frame_2
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 5)
                local Title = Instance.new("TextLabel")
                Title.Name = "Block"
                Title.Parent = Frame_2
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0.018108651, 0, 0, 0)
                Title.Size = UDim2.new(0.381999999, 0, 0, 10)
                Title.Font = Enum.Font.GothamBlack
                Title.Text = '';
                Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title.TextSize = 14.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
                function Elements:CreateTitle(Name)
                    local TitleTable={};
                    if Frame_2:FindFirstChild'Block'then 
                        Frame_2.Block:Destroy();
                    end;
                    local Title = Instance.new("TextLabel")
                    Title.Name = "Title"
                    Title.Parent = Frame_2
                    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title.BackgroundTransparency = 1.000
                    Title.Position = UDim2.new(0.018108651, 0, 0, 0)
                    Title.Size = UDim2.new(0.381999999, 0, 0, 30)
                    Title.Font = Enum.Font.GothamBlack
                    Title.Text = Name
                    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title.TextSize = 14.000
                    Title.TextXAlignment = Enum.TextXAlignment.Left
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,40)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,15)
                    function TitleTable:UpdateText(Text)
                        Title.Text = Text;
                    end;
                    return TitleTable;
                end;
                function Elements:CreateButton(Name,Callback,Animated,HelpToggled,HelpInfo)
                    local ButtonTable={}
                    local Button = Instance.new("Frame")
                    local UICorner_11 = Instance.new("UICorner")
                    local MainButton_3 = Instance.new("TextButton")
                    local UICorner_12 = Instance.new("UICorner")
                    local Title_4 = Instance.new("TextLabel")
                    Button.Name = "Button"
                    Button.Parent = Frame_2
                    Button.AnchorPoint = Vector2.new(0.5, 0.5)
                    Button.BackgroundColor3 = Color3.fromRGB(17,17,17)
                    Button.BorderSizePixel = 0
                    Button.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                    Button.Size = UDim2.new(1, 0, 0, 42)

                    UICorner_11.Parent = Button

                    MainButton_3.Name = "MainButton"
                    MainButton_3.Parent = Button
                    MainButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainButton_3.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    MainButton_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    MainButton_3.BorderSizePixel = 0
                    MainButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                    MainButton_3.Size = UDim2.new(0.990000019, 0, 0.800000012, 0)
                    MainButton_3.AutoButtonColor = false
                    MainButton_3.Font = Enum.Font.SourceSans
                    MainButton_3.Text = ""
                    MainButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
                    MainButton_3.TextSize = 14.000

                    function ButtonTable:UpdateHeader(Text)
                        Title_4.Text = Text;
                    end;

                    UICorner_12.Parent = MainButton_3

                    Title_4.Name = "Title"
                    Title_4.Parent = MainButton_3
                    Title_4.AnchorPoint = Vector2.new(0.5, 0.5)
                    Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_4.BackgroundTransparency = 1.000
                    Title_4.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Title_4.Size = UDim2.new(0.222422868, 0, 0, 35)
                    Title_4.Font = Enum.Font.GothamBold
                    Title_4.Text = Name;
                    Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_4.TextSize = 14.000
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,47)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,51)
                    MainButton_3.MouseButton1Click:Connect(function()
                        if Animated then 
                            task.spawn(function()
                                TweenService:Create(MainButton_3,TweenInfo.new(0.1),{Size=UDim2.new(0, 440,0, 25)}):Play();
                                task.wait(0.05);
                                TweenService:Create(MainButton_3,TweenInfo.new(0.1),{Size=UDim2.new(0.990000019, 0, 0.7, 0)}):Play();
                            end);
                        end;
                        if Callback then 
                            Callback();
                        end;
                    end)
                    if HelpToggled then
                        local Help = Instance.new("TextButton")
                        local HelpFrame = Instance.new("Frame")
                        HelpSections[#HelpSections+1]=Help
                        local UICorner_9 = Instance.new("UICorner")
                        local TextLabel2 = Instance.new("TextLabel")
                        HelpFrame.Parent = Frame_2
                        HelpFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                        HelpFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
                        HelpFrame.BorderSizePixel = 0
                        HelpFrame.Position = UDim2.new(0.5, 0, 1, 0)
                        HelpFrame.Size = UDim2.new(0.980000019, 0, 0, 20)
                        HelpFrame.Visible=false;
                        UICorner_9.Parent=HelpFrame

                        TextLabel2.Parent = HelpFrame
                        TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.BackgroundTransparency = 1
                        TextLabel2.Position = UDim2.new(0.52, 0, 0.5, 0)
                        TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        TextLabel2.ZIndex = 2
                        TextLabel2.Font = Enum.Font.GothamBold
                        TextLabel2.Text = HelpInfo or 'Describe the feature here';
                        TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextSize = 12.000
                        TextLabel2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextWrapped = true
                        TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
                        Help.Name = "Help"
                        Help.Parent = Button
                        Help.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        Help.BackgroundTransparency = 1.000
                        Help.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        Help.BorderSizePixel = 0
                        Help.Position = UDim2.new(0.945999988, 0, 0.349999994, 0)
                        Help.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                        Help.AutoButtonColor = false
                        Help.Font = Enum.Font.GothamBold
                        Help.Text = "+"
                        Help.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Help.TextSize = 18.000
                        local Toggled=false;
                        Help.MouseButton1Click:Connect(function()
                            Toggled=not Toggled;
                            if Toggled then 
                                HelpFrame.Size = UDim2.new(0,0,0,0)
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=135}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0.980000019, 0, 0, 20)}):Play();
                                HelpFrame.Visible=true;
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size+UDim2.new(0,0,0,27)}):Play();
                                task.wait(.15);
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,30)}):Play();
                                TextLabel2.TextTransparency=0;
                            else
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize-UDim2.new(0,0,0,30)}):Play();
                                TextLabel2.TextTransparency=1;
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=0}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0,0,0,0)}):Play();
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size-UDim2.new(0,0,0,27)}):Play();
                                task.wait(.3)
                                HelpFrame.Visible=false
                            end;
                        end)
                    end;
                    return ButtonTable;
                end;
                function Elements:CreateLabel(Name)
                    local LabelTable={};
                    local Button = Instance.new("Frame")
                    local UICorner_11 = Instance.new("UICorner")
                    local MainButton_3 = Instance.new("TextLabel")
                    local UICorner_12 = Instance.new("UICorner")
                    local Title_4 = Instance.new("TextLabel")
                    Button.Name = "Button"
                    Button.Parent = Frame_2
                    Button.AnchorPoint = Vector2.new(0.5, 0.5)
                    Button.BackgroundColor3 = Color3.fromRGB(17,17,17)
                    Button.BorderSizePixel = 0
                    Button.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                    Button.Size = UDim2.new(1, 0, 0, 42)

                    UICorner_11.Parent = Button

                    MainButton_3.Name = "MainButton"
                    MainButton_3.Parent = Button
                    MainButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainButton_3.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    MainButton_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    MainButton_3.BorderSizePixel = 0
                    MainButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                    MainButton_3.Size = UDim2.new(0.980000019, 0, 0.800000012, 0)
                    MainButton_3.Font = Enum.Font.SourceSans
                    MainButton_3.Text = ""
                    MainButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
                    MainButton_3.TextSize = 14.000

                    UICorner_12.Parent = MainButton_3

                    Title_4.Name = "Title"
                    Title_4.Parent = MainButton_3
                    Title_4.AnchorPoint = Vector2.new(0.5, 0.5)
                    Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_4.BackgroundTransparency = 1.000
                    Title_4.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Title_4.Size = UDim2.new(0.222422868, 0, 0, 35)
                    Title_4.Font = Enum.Font.GothamBold
                    Title_4.Text = Name;
                    Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_4.TextSize = 14.000
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,47)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,51)
                    function LabelTable:UpdateText(Text)
                        Title_4.Text = Text;
                    end;
                    return LabelTable
                end;
                function Elements:CreateToggle(Name,Refresh,Callback,Default,HelpToggled,HelpInfo)
                    local Toggled=Default or false;
                    local ToggleTable={}
                    local Toggle = Instance.new("TextButton")
                    local UICorner_8 = Instance.new("UICorner")
                    local MainButton = Instance.new("TextButton")
                    local UICorner_9 = Instance.new("UICorner")
                    local UICorner_10 = Instance.new("UICorner")
                    local Title_3 = Instance.new("TextButton")
                    local MainButton_2 = Instance.new("TextButton")

                    Toggle.Name = "Toggle"
                    Toggle.Parent = Frame_2
                    Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
                    Toggle.BackgroundColor3 = Color3.fromRGB(10,10,10)
                    Toggle.BorderSizePixel = 0
                    Toggle.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                    Toggle.Size = UDim2.new(1, 0, 0, 40)
                    Toggle.Text='';
                    Toggle.AutoButtonColor=false;

                    UICorner_8.Parent = Toggle

                    MainButton.Name = "MainButton"
                    MainButton.Parent = Toggle
                    MainButton.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                    MainButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    MainButton.BorderSizePixel = 0
                    MainButton.Position = UDim2.new(0.9155815802, 0, 0.5, 0)
                    MainButton.Size = UDim2.new(0.0883683488, 0, 0.637499988, 0)
                    MainButton.AutoButtonColor = false
                    MainButton.Font = Enum.Font.SourceSans
                    MainButton.Text = ""
                    MainButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                    MainButton.TextSize = 14.000

                    UICorner_9.Parent = MainButton
                    UICorner_9.CornerRadius=UDim.new(0,12)

                    Title_3.Name = "Title"
                    Title_3.Parent = Toggle
                    Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_3.BackgroundTransparency = 1.000
                    Title_3.Position = UDim2.new(0.0181086548, 0, 0.0500000007, 0)
                    Title_3.Size = UDim2.new(0.222422868, 0, 0, 35)
                    Title_3.Font = Enum.Font.GothamBold
                    Title_3.Text = Name
                    Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_3.TextSize = 14.000
                    Title_3.TextXAlignment = Enum.TextXAlignment.Left

                    MainButton_2.Name = "MainButton"
                    MainButton_2.Parent = Toggle
                    MainButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    MainButton_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    MainButton_2.BorderSizePixel = 0
                    MainButton_2.Position = UDim2.new(0.8957110195, 0, 0.5, 0)
                    MainButton_2.Size = UDim2.new(0.050957229, 0, 0.617499988, 0)
                    MainButton_2.AutoButtonColor = false
                    MainButton_2.Font = Enum.Font.SourceSans
                    MainButton_2.Text = ""
                    MainButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
                    MainButton_2.TextSize = 14.000

                    if HelpToggled then
                        local Help = Instance.new("TextButton")

                        local HelpFrame = Instance.new("Frame")
                        HelpSections[#HelpSections+1]=Help
                        local UICorner_9 = Instance.new("UICorner")
                        local TextLabel2 = Instance.new("TextLabel")
                        HelpFrame.Parent = Frame_2
                        HelpFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                        HelpFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
                        HelpFrame.BorderSizePixel = 0
                        HelpFrame.Position = UDim2.new(0.5, 0, 1, 0)
                        HelpFrame.Size = UDim2.new(0.980000019, 0, 0, 20)
                        HelpFrame.Visible=false;
                        UICorner_9.Parent=HelpFrame

                        TextLabel2.Parent = HelpFrame
                        TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.BackgroundTransparency = 1
                        TextLabel2.Position = UDim2.new(0.52, 0, 0.5, 0)
                        TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        TextLabel2.ZIndex = 2
                        TextLabel2.Font = Enum.Font.GothamBold
                        TextLabel2.Text = HelpInfo or 'Describe the feature here';
                        TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextSize = 12.000
                        TextLabel2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextWrapped = true
                        TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
                        Help.Name = "Help"
                        Help.Parent = Toggle
                        Help.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        Help.BackgroundTransparency = 1.000
                        Help.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        Help.BorderSizePixel = 0
                        Help.Position = UDim2.new(0.955999988, 0, 0.349999994, 0)
                        Help.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                        Help.AutoButtonColor = false
                        Help.Font = Enum.Font.GothamBold
                        Help.Text = "+"
                        Help.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Help.TextSize = 18.000
                        local Toggled=false;
                        Help.MouseButton1Click:Connect(function()
                            Toggled=not Toggled;
                            if Toggled then 
                                HelpFrame.Size = UDim2.new(0,0,0,0)
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=135}):Play();
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,30)}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0.980000019, 0, 0, 20)}):Play();
                                HelpFrame.Visible=true;
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size+UDim2.new(0,0,0,27)}):Play();
                                task.wait(.15);
                                TextLabel2.TextTransparency=0;
                            else
                                TextLabel2.TextTransparency=1;
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=0}):Play();
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize-UDim2.new(0,0,0,30)}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0,0,0,0)}):Play();
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size-UDim2.new(0,0,0,27)}):Play();

                                task.wait(.3)
                                HelpFrame.Visible=false
                            end;
                        end)
                    end;

                    UICorner_10.Parent = MainButton_2
                    UICorner_10.CornerRadius=UDim.new(0,12)
                    if Toggled then 
                        MainButton.BackgroundColor3=Color3.fromRGB(0,122,255)
                        TweenService:Create(MainButton_2, TweenInfo.new(0.1), {Position =  UDim2.new(0.93810195, 0, 0.5, 0)}):Play()
                    end;
                    if Callback then 
                        Callback(Toggled);
                    end;
                    local function func(Forced)
                        Toggled=not Toggled;
                        if Toggled then 
                            MainButton.BackgroundColor3=Color3.fromRGB(0,122,255)
                            TweenService:Create(MainButton_2, TweenInfo.new(0.1), {Position = UDim2.new(0.93810195, 0, 0.5, 0)}):Play()
                        else
                            MainButton.BackgroundColor3=Color3.fromRGB(15,15,15)
                            TweenService:Create(MainButton_2, TweenInfo.new(0.1), {Position = UDim2.new(0.8957110195, 0, 0.5, 0)}):Play()
                        end;
                        if Refresh then 
                            Refresh()Callback(Toggled);
                        end;
                        if Callback and not Refresh then 
                            Callback(Toggled);
                        end;
                    end;
                    function ToggleTable:Toggle()
                        Toggled=not Toggled;
                        if Toggled then 
                            MainButton.BackgroundColor3=Color3.fromRGB(0,122,255)
                            TweenService:Create(MainButton_2, TweenInfo.new(0.1), {Position = UDim2.new(0.93810195, 0, 0.5, 0)}):Play()
                        else
                            MainButton.BackgroundColor3=Color3.fromRGB(15,15,15)
                            TweenService:Create(MainButton_2, TweenInfo.new(0.1), {Position = UDim2.new(0.8957110195, 0, 0.5, 0)}):Play()
                        end;Callback(Toggled)
                    end;
                    function ToggleTable:GetState()
                        return Toggled;
                    end;
                    MainButton.MouseButton1Click:Connect(func);
                    MainButton_2.MouseButton1Click:Connect(func);
                    Toggle.MouseButton1Click:Connect(func);
                    Title_3.MouseButton1Click:Connect(func)
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,47)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,51)
                    return ToggleTable
                end;
                if MainTitle then 
                    Elements:CreateTitle(MainTitle);
                end;

                function Elements:CreateKeybind(Name,Callback,Default,HelpToggled,HelpInfo)
                    local Keybind = Instance.new("Frame")
                    local UICorner_13 = Instance.new("UICorner")
                    local Title_5 = Instance.new("TextLabel")
                    local Input_2 = Instance.new("TextLabel")
                    local TextButton=Instance.new'TextButton';
                    local UICorner_14 = Instance.new("UICorner")
                    Keybind.Name = "Keybind"
                    Keybind.Parent = Frame_2
                    Keybind.AnchorPoint = Vector2.new(0.5, 0.5)
                    Keybind.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    Keybind.BorderSizePixel = 0
                    Keybind.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                    Keybind.Size = UDim2.new(1, 0, 0, 40)

                    UICorner_13.Parent = Keybind

                    Title_5.Name = "Title"
                    Title_5.Parent = Keybind
                    Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_5.BackgroundTransparency = 1.000
                    Title_5.Position = UDim2.new(0.0181086548, 0, 0.0500000007, 0)
                    Title_5.Size = UDim2.new(0.222422868, 0, 0, 35)
                    Title_5.Font = Enum.Font.GothamBold
                    Title_5.Text = Name or 'None';
                    Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_5.TextSize = 14.000
                    Title_5.TextXAlignment = Enum.TextXAlignment.Left

                    Input_2.Name = "Input"
                    Input_2.Parent = Keybind
                    Input_2.AnchorPoint = Vector2.new(0.5, 0.5)
                    Input_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    Input_2.Position = UDim2.new(0.8551233585, 0, 0.5, 0)
                    Input_2.Size = UDim2.new(0.193649757, 0, 0.5, 0)
                    Input_2.Font = Enum.Font.GothamBold
                    Input_2.Text = (Default and Default.Name) or 'None';
                    Input_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Input_2.TextSize = 14.000

                    if HelpToggled then
                        local Help = Instance.new("TextButton")

                        local HelpFrame = Instance.new("Frame")
                        HelpSections[#HelpSections+1]=Help
                        local UICorner_9 = Instance.new("UICorner")
                        local TextLabel2 = Instance.new("TextLabel")
                        HelpFrame.Parent = Frame_2
                        HelpFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                        HelpFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
                        HelpFrame.BorderSizePixel = 0
                        HelpFrame.Position = UDim2.new(0.5, 0, 1, 0)
                        HelpFrame.Size = UDim2.new(0.980000019, 0, 0, 20)
                        HelpFrame.Visible=false;
                        UICorner_9.Parent=HelpFrame

                        TextLabel2.Parent = HelpFrame
                        TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.BackgroundTransparency = 1
                        TextLabel2.Position = UDim2.new(0.52, 0, 0.5, 0)
                        TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        TextLabel2.ZIndex = 2
                        TextLabel2.Font = Enum.Font.GothamBold
                        TextLabel2.Text = HelpInfo or 'Describe the feature here';
                        TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextSize = 12.000
                        TextLabel2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextWrapped = true
                        TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
                        Help.Name = "Help"
                        Help.Parent = Keybind
                        Help.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        Help.BackgroundTransparency = 1.000
                        Help.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        Help.BorderSizePixel = 0
                        Help.Position = UDim2.new(0.955999988, 0, 0.349999994, 0)
                        Help.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                        Help.AutoButtonColor = false
                        Help.Font = Enum.Font.GothamBold
                        Help.Text = "+"
                        Help.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Help.TextSize = 18.000
                        local Toggled=false;
                        Help.MouseButton1Click:Connect(function()
                            Toggled=not Toggled;
                            if Toggled then 
                                HelpFrame.Size = UDim2.new(0,0,0,0)
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=135}):Play();
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,30)}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0.980000019, 0, 0, 20)}):Play();
                                HelpFrame.Visible=true;
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size+UDim2.new(0,0,0,27)}):Play();
                                task.wait(.15);
                                TextLabel2.TextTransparency=0;
                            else
                                TextLabel2.TextTransparency=1;
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=0}):Play();
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize-UDim2.new(0,0,0,30)}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0,0,0,0)}):Play();
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size-UDim2.new(0,0,0,27)}):Play();
                                task.wait(.3)
                                HelpFrame.Visible=false
                            end;
                        end)
                    end;

                    TextButton.Name = "Input"
                    TextButton.Parent = Keybind
                    TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
                    TextButton.BackgroundTransparency=1
                    TextButton.Position = UDim2.new(0.903175175, 0, 0.5, 0)
                    TextButton.Size = UDim2.new(0.143649757, 0, 0.5, 0)
                    TextButton.Text = ""

                    local InputConnection,CallbackConnection;
                    local Debounce=false;
                    TextButton.MouseButton1Click:Connect(function()
                        OldBind=Input_2.Text;
                        Input_2.Text='...';
                        Debounce=true;
                        InputConnection=game:GetService'UserInputService'.InputBegan:Connect(function(Key,Processed)

                            if Key.UserInputType.Name=='Keyboard'then 
                                if Key.KeyCode==Enum.KeyCode.Backspace then 
                                    Input_2.Text='None';
                                    Default='None';
                                    InputConnection:Disconnect()InputConnection=nil;
                                    return;
                                end;

                                if not Processed and InputConnection then 
                                    Input_2.Text=Key.KeyCode.Name;
                                    Default=Key.KeyCode;
                                    -- task.wait(.5)
                                    Debounce=false;
 
                                end;

                            else
                               
                                Input_2.Text = OldBind
            
                            end;
                            InputConnection:Disconnect()InputConnection=nil;

                        end);

                        return Default
                    end);
                    CallbackConnection=game:GetService'UserInputService'.InputBegan:Connect(function(Key,Processed)
                        if not Processed and CallbackConnection and Key.KeyCode==Default then 
                            if Callback and not Debounce then
                                Callback(Key.KeyCode);
                            end;
                        end;
                    end);
                    game.CoreGui.ChildRemoved:Connect(function(Child)
                        if tostring(Child)=='Ancestor'then 
                            pcall(function()
                                CallbackConnection:Disconnect();
                                InputConnection:Disconnect();
                            end);
                        end;
                    end);
                    UICorner_14.Parent = Input_2
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,47)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,51)
                end;

                function Elements:CreateTextbox(Name,Callback,Default,PlayerList,HelpToggled,HelpInfo,Clear)
                    local Textbox = Instance.new("Frame")
                    local UICorner_15 = Instance.new("UICorner")
                    local Title_6 = Instance.new("TextLabel")
                    local Input_3 = Instance.new("TextBox")
                    local UICorner_16 = Instance.new("UICorner")
                    Textbox.Name = "Textbox"
                    Textbox.Parent = Frame_2
                    Textbox.AnchorPoint = Vector2.new(0.5, 0.5)
                    Textbox.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    Textbox.BorderSizePixel = 0
                    Textbox.Position = UDim2.new(0.50896185, 0, 0.277372628, 0)
                    Textbox.Size = UDim2.new(1, 0, 0, 40)

                    UICorner_15.Parent = Textbox

                    Title_6.Name = "Title"
                    Title_6.Parent = Textbox
                    Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_6.BackgroundTransparency = 1.000
                    Title_6.Position = UDim2.new(0.0181086548, 0, 0.0500000007, 0)
                    Title_6.Size = UDim2.new(0.222422868, 0, 0, 35)
                    Title_6.Font = Enum.Font.GothamBold
                    Title_6.Text = Name
                    Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_6.TextSize = 14.000
                    Title_6.TextXAlignment = Enum.TextXAlignment.Left

                    Input_3.Name = "Input"
                    Input_3.Parent = Textbox
                    Input_3.AnchorPoint = Vector2.new(0.5, 0.5)
                    Input_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    Input_3.Position = UDim2.new(0.781981041, 0, 0.5, 0)
                    Input_3.Size = UDim2.new(0.366037965, 0, 0.5, 0)
                    Input_3.Font = Enum.Font.GothamBold
                    Input_3.Text =(PlayerList and tostring(game.Players.LocalPlayer))or Default-- or'...';
                    Input_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Input_3.TextSize = 14.000
                    if Clear then
                        Input_3.ClearTextOnFocus=false;
                    end;

                    Input_3.FocusLost:Connect(function()
                        if Input_3.Text==''then 
                            Input_3.Text=Default;
                            return
                        end;
                        if PlayerList then 
                            for _,Player in next,game.Players:GetPlayers()do 
                                if string.find(tostring(Player):lower(),Input_3.Text:lower())then 
                                    Input_3.Text=tostring(Player);
                                    if Callback then 
                                        return Callback(Player);
                                    end;
                                end;
                            end;
                            Input_3.Text=tostring(game.Players.LocalPlayer);
                            if Callback then 
                                return Callback(game.Players.LocalPlayer);
                            end;
                        end      
                        if Callback then 
                            return Callback(Input_3.Text);
                        end;      
                    end);
                    if HelpToggled then
                        local Help = Instance.new("TextButton")

                        local HelpFrame = Instance.new("Frame")
                        HelpSections[#HelpSections+1]=Help
                        local UICorner_9 = Instance.new("UICorner")
                        local TextLabel2 = Instance.new("TextLabel")
                        HelpFrame.Parent = Frame_2
                        HelpFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                        HelpFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
                        HelpFrame.BorderSizePixel = 0
                        HelpFrame.Position = UDim2.new(0.5, 0, 1, 0)
                        HelpFrame.Size = UDim2.new(0.980000019, 0, 0, 20)
                        HelpFrame.Visible=false;
                        UICorner_9.Parent=HelpFrame

                        TextLabel2.Parent = HelpFrame
                        TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.BackgroundTransparency = 1
                        TextLabel2.Position = UDim2.new(0.52, 0, 0.5, 0)
                        TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        TextLabel2.ZIndex = 2
                        TextLabel2.Font = Enum.Font.GothamBold
                        TextLabel2.Text = HelpInfo or 'Describe the feature here';
                        TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextSize = 12.000
                        TextLabel2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextWrapped = true
                        TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
                        Help.Name = "Help"
                        Help.Parent = Textbox
                        Help.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        Help.BackgroundTransparency = 1.000
                        Help.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        Help.BorderSizePixel = 0
                        Help.Position = UDim2.new(0.955999988, 0, 0.349999994, 0)
                        Help.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                        Help.AutoButtonColor = false
                        Help.Font = Enum.Font.GothamBold
                        Help.Text = "+"
                        Help.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Help.TextSize = 18.000
                        local Toggled=false;
                        Help.MouseButton1Click:Connect(function()
                            Toggled=not Toggled;
                            if Toggled then 
                                HelpFrame.Size = UDim2.new(0,0,0,0)
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=135}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0.980000019, 0, 0, 20)}):Play();
                                HelpFrame.Visible=true;
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size+UDim2.new(0,0,0,27)}):Play();
                                task.wait(.15);
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,30)}):Play();
                                TextLabel2.TextTransparency=0;
                            else
                                TextLabel2.TextTransparency=1;
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=0}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0,0,0,0)}):Play();
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size-UDim2.new(0,0,0,27)}):Play();
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize-UDim2.new(0,0,0,30)}):Play();
                                task.wait(.3)
                                HelpFrame.Visible=false
                            end;
                        end)
                    end;

                    UICorner_16.Parent = Input_3
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,47)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,51)
                end;

                function Elements:CreateDropDown(Callback,Options,Default,Playerlist)
                    local Dropdown = Instance.new("Frame")
                    local UICorner = Instance.new("UICorner")
                    local Input = Instance.new("TextBox")
                    local UICorner_2 = Instance.new("UICorner")
                    local MainButton = Instance.new("TextButton")
                    local UICorner_3 = Instance.new("UICorner")
                    local UICorner = Instance.new("UICorner")
                    local Frame = Instance.new("Frame")
                    local UICorner_2 = Instance.new("UICorner")
                    local TextBox = Instance.new("TextBox")
                    local UICorner_3 = Instance.new("UICorner")
                    local Toggle = Instance.new("TextButton")
                    local UICorner_4 = Instance.new("UICorner")
                    local ScrollingFrame2 = Instance.new("ScrollingFrame")
                    local Frame_3 = Instance.new("Frame")
                    local UIListLayout = Instance.new("UIListLayout")
                    local TextButton = Instance.new("Frame")
                    local UICorner_5 = Instance.new("UICorner")
                    local TextButton_2 = Instance.new("TextButton")
                    local UICorner_6 = Instance.new("UICorner")
                    local UICorner_7 = Instance.new("UICorner")

                    --Properties:

                    Dropdown.Name = "Dropdown"
                    Dropdown.Parent = Frame_2
                    Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
                    Dropdown.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    Dropdown.BorderSizePixel = 0
                    Dropdown.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                    Dropdown.Size = UDim2.new(1, 0, 0, 40)

                    UICorner.Parent = Dropdown

                    Input.Name = "Input"
                    Input.Parent = Dropdown
                    Input.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    Input.Position = UDim2.new(0.0179999992, 0, 0.25, 0)
                    Input.Size = UDim2.new(0.366037965, 0, 0.5, 0)
                    Input.Font = Enum.Font.GothamBold
                    Input.Text =(Options[1]~=nil and Default)or(PlayerDropType=='Both'and tostring(game.Players.LocalPlayer.DisplayName)..' @'..tostring(game.Players.LocalPlayer))or(PlayerDropType=='DisplayName'and tostring(game.Players.LocalPlayer))or(PlayerDropType=='UserName'and tostring(game.Players.LocalPlayer.DisplayName)or'None')
                    Input.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Input.TextSize = 14.000
                    Input.TextXAlignment = Enum.TextXAlignment.Left

                    UICorner_2.Parent = Input

                    MainButton.Name = "MainButton"
                    MainButton.Parent = Dropdown
                    MainButton.AnchorPoint = Vector2.new(0.5, 0.5)
                    MainButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                    MainButton.BackgroundTransparency = 1.000
                    MainButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    MainButton.BorderSizePixel = 0
                    MainButton.Position = UDim2.new(0.939274669, 0, 0.5, 0)
                    MainButton.Size = UDim2.new(0.0752862915, 0, 0.637499988, 0)
                    MainButton.AutoButtonColor = false
                    MainButton.Font = Enum.Font.GothamBold
                    MainButton.Text = "+"
                    MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    MainButton.TextSize = 22.000

                    UICorner_3.Parent = MainButton

                    ScrollingFrame2.Parent = Frame_2
                    ScrollingFrame2.Active = true
                    ScrollingFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
                    ScrollingFrame2.Visible = false;
                    ScrollingFrame2.BorderSizePixel = 0
                    ScrollingFrame2.BackgroundTransparency = 1
                    ScrollingFrame2.Position = UDim2.new(0.5, 0, 1.5, 0)
                    ScrollingFrame2.Size = UDim2.new(0, 470, 0.05, 5);
                    ScrollingFrame2.CanvasSize = UDim2.new(0, 450, 0.05, 1.3)
                    ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)

                    Frame_3.Parent = ScrollingFrame2
                    Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
                    Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Frame_3.BackgroundTransparency = 1
                    Frame_3.BorderSizePixel = 0
                    Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
                    Frame_3.Size = UDim2.new(0.95, 0, 0.98, 0)
                    local UIListLayout2=Instance.new'UIListLayout';
                    UIListLayout2.Parent = Frame_3
                    UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout2.Padding=UDim.new(0,2)
                    local UIC1=Instance.new'UICorner'UIC1.Parent=ScrollingFrame2

                    local Toggled=false;
                    local Total=0;
                    local Amount=0;
                    local Selected=0;
                    local Choices={};
                    local function AddOption(Name)
                        Amount=Amount+1
                        local TextButton = Instance.new("Frame")
                        local UICorner_5 = Instance.new("UICorner")
                        local TextButton_2 = Instance.new("TextButton")
                        local UICorner_6 = Instance.new("UICorner")
                        TextButton.Name = "TextButton"
                        TextButton.Parent = Frame_3
                        TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                        TextButton.BackgroundTransparency=1;
                        TextButton.BorderSizePixel = 0
                        TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
                        TextButton.Size =UDim2.new(0, 440, 0, 35)
                        TextButton.ZIndex = 0

                        UICorner_5.Parent = TextButton

                        TextButton_2.Parent = TextButton
                        TextButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextButton_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                        TextButton_2.BorderSizePixel = 0
                        TextButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                        TextButton_2.Size = UDim2.new(0.980000019, 0, 0.800000012, 0)
                        TextButton_2.ZIndex = -1
                        TextButton_2.Font = Enum.Font.GothamBold
                        TextButton_2.Text = Name
                        TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextButton_2.TextSize = 14.000
                        TextButton_2.TextWrapped = true
                        TextButton_2.AutoButtonColor=false;
                        TextButton_2.MouseButton1Click:Connect(function()

                            Selected=Selected+1;
                            TweenService:Create(MainButton,TweenInfo.new(0.3),{Rotation=0}):Play();
                            Input.Text=TextButton_2.Text;
                            if Callback then 
                                pcall(function()
                                    if Playerlist then 
                                        for i,v in next,game.Players:GetPlayers()do 
                                            if PlayerDropType=='Both'then
                                                if tostring(v)==tostring(TextButton_2.Text:split('@')[2])then 
                                                    Callback(tostring(v));
                                                end;
                                            elseif PlayerDropType=='DisplayName'then
                                                if tostring(v.DisplayName)==tostring(TextButton_2.Text)then 
                                                    Callback(tostring(v));
                                                end;
                                            elseif PlayerDropType=='UserName'then 
                                                if tostring(v)==tostring(TextButton_2.Text)then 
                                                    Callback(tostring(v));
                                                end;
                                            end;
                                        end;
                                        return;
                                    end;
                                    Callback(TextButton_2.Text);
                                end);
                            end;
                            Toggled=not Toggled
                            for i,v in next,Frame_3:GetChildren()do 
                                if tostring(v)=='TextButton'then 
                                    v:Destroy();
                                end;
                            end;

                            ScrollingFrame2.CanvasSize = UDim2.new(0, 450, 0.05, 1.3)
                            ScrollingFrame2.ScrollBarThickness=0;
                            TweenService:Create(ScrollingFrame2,TweenInfo.new(0.3),{Size = UDim2.new(0,0,0,0)}):Play();
                            TweenService:Create(ScrollingFrame_2, TweenInfo.new(0.3), {CanvasSize = ScrollingFrame_2.CanvasSize - UDim2.new(0,0,0,Total+210)}):Play();
                            TweenService:Create(Sections_2, TweenInfo.new(0.3), {Size = Sections_2.Size - UDim2.new(0,0,0,Total+80)}):Play();
                            Total=0;
                            task.wait(.3)

                            ScrollingFrame2.Size = UDim2.new(0, 470, 0.05, 5);
                            ScrollingFrame2.Visible = false;
                        end)

                        UICorner_6.Parent = TextButton_2;
                        ScrollingFrame2.CanvasSize = ScrollingFrame2.CanvasSize + UDim2.new(0,0,0,37)
                        if Amount<6 then
                            TweenService:Create(ScrollingFrame2,TweenInfo.new(0.3),{Size = ScrollingFrame2.Size + UDim2.new(0,0,0,150)}):Play();
                            Total=Total+25;
                        end;
                        -- ScrollingFrame.CanvasSize  = ScrollingFrame.CanvasSize  + UDim2.new(0,0,0,25)
                        -- ScrollingFrame2.Size=ScrollingFrame2.Size + UDim2.new(0,0,0,25)
                    end;
                    local function ToggleVis()
                        Toggled=not Toggled
                        if Toggled then
                            if Playerlist then 
                                Options={};
                                for i,v in next,game.Players:GetPlayers()do
                                    if PlayerDropType=='Both'then
                                        Options[#Options+1]=tostring(v.DisplayName..' @'..tostring(v));
                                    elseif PlayerDropType=='DisplayName'then
                                        Options[#Options+1]=tostring(v.DisplayName);
                                    elseif PlayerDropType=='UserName'then 
                                        Options[#Options+1]=tostring(v);
                                    end;
                                end;
                            end;
                            TweenService:Create(MainButton,TweenInfo.new(0.3),{Rotation=135}):Play();
                            TweenService:Create(ScrollingFrame_2, TweenInfo.new(0.05), {CanvasSize = ScrollingFrame_2.CanvasSize + UDim2.new(0,0,0,150)}):Play();
                            ScrollingFrame2.Visible=true;
                            ScrollingFrame2.Size=UDim2.new(0,0,0,0);
                            ScrollingFrame2.ScrollBarThickness=0;
                            local Anim=TweenService:Create(ScrollingFrame2, TweenInfo.new(0.05), {Size = UDim2.new(0, 470, 0.05, 5)}):Play();
                            repeat task.wait()until ScrollingFrame2.Size==UDim2.new(0, 470, 0.05, 5)
                            if Options then 
                                for i,v in next,Options do 
                                    AddOption(v);
                                end;
                            end;
                            Amount=0;
                            TweenService:Create(ScrollingFrame_2, TweenInfo.new(0.3), {CanvasSize = ScrollingFrame_2.CanvasSize + UDim2.new(0,0,0,Total+60)}):Play();
                            TweenService:Create(Sections_2, TweenInfo.new(0.3), {Size = Sections_2.Size + UDim2.new(0,0,0,Total+80)}):Play();
                            task.wait(.1)
                            ScrollingFrame2.ScrollBarThickness=3;
                        else
                            for i,v in next,Frame_3:GetChildren()do 
                                if tostring(v)=='TextButton'then 
                                    v:Destroy();
                                end;
                            end;
                            TweenService:Create(MainButton,TweenInfo.new(0.3),{Rotation=0}):Play();
                            TweenService:Create(ScrollingFrame_2, TweenInfo.new(0.3), {CanvasSize = ScrollingFrame_2.CanvasSize - UDim2.new(0,0,0,Total+210)}):Play();
                            TweenService:Create(Sections_2, TweenInfo.new(0.3), {Size = Sections_2.Size - UDim2.new(0,0,0,Total+80)}):Play();
                            Total=0;
                            ScrollingFrame2.CanvasSize = UDim2.new(0, 450, 0.05, 1.3)
                            ScrollingFrame2.ScrollBarThickness=0;
                            TweenService:Create(ScrollingFrame2,TweenInfo.new(0.3),{Size = UDim2.new(0,0,0,0)}):Play();
                            task.wait(.3)
                            ScrollingFrame2.Size = UDim2.new(0, 470, 0.05, 5);
                            ScrollingFrame2.Visible = false;
                        end;
                    end;

                    local function TextChanged()
                        if not Toggled then
                            ToggleVis();
                            return
                        end;
                        TweenService:Create(ScrollingFrame2,TweenInfo.new(0.1),{CanvasPosition=Vector2.new(0,0)}):Play();
                        local Text=Input.Text:lower();
                        local list=Frame_3:GetChildren()
                        for i,v in next,list do 
                            if tostring(v)=='TextButton'then 
                                if not string.find(v.TextButton.Text:lower(),Text)then 
                                    v.Visible=false;
                                elseif string.find(v.TextButton.Text:lower(),Text)or Text==''then
                                    v.Visible=true;
                                end;
                            end;
                        end;
                    end;
                    MainButton.MouseButton1Click:Connect(ToggleVis);
                    Input:GetPropertyChangedSignal'Text':Connect(TextChanged)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,56)
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,43)
                end;
                function Elements:CreateSlider(Name,CallBack,Min,Max,Default,HelpToggled,HelpInfo,Header)
                    local SliderTable={};
                    local Slider = Instance.new("Frame")
                    local UICorner_4 = Instance.new("UICorner")
                    local Title_2 = Instance.new("TextLabel")
                    local Plus = Instance.new("TextButton")
                    local Minus = Instance.new("TextButton")
                    local Input = Instance.new("TextBox")
                    local UICorner_5 = Instance.new("UICorner")
                    local MainSlider = Instance.new("TextButton")
                    local UICorner_6 = Instance.new("UICorner")
                    local Background = Instance.new("TextButton")
                    local UICorner_7 = Instance.new("UICorner")
                    Slider.Name = "Slider"
                    Slider.Parent = Frame_2
                    Slider.AnchorPoint = Vector2.new(0.5, 0.5)
                    Slider.BackgroundColor3 = Color3.fromRGB(10,10, 10)
                    Slider.BorderSizePixel = 0
                    Slider.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                    Slider.Size = UDim2.new(1, 0, 0, 40)

                    UICorner_4.Parent = Slider

                    Title_2.Name = "Title"
                    Title_2.Parent = Slider
                    Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Title_2.BackgroundTransparency = 1.000
                    Title_2.Position = UDim2.new(0.0181086548, 0, 0.0500000007, 0)
                    Title_2.Size = UDim2.new(0.222422868, 0, 0, 35)
                    Title_2.Font = Enum.Font.GothamBold
                    Title_2.Text = Name;
                    Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Title_2.TextSize = 14.000
                    Title_2.TextXAlignment = Enum.TextXAlignment.Left

                    Plus.Name = "Plus"
                    Plus.Parent = Slider
                    Plus.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    Plus.BackgroundTransparency = 1.000
                    Plus.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    Plus.BorderSizePixel = 0
                    Plus.Position = UDim2.new(0.829999983, 0, 0.349999994, 0)
                    Plus.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                    Plus.AutoButtonColor = false
                    Plus.Font = Enum.Font.GothamBold
                    Plus.Text = "+"
                    Plus.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Plus.TextSize = 16.000

                    if Header then 

                        local Slider = Instance.new("Frame")
                        local UICorner_4 = Instance.new("UICorner")
                        local Title_2 = Instance.new("TextLabel")
                        Slider.Name = "Slider"
                        Slider.Parent = Frame_2
                        Slider.AnchorPoint = Vector2.new(0.5, 0.5)
                        Slider.BackgroundColor3 = Color3.fromRGB(10,10, 10)
                        Slider.BorderSizePixel = 0
                        Slider.Position = UDim2.new(0.507896185, 0, 0.277372628, 0)
                        Slider.Size = UDim2.new(1, 0, 0, 25)
                        UICorner_4.Parent = Slider

                        Title_2.Name = "Title"
                        Title_2.Parent = Slider
                        Title_2.AnchorPoint = Vector2.new(0.5, 0.5)
                        Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Title_2.BackgroundTransparency = 1.000
                        Title_2.Position = UDim2.new(0.5, 0, 0.5, 0)
                        Title_2.Size = UDim2.new(0.222422868, 0, 0, 35)
                        Title_2.Font = Enum.Font.GothamBold
                        Title_2.Text = '';
                        Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Title_2.TextSize = 14.000
                        Title_2.TextXAlignment = Enum.TextXAlignment.Center
                        Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,27)
                        function SliderTable:UpdateHeader(Text)
                            Title_2.Text=Text;
                        end;
                    end;

                    if HelpToggled then
                        local Help = Instance.new("TextButton")

                        local HelpFrame = Instance.new("Frame")
                        HelpSections[#HelpSections+1]=Help
                        local UICorner_9 = Instance.new("UICorner")
                        local TextLabel2 = Instance.new("TextLabel")
                        HelpFrame.Parent = Frame_2
                        HelpFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                        HelpFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
                        HelpFrame.BorderSizePixel = 0
                        HelpFrame.Position = UDim2.new(0.5, 0, 1, 0)
                        HelpFrame.Size = UDim2.new(0.980000019, 0, 0, 20)
                        HelpFrame.Visible=false;
                        UICorner_9.Parent=HelpFrame

                        TextLabel2.Parent = HelpFrame
                        TextLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
                        TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.BackgroundTransparency = 1
                        TextLabel2.Position = UDim2.new(0.52, 0, 0.5, 0)
                        TextLabel2.Size = UDim2.new(1, 0, 1, 0)
                        TextLabel2.ZIndex = 2
                        TextLabel2.Font = Enum.Font.GothamBold
                        TextLabel2.Text = HelpInfo or 'Describe the feature here';
                        TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextSize = 12.000
                        TextLabel2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel2.TextWrapped = true
                        TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
                        Help.Name = "Help"
                        Help.Parent = Slider
                        Help.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        Help.BackgroundTransparency = 1.000
                        Help.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        Help.BorderSizePixel = 0
                        Help.Position = UDim2.new(0.955999988, 0, 0.349999994, 0)
                        Help.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                        Help.AutoButtonColor = false
                        Help.Font = Enum.Font.GothamBold
                        Help.Text = "+"
                        Help.TextColor3 = Color3.fromRGB(255, 255, 255)
                        Help.TextSize = 18.000
                        TextLabel2.TextTransparency=0;
                        local Toggled=false;
                        Help.MouseButton1Click:Connect(function()
                            Toggled=not Toggled;
                            if Toggled then 
                                HelpFrame.Size = UDim2.new(0,0,0,0)
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=135}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0.980000019, 0, 0, 20)}):Play();
                                HelpFrame.Visible=true;
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,30)}):Play();
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size+UDim2.new(0,0,0,27)}):Play();
                                task.wait(.15);
                                TextLabel2.TextTransparency=0;
                            else
                                TextLabel2.TextTransparency=1;
                                TweenService:Create(Help,TweenInfo.new(0.3),{Rotation=0}):Play();
                                TweenService:Create(HelpFrame,TweenInfo.new(0.3),{Size=UDim2.new(0,0,0,0)}):Play();
                                TweenService:Create(ScrollingFrame_2,TweenInfo.new(0.3),{CanvasSize=ScrollingFrame_2.CanvasSize-UDim2.new(0,0,0,30)}):Play();
                                TweenService:Create(Sections_2,TweenInfo.new(0.3),{Size=Sections_2.Size-UDim2.new(0,0,0,27)}):Play();
                                task.wait(.3)
                                HelpFrame.Visible=false
                            end;
                        end)
                    end;

                    Minus.Name = "Minus"
                    Minus.Parent = Slider
                    Minus.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    Minus.BackgroundTransparency = 1.000
                    Minus.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    Minus.BorderSizePixel = 0
                    Minus.Position = UDim2.new(0.189999998, 0, 0.349999994, 0)
                    Minus.Size = UDim2.new(0.0458574817, 0, 0.300000012, 0)
                    Minus.AutoButtonColor = false
                    Minus.Font = Enum.Font.GothamBold
                    Minus.Text = "-"
                    Minus.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Minus.TextSize = 16.000

                    Input.Name = "Input"
                    Input.Parent = Slider
                    Input.AnchorPoint = Vector2.new(0.5, 0.5)
                    Input.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    Input.Position = UDim2.new(0.911233585, 0, 0.5, 0)
                    Input.Size = UDim2.new(0.087533094, 0, 0.5, 0)
                    Input.Font = Enum.Font.GothamBold
                    Input.Text = Min
                    Input.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Input.TextSize = 14.000

                    UICorner_5.Parent = Input

                    Background.Name = "Background"
                    Background.Parent = Slider
                    Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    Background.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    Background.BorderSizePixel = 0
                    Background.Position = UDim2.new(0.230000004, 0, 0.349999994, 0)
                    Background.Size = UDim2.new(0.600000024, 0, 0.300000012, 0)
                    Background.AutoButtonColor = false
                    Background.Font = Enum.Font.SourceSans
                    Background.Text = ""
                    Background.TextColor3 = Color3.fromRGB(0, 0, 0)
                    Background.TextSize = 14.000

                    MainSlider.Name = "MainSlider"
                    MainSlider.AnchorPoint=Vector2.new(0,.5)
                    MainSlider.Parent = Background
                    MainSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    MainSlider.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    MainSlider.BorderSizePixel = 0
                    MainSlider.Position = UDim2.new(0, 0, .5, 0)
                    MainSlider.Size = UDim2.new(0, 0, 1, 0)
                    MainSlider.ZIndex = 2
                    MainSlider.AutoButtonColor = false
                    MainSlider.Font = Enum.Font.SourceSans
                    MainSlider.Text = ""
                    MainSlider.TextColor3 = Color3.fromRGB(0, 0, 0)
                    MainSlider.TextSize = 14.000

                    UICorner_6.Parent = MainSlider

                    UICorner_7.Parent = Background
                    Sections_2.Size=Sections_2.Size+UDim2.new(0,0,0,47)
                    ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,51)

                    local LastSaved= Min or '100';
                    task.spawn(function()
                        while task.wait()do
                            if #Input.Text==4 then 
                                Input.Text=''
                            end;
                            Input.Size=UDim2.new(0,(#Input.Text<=1 and 25)or #Input.Text*14.5, .5, 0);
                        end; 
                    end);

                    local Mouse=game.Players.LocalPlayer:GetMouse();

                    local function Set(Value,Slower)
                        task.spawn(function()
                            if Slower then
                                Speed=.2;
                            else
                                Speed=0.04;
                            end;
                            if not Value or not typeof(Value)=='number'then return end;
                            if Value>Max then 
                                Value=Max;
                            end;
                            if Value<Min then 
                                Value=Min;
                            end;
                            if Value==Min then 
                                TweenService:Create(MainSlider,TweenInfo.new(Speed),{Size=UDim2.new(0, 0, 1, 0)}):Play();
                            else
                                TweenService:Create(MainSlider,TweenInfo.new(Speed),{Size=UDim2.new((Value/Max), 0, 1, 0)}):Play()
                            end;
                            Input.Text=Value;
                            if CallBack then
                                pcall(function()
                                    CallBack(Value)
                                end);
                            end;
                            LastSaved=Value;
                        end);
                    end;
                    function SliderTable:Set(Value)
                        Set(Value,true)
                    end;
                    Minus.MouseButton1Down:Connect(function()
                        task.spawn(function()
                            TweenService:Create(Minus,TweenInfo.new(.1),{TextSize=0}):Play();
                            task.wait(0.05);
                            TweenService:Create(Minus,TweenInfo.new(0.1),{TextSize=22}):Play();
                        end);
                        Set(tonumber(Input.Text)-1,true)
                    end)
                    Plus.MouseButton1Down:Connect(function()
                        task.spawn(function()
                            TweenService:Create(Plus,TweenInfo.new(.1),{TextSize=0}):Play();
                            task.wait(0.05);
                            TweenService:Create(Plus,TweenInfo.new(0.1),{TextSize=18}):Play();
                        end);
                        Set(tonumber(Input.Text)+1,true)
                    end);
                    if Default then 
                        Set(Default);
                    end;
                    Input.FocusLost:Connect(function()
                        if Input.Text==''or not tonumber(Input.Text)then
                            Input.Text=LastSaved;
                            return
                        end
                        Set(tonumber(Input.Text),true)
                    end);
                    local Mouse=game.Players.LocalPlayer:GetMouse();
                    function func()
                        local connection=game:GetService("RunService").RenderStepped:Connect(function()
                            local Scale=math.clamp(Mouse.X -Background.AbsolutePosition.X,0,Background.AbsoluteSize.X) / Background.AbsoluteSize.X
                            slidervalue=math.floor(Min + ((Max-Min) * Scale))
                            Input.Text = tostring(slidervalue)
                            TweenService:Create(MainSlider,TweenInfo.new(0.04),{Size=UDim2.new(Scale,0,1,0)}):Play()
                            if CallBack then
                                CallBack(slidervalue)
                            end
                        end)
                        game:GetService'UserInputService'.InputEnded:Connect(function(i)
                            if i.UserInputType == Enum.UserInputType.MouseButton1 then
                                if connection then
                                    connection:Disconnect()
                                    connection = nil
                                end
                            end
                        end)
                    end;
                    Background.MouseButton1Down:Connect(func);
                    MainSlider.MouseButton1Down:Connect(func);
                    return SliderTable;
                end;
                return Elements;
            end;
            return Elements
        end;
        return Tab
    end;
    ImageButton_2.Parent = Categories
    ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_2.BackgroundTransparency = 1.000
    ImageButton_2.BorderSizePixel = 0
    ImageButton_2.Position = UDim2.new(0, 0, 0,-10)
    ImageButton_2.Size = UDim2.new(1, 0, 0.35, 0)
    ImageButton_2.AutoButtonColor = false
    ImageButton_2.Image = "rbxassetid://12752031602"
    ImageButton_2.ImageColor3 = Color3.fromRGB(0, 122, 255)
    ImageButton_2.Active = false


    local SearchFrame = Instance.new("ScrollingFrame")
    local UIListLayout_99 = Instance.new("UIListLayout")

    SearchFrame.Parent = Sections
    SearchFrame.Active = true
    SearchFrame.Visible=    false;
    SearchFrame.Name='Search'
    SearchFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    SearchFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SearchFrame.BackgroundTransparency = 1
    SearchFrame.Position = UDim2.new(0.615, 0, 0.5, 0)
    SearchFrame.Size = UDim2.new(0.709999979, 0, 0.949999988, 0)
    SearchFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    SearchFrame.BorderSizePixel=0;
    SearchFrame.ScrollBarThickness=0;
    SearchFrame.ScrollBarImageColor3=Color3.fromRGB(255,255,255)

    -- ScrollingFrame_2.CanvasSize=ScrollingFrame_2.CanvasSize+UDim2.new(0,0,0,40)
    local Frame_2 = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Sections_2 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local UIListLayout_3 = Instance.new("UIListLayout")
    Sections_2.Name = "Sections"
    Sections_2.Parent = SearchFrame
    Sections_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Sections_2.Size = UDim2.new(0.996447325, 0, 0, 0)

    UICorner_3.Parent = Sections_2
    Frame_2.Parent = Sections_2
    Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_2.BackgroundTransparency = 0
    Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame_2.Size = UDim2.new(0.971540928, 0, 1, 0)
    UIListLayout_3.Parent = Frame_2
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 5)

    UIListLayout_99.Parent = SearchFrame
    UIListLayout_99.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_99.Padding = UDim.new(0.0199999996, 0)


    -- TextBox.Parent = Categories
    -- TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
    -- TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    -- TextBox.Position = UDim2.new(0.5, 0, 0.259999999, 0)
    -- TextBox.Size = UDim2.new(0.800000012, 0, 0.0399999991, 0)
    -- TextBox.Font = Enum.Font.GothamBold
    -- TextBox.Text = "Search..."
    -- TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    -- TextBox.TextSize = 12.000
    -- local OldParents={};
    local function Close()
        if TextBox.Text==''then 
            OldParents={};
            TextBox.Text='Search...';
            CurrentTab.Visible=true;
            for i,v in next,OldParents do 
                i.Parent=v;
            end;
            return;
        end;
    end;
    local function Search()
        -- if TextBox.Text==''then return end
        -- for i,v in next,game.CoreGui.Ancestor.MainFrame.Sections:GetDescendants()do 
        --     if v:IsA'TextButton'or v:IsA'TextLabel'and tostring(v.Parent)~='Frame'then 
        --         if v.Text~=' 'and v.Text~=''and v.Text~='+'and v.Text~='-'then
        --             if string.find(v.Text:lower(),TextBox.Text:lower())then
        --                 CurrentTab.Visible=false;
        --                 v.Visible=true;
        --                 SearchFrame.Visible=true;
        --                 OldParents[v.Parent.Parent]=v.Parent;
        --                 v.Parent.Parent=Frame_2;
        --             else
        --                 v.Visible=false;
        --                 SearchFrame.Visible=false;
        --             end;
        --         end;
        --     end;
        -- end;
    end;
    TextBox:GetPropertyChangedSignal'Text':Connect(Search)
    TextBox.FocusLost:Connect(Close)

    UICorner.Parent = TextBox

    UICorner_2.Parent = Categories
    UICorner_2.CornerRadius=UDim.new(0,6)
    return AncestorFunctions;
end;
return Library
