local canclick = true
local hasGamepass = nil
local MarketPlaceService = game:GetService("MarketplaceService")
game.ReplicatedStorage.StartRide2.OnServerEvent:Connect(function(plr, speed)
   local function tweentheRest()
       -- Objects
       local cart = game.Workspace.Cart2.Cart
       local seat = game.Workspace.Cart2.Seat1
       local seat2 = game.Workspace.Cart2.Seat2
       
       -- Properties
       local tweenService = game:GetService("TweenService")
       local propertiesGG1 = {Position = Vector3.new(170.407, 38.004, -230.977), Orientation = Vector3.new(-21.835, 71.434, -0.527)} -- For the Cart
       local propertiesGG2 = {Position = Vector3.new(172.778, 38.886, -230.18), Orientation = Vector3.new(-21.832, 71.434, -0.53)} -- For the Seat1
       local propertiesGG3 = {Position = Vector3.new(170.314, 37.844, -231.007), Orientation = Vector3.new(-21.832, 71.434, -0.53)} -- For the Seat2
       local propertiesHH1 = {Position = Vector3.new(152.788, 27.017, -237.551), Orientation = Vector3.new(-31.769, 65.68, 7.079)} -- For the Cart
       local propertiesHH2 = {Position = Vector3.new(154.9, 28.318, -236.611), Orientation = Vector3.new(-31.766, 65.681, 7.076)} -- For the Seat1
       local propertiesHH3 = {Position = Vector3.new(152.731, 26.844, -237.592), Orientation = Vector3.new(-31.766, 65.681, 7.076)} -- For the Seat2
       local propertiesII1 = {Position = Vector3.new(138.911, 16.177, -241.463), Orientation = Vector3.new(-41.303, 97.1, -9.776)} -- For the Cart
       local propertiesII2 = {Position = Vector3.new(140.962, 17.844, -241.699), Orientation = Vector3.new(-41.3, 97.1, -9.778)} -- For the Seat1
       local propertiesII3 = {Position = Vector3.new(138.874, 15.996, -241.439), Orientation = Vector3.new(-41.3, 97.1, -9.778)} -- For the Seat2
       local propertiesJJ1 = {Position = Vector3.new(131.905, 11.856, -239.305), Orientation = Vector3.new(-16.636, 113.204, -16.303)} -- For the Cart
       local propertiesJJ2 = {Position = Vector3.new(134.28, 12.512, -240.289), Orientation = Vector3.new(-16.633, 113.204, -16.305)} -- For the Seat1
       local propertiesJJ3 = {Position = Vector3.new(131.814, 11.711, -239.232), Orientation = Vector3.new(-16.633, 113.204, -16.305)} -- For the Seat2
       local propertiesKK1 = {Position = Vector3.new(119.173, 10.926, -235.231), Orientation = Vector3.new(-2.347, 107.433, -11.661)} -- For the Cart
       local propertiesKK2 = {Position = Vector3.new(121.711, 10.925, -236.004), Orientation = Vector3.new(-2.345, 107.432, -11.664)} -- For the Seat1
       local propertiesKK3 = {Position = Vector3.new(119.042, 10.81, -235.166), Orientation = Vector3.new(-2.345, 107.432, -11.664)} -- For the Seat2
       local propertiesLL1 = {Position = Vector3.new(96.036, 9.853, -227.949), Orientation = Vector3.new(-2.347, 107.433, -11.661)} -- For the Cart
       local propertiesLL2 = {Position = Vector3.new(98.573, 9.852, -228.722), Orientation = Vector3.new(-2.345, 107.432, -11.664)} -- For the Seat1
       local propertiesLL3 = {Position = Vector3.new(95.904, 9.737, -227.884), Orientation = Vector3.new(-2.345, 107.432, -11.664)} -- For the Seat2
       local propertiesNN1 = {Position = Vector3.new(78.848, 9.666, -219.253), Orientation = Vector3.new(6.445, 141.559, -1.096)} -- For the Cart
       local propertiesNN2 = {Position = Vector3.new(80.479, 9.258, -221.305), Orientation = Vector3.new(6.448, 141.559, -1.099)} -- For the Seat1
       local propertiesNN3 = {Position = Vector3.new(78.749, 9.572, -219.125), Orientation = Vector3.new(6.448, 141.559, -1.099)} -- For the Seat2
       local propertiesOO1 = {Position = Vector3.new(71.369, 9.962, -209.798), Orientation = Vector3.new(-8.553, 141.845, -1.102)} -- For the Cart
       local propertiesOO2 = {Position = Vector3.new(73, 10.245, -211.87), Orientation = Vector3.new(-8.55, 141.845, -1.104)} -- For the Seat1
       local propertiesOO3 = {Position = Vector3.new(71.289, 9.829, -209.693), Orientation = Vector3.new(-8.55, 141.845, -1.104)} -- For the Seat2
       local propertiesPP1 = {Position = Vector3.new(68.782, 9.372, -196.302), Orientation = Vector3.new(-2.253, -168.326, -0.606)} -- For the Cart
       local propertiesPP2 = {Position = Vector3.new(68.247, 9.364, -198.9), Orientation = Vector3.new(-2.251, -168.326, -0.609)} -- For the Seat1
       local propertiesPP3 = {Position = Vector3.new(68.813, 9.254, -196.16), Orientation = Vector3.new(-2.251, -168.326, -0.609)} -- For the Seat2
       local propertiesQQ1 = {Position = Vector3.new(71.166, 9.292, -188.528), Orientation = Vector3.new(-2.02, -153.317, -6.169)} -- For the Cart
       local propertiesQQ2 = {Position = Vector3.new(69.986, 9.274, -190.904), Orientation = Vector3.new(-2.017, -153.317, -6.172)} -- For the Seat1
       local propertiesQQ3 = {Position = Vector3.new(71.242, 9.176, -188.403), Orientation = Vector3.new(-2.017, -153.317, -6.172)} -- For the Seat2
       local propertiesRR1 = {Position = Vector3.new(75.221, 8.895, -180.839), Orientation = Vector3.new(-6.99, -152.776, -6.212)} -- For the Cart
       local propertiesRR2 = {Position = Vector3.new(74.023, 9.107, -183.196), Orientation = Vector3.new(-6.988, -152.777, -6.215)} -- For the Seat1
       local propertiesRR3 = {Position = Vector3.new(75.294, 8.767, -180.724), Orientation = Vector3.new(-6.988, -152.777, -6.215)} -- For the Seat2
       local propertiesSS1 = {Position = Vector3.new(81.118, 6.387, -174.506), Orientation = Vector3.new(-19.1, -137.027, -6.62)} -- For the Cart
       local propertiesSS2 = {Position = Vector3.new(79.396, 7.149, -176.374), Orientation = Vector3.new(-19.097, -137.027, -6.623)} -- For the Seat1
       local propertiesSS3 = {Position = Vector3.new(81.2, 6.233, -174.438), Orientation = Vector3.new(-19.097, -137.027, -6.623)} -- For the Seat2
       local propertiesTT1 = {Position = Vector3.new(88.073, 3.993, -169.907), Orientation = Vector3.new(-10.659, -118.874, -15.493)} -- For the Cart
       local propertiesTT2 = {Position = Vector3.new(85.79, 4.378, -171.201), Orientation = Vector3.new(-10.657, -118.875, -15.496)} -- For the Seat1
       local propertiesTT3 = {Position = Vector3.new(88.2, 3.86, -169.872), Orientation = Vector3.new(-10.657, -118.875, -15.496)} -- For the Seat2
       local propertiesUU1 = {Position = Vector3.new(99.35, 4.64, -166.71), Orientation = Vector3.new(15, -90, 0)} -- For the Cart
       local propertiesUU2 = {Position = Vector3.new(96.819, 3.846, -166.71), Orientation = Vector3.new(15.003, -90, -0.003)} -- For the Seat1
       local propertiesUU3 = {Position = Vector3.new(99.524, 4.571, -166.71), Orientation = Vector3.new(15.003, -90, -0.003)} -- For the Seat2
       
       -- Ride styles
       local tweenInfo = TweenInfo.new(
           0.3 / speed,
           Enum.EasingStyle.Quint,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local uppie1 = TweenInfo.new(
           4 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local uppie2 = TweenInfo.new(
           1 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local uppie3 = TweenInfo.new(
           0.5 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local restwayup = TweenInfo.new(
           2 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local styledownwardfast = TweenInfo.new(
           0.1 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local styledownwardfaststyle2 = TweenInfo.new(
           0.15 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )

       local sharpturnstyle = TweenInfo.new(
           0.2 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0
       )
       local circlemotion = TweenInfo.new(
           0.2 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0   
       )
       local sharpwayforward = TweenInfo.new(
           0.2 / speed,
           Enum.EasingStyle.Linear,
           Enum.EasingDirection.In,
           0,
           false,
           0   
       )
       local slowrailing = TweenInfo.new(
           2 / speed,
           Enum.EasingStyle.Cubic,
           Enum.EasingDirection.In,
           0,
           false,
           0   
       )
       local normalrailing = TweenInfo.new(
           1 / speed,
           Enum.EasingStyle.Cubic,
           Enum.EasingDirection.In,
           0,
           false,
           0   
       )
       
       
       -- Tweenparts
       local tweenGG1 = tweenService:Create(cart, sharpwayforward, propertiesGG1)
       local tweenGG2 = tweenService:Create(seat, sharpwayforward, propertiesGG2)
       local tweenGG3 = tweenService:Create(seat2, sharpwayforward, propertiesGG3)
       local tweenHH1 = tweenService:Create(cart, styledownwardfast, propertiesHH1)
       local tweenHH2 = tweenService:Create(seat, styledownwardfast, propertiesHH2)
       local tweenHH3 = tweenService:Create(seat2, styledownwardfast, propertiesHH3)
       local tweenII1 = tweenService:Create(cart, styledownwardfast, propertiesII1)
       local tweenII2 = tweenService:Create(seat, styledownwardfast, propertiesII2)
       local tweenII3 = tweenService:Create(seat2, styledownwardfast, propertiesII3)
       local tweenJJ1 = tweenService:Create(cart, styledownwardfast, propertiesJJ1)
       local tweenJJ2 = tweenService:Create(seat, styledownwardfast, propertiesJJ2)
       local tweenJJ3 = tweenService:Create(seat2, styledownwardfast, propertiesJJ3)
       local tweenKK1 = tweenService:Create(cart, sharpwayforward, propertiesKK1)
       local tweenKK2 = tweenService:Create(seat, sharpwayforward, propertiesKK2)
       local tweenKK3 = tweenService:Create(seat2, sharpwayforward, propertiesKK3)
       local tweenLL1 = tweenService:Create(cart, sharpwayforward, propertiesLL1)
       local tweenLL2 = tweenService:Create(seat, sharpwayforward, propertiesLL2)
       local tweenLL3 = tweenService:Create(seat2, sharpwayforward, propertiesLL3)
       local tweenMM1 = tweenService:Create(cart, sharpwayforward, {Position = Vector3.new(83.693, 9.205, -224.048)})
       local tweenMM2 = tweenService:Create(seat, sharpwayforward, {Position = Vector3.new(86.231, 9.204, -224.821)})
       local tweenMM3 = tweenService:Create(seat2, sharpwayforward, {Position = Vector3.new(83.562, 9.089, -223.983)})
       local tweenNN1 = tweenService:Create(cart, sharpturnstyle, propertiesNN1)
       local tweenNN2 = tweenService:Create(seat, sharpturnstyle, propertiesNN2)
       local tweenNN3 = tweenService:Create(seat2, sharpturnstyle, propertiesNN3)
       local tweenOO1 = tweenService:Create(cart, sharpturnstyle, propertiesOO1)
       local tweenOO2 = tweenService:Create(seat, sharpturnstyle, propertiesOO2)
       local tweenOO3 = tweenService:Create(seat2, sharpturnstyle, propertiesOO3)
       local tweenPP1 = tweenService:Create(cart, sharpturnstyle, propertiesPP1)
       local tweenPP2 = tweenService:Create(seat, sharpturnstyle, propertiesPP2)
       local tweenPP3 = tweenService:Create(seat2, sharpturnstyle, propertiesPP3)
       local tweenQQ1 = tweenService:Create(cart, slowrailing, propertiesQQ1)
       local tweenQQ2 = tweenService:Create(seat, slowrailing, propertiesQQ2)
       local tweenQQ3 = tweenService:Create(seat2, slowrailing, propertiesQQ3)
       local tweenRR1 = tweenService:Create(cart, slowrailing, propertiesRR1)
       local tweenRR2 = tweenService:Create(seat, slowrailing, propertiesRR2)
       local tweenRR3 = tweenService:Create(seat2, slowrailing, propertiesRR3)
       local tweenSS1 = tweenService:Create(cart, normalrailing, propertiesSS1)
       local tweenSS2 = tweenService:Create(seat, normalrailing, propertiesSS2)
       local tweenSS3 = tweenService:Create(seat2, normalrailing, propertiesSS3)
       local tweenTT1 = tweenService:Create(cart, tweenInfo, propertiesTT1)
       local tweenTT2 = tweenService:Create(seat, tweenInfo, propertiesTT2)
       local tweenTT3 = tweenService:Create(seat2, tweenInfo, propertiesTT3)
       local tweenUU1 = tweenService:Create(cart, tweenInfo, propertiesUU1)
       local tweenUU2 = tweenService:Create(seat, tweenInfo, propertiesUU2)
       local tweenUU3 = tweenService:Create(seat2, tweenInfo, propertiesUU3)
       
       -- Playing tween parts with chosen speed
       tweenGG1:Play()
       tweenGG2:Play()
       tweenGG3:Play()
       wait(0.2 / speed)
       tweenHH1:Play()
       tweenHH2:Play()
       tweenHH3:Play()
       wait(0.1 / speed)
       tweenII1:Play()
       tweenII2:Play()
       tweenII3:Play()
       wait(0.1 / speed)
       tweenJJ1:Play()
       tweenJJ2:Play()
       tweenJJ3:Play()
       wait(0.1 / speed)
       tweenKK1:Play()
       tweenKK2:Play()
       tweenKK3:Play()
       wait(0.2 / speed)
       tweenLL1:Play()
       tweenLL2:Play()
       tweenLL3:Play()
       wait(0.2 / speed)
       tweenMM1:Play()
       tweenMM2:Play()
       tweenMM3:Play()
       wait(0.2 / speed)
       tweenNN1:Play()
       tweenNN2:Play()
       tweenNN3:Play()
       wait(0.2 / speed)
       tweenOO1:Play()
       tweenOO2:Play()
       tweenOO3:Play()
       wait(0.2 / speed)
       tweenPP1:Play()
       tweenPP2:Play()
       tweenPP3:Play()
       wait(0.2 / speed)
       tweenQQ1:Play()
       tweenQQ2:Play()
       tweenQQ3:Play()
       wait(2 / speed)
       tweenRR1:Play()
       tweenRR2:Play()
       tweenRR3:Play()
       wait(2 / speed)
       tweenSS1:Play()
       tweenSS2:Play()
       tweenSS3:Play()
       wait(1 / speed)
       tweenTT1:Play()
       tweenTT2:Play()
       tweenTT3:Play()
       wait(0.1 / speed)
       tweenUU1:Play()
       tweenUU2:Play()
       tweenUU3:Play()
       canclick = true
   end

   local function StartRide()
       -- Checks if ride has already started
       if canclick then
           canclick = false
           -- Objects
           local cart = game.Workspace.Cart2.Cart
           local seat = game.Workspace.Cart2.Seat1
           local seat2 = game.Workspace.Cart2.Seat2
           local tweenService = game:GetService("TweenService")
           
           
           -- Ride styles
           
           local tweenInfo = TweenInfo.new(
               2 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0
           )
           local uppie1 = TweenInfo.new(
               4 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0
           )
           local uppie2 = TweenInfo.new(
               1 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0
           )
           local uppie3 = TweenInfo.new(
               0.5 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0
           )
           local restwayup = TweenInfo.new(
               2 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0
           )
           local styledownwardfast = TweenInfo.new(
               0.2 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0   
           )
           local styledownwardfaststyle2 = TweenInfo.new(
               0.15 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0   
           )
           local sharpturnstyle = TweenInfo.new(
               0.2 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0   
           )
           local circlemotion = TweenInfo.new(
               0.2 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0   
           )
           local sharpwayforward = TweenInfo.new(
               0.2 / speed,
               Enum.EasingStyle.Linear,
               Enum.EasingDirection.In,
               0,
               false,
               0   
           )
           
           -- Properties
           local propertiesB1 = {Position = Vector3.new(116.691, 10.887, -166.71), Orientation = Vector3.new(40, -90, 0)}
           local propertiesB2 = {Position = Vector3.new(114.733, 9.098, -166.71), Orientation = Vector3.new(40.003, -90, -0.003)}
           local propertiesB3 = {Position = Vector3.new(116.878, 10.898, -166.71), Orientation = Vector3.new(40.003, -90, -0.003)}
           local propertiesD1 = {Position = Vector3.new(130.403, 22.244, -166.71), Orientation = Vector3.new(40, -90, 0)}
           local propertiesD2 = {Position = Vector3.new(128.445, 20.455, -166.71), Orientation = Vector3.new(40.003, -90, -0.003)}
           local propertiesD3 = {Position = Vector3.new(130.59, 22.255, -166.71), Orientation = Vector3.new(40.003, -90, -0.003)}
           local propertiesF1 = {Position = Vector3.new(149.099, 39.851, -166.71), Orientation = Vector3.new(50, -90, 0)}
           local propertiesF2 = {Position = Vector3.new(147.482, 37.749, -166.71), Orientation = Vector3.new(50.003, -90, -0.003)}
           local propertiesF3 = {Position = Vector3.new(149.281, 39.894, -166.71), Orientation = Vector3.new(50.003, -90, -0.003)}
           local propertiesH1 = {Position = Vector3.new(164.703, 57.563, -166.708), Orientation = Vector3.new(40, -90, 0)}
           local propertiesH2 = {Position = Vector3.new(162.745, 55.774, -166.708), Orientation = Vector3.new(40.003, -90, -0.003)}
           local propertiesH3 = {Position = Vector3.new(164.89, 57.574, -166.708), Orientation = Vector3.new(40.003, -90, -0.003)}
           local propertiesI1 = {Position = Vector3.new(169.956, 60.852, -166.708), Orientation = Vector3.new(30, -90, 0)}
           local propertiesI2 = {Position = Vector3.new(167.717, 59.43, -166.708), Orientation = Vector3.new(30.003, -90, -0.003)}
           local propertiesI3 = {Position = Vector3.new(170.142, 60.831, -166.708), Orientation = Vector3.new(30.003, -90, -0.003)}
           local propertiesJ1 = {Position = Vector3.new(175.396, 62.726, -166.668), Orientation = Vector3.new(15, -90, 0)}
           local propertiesJ2 = {Position = Vector3.new(172.865, 61.932, -166.668), Orientation = Vector3.new(15.003, -90, -0.0033)}
           local propertiesJ3 = {Position = Vector3.new(175.57, 62.657, -166.668), Orientation = Vector3.new(15.003, -90, -0.003)}
           local propertiesK1 = {Position = Vector3.new(183.501, 63.554, -166.668), Orientation = Vector3.new(0, -90, 0)}
           local propertiesK2 = {Position = Vector3.new(180.851, 63.442, -166.668), Orientation = Vector3.new(0.003, -90, -0.003)}
           local propertiesK3 = {Position = Vector3.new(183.651, 63.442, -166.668), Orientation = Vector3.new(0.003, -90, -0.003)}
           local propertiesL1 = {Position = Vector3.new(190.204, 62.873, -166.668), Orientation = Vector3.new(-10, -90, 0)}
           local propertiesL2 = {Position = Vector3.new(187.575, 63.223, -166.668), Orientation = Vector3.new(-9.997, -90, -0.003)}
           local propertiesL3 = {Position = Vector3.new(190.332, 62.737, -166.668), Orientation = Vector3.new(-9.997, -90, -0.003)}
           local propertiesM1 = {Position = Vector3.new(199.409, 57.352, -166.668), Orientation = Vector3.new(-40, -90, 0)} -- For the Cart
           local propertiesM2 = {Position = Vector3.new(197.307, 58.97, -166.668), Orientation = Vector3.new(-39.997, -90, -0.003)} -- For the Seat1
           local propertiesM3 = {Position = Vector3.new(199.452, 57.17, -166.668), Orientation = Vector3.new(-39.997, -90, -0.003)} -- For the Seat2
           local propertiesN1 = {Position = Vector3.new(206.01, 50.371, -166.668), Orientation = Vector3.new(-50, -90, 0)} -- For the Cart
           local propertiesN2 = {Position = Vector3.new(204.221, 52.33, -166.668), Orientation = Vector3.new(-49.997, -90, -0.003)} -- For the Seat1
           local propertiesN3 = {Position = Vector3.new(206.021, 50.185, -166.668), Orientation = Vector3.new(-49.997, -90, -0.003)} -- For the Seat2
           local propertiesO1 = {Position = Vector3.new(214.689, 36.654, -166.668), Orientation = Vector3.new(-60, -90, 0)} -- For the Cart
           local propertiesO2 = {Position = Vector3.new(213.267, 38.893, -166.668), Orientation = Vector3.new(-59.997, -90, -0.003)} -- For the Seat1
           local propertiesO3 = {Position = Vector3.new(214.667, 36.468, -166.668), Orientation = Vector3.new(-59.997, -90, -0.003)} -- For the Seat2
           local propertiesP1 = {Position = Vector3.new(222.209, 23.629, -166.668), Orientation = Vector3.new(-60, -90, 0)} -- For the Cart
           local propertiesP2 = {Position = Vector3.new(220.787, 25.868, -166.668), Orientation = Vector3.new(-59.997, -90, -0.003)} -- For the Seat1
           local propertiesP3 = {Position = Vector3.new(222.187, 23.443, -166.668), Orientation = Vector3.new(-59.997, -90, -0.003)} -- For the Seat2
           local propertiesQ1 = {Position = Vector3.new(233.93, 11.582, -169.657), Orientation = Vector3.new(-28.665, -67.426, -2.661)} -- For the Cart
           local propertiesQ2 = {Position = Vector3.new(231.732, 12.756, -168.748), Orientation = Vector3.new(-28.662, -67.426, -2.664)} -- For the Seat1
           local propertiesQ3 = {Position = Vector3.new(234, 11.413, -169.691), Orientation = Vector3.new(-28.662, -67.426, -2.664)} -- For the Seat2
           local propertiesR1 = {Position = Vector3.new(233.93, 11.582, -169.657), Orientation = Vector3.new(-28.665, -67.426, -2.661)} -- For the Cart
           local propertiesR2 = {Position = Vector3.new(231.732, 12.756, -168.748), Orientation = Vector3.new(-28.662, -67.426, -2.66)} -- For the Seat1
           local propertiesR3 = {Position = Vector3.new(234, 11.413, -169.691), Orientation = Vector3.new(-28.662, -67.426, -2.664)} -- For the Seat2
           local propertiesS1 = {Position = Vector3.new(240.611, 9.402, -176.574), Orientation = Vector3.new(-7.344, -43.23, -3.706)} -- For the Cart
           local propertiesS2 = {Position = Vector3.new(238.796, 9.63, -174.654), Orientation = Vector3.new(-7.341, -43.23, -3.709)} -- For the Seat1
           local propertiesS3 = {Position = Vector3.new(240.698, 9.272, -176.677), Orientation = Vector3.new(-28.662, -67.426, -2.664)} -- For the Seat2
           local propertiesT1 = {Position = Vector3.new(244.873, 8.093, -185.25), Orientation = Vector3.new(-5.635, -23.172, -5.996)} -- For the Cart
           local propertiesT2 = {Position = Vector3.new(243.82, 8.243, -182.82), Orientation = Vector3.new(-5.632, -23.172, -5.999)} -- For the Seat1
           local propertiesT3 = {Position = Vector3.new(244.917, 7.968, -185.382), Orientation = Vector3.new(-5.632, -23.172, -5.999)} -- For the Seat2
           local propertiesU1 = {Position = Vector3.new(244.992, 7.055, -194.426), Orientation = Vector3.new(-7.536, 2.393, -7.868)} -- For the Cart
           local propertiesU2 = {Position = Vector3.new(245.087, 7.293, -191.786), Orientation = Vector3.new(-7.533, 2.393, -7.871)} -- For the Seat1
           local propertiesU3 = {Position = Vector3.new(244.971, 6.925, -194.559), Orientation = Vector3.new(-7.533, 2.393, -7.871)} -- For the Seat2
           local propertiesV1 = {Position = Vector3.new(236.461, 6.998, -206.624), Orientation = Vector3.new(2.063, 56.681, -10.687)} -- For the Cart
           local propertiesV2 = {Position = Vector3.new(238.66, 6.793, -205.154), Orientation = Vector3.new(2.063, 56.681, -10.687)} -- For the Seat1
           local propertiesV3 = {Position = Vector3.new(236.321, 6.893, -206.691), Orientation = Vector3.new(2.063, 56.681, -10.687)} -- For the Seat2
           local propertiesW1 = {Position = Vector3.new(227.241, 8.157, -208.046), Orientation = Vector3.new(8.432, 96.366, -6.899)} -- For the Cart
           local propertiesW2 = {Position = Vector3.new(229.832, 7.658, -208.321), Orientation = Vector3.new(8.434, 96.365, -6.902)} -- For the Seat1
           local propertiesW3 = {Position = Vector3.new(226.981, 8.084, -208.003), Orientation = Vector3.new(8.434, 96.365, -6.902)} -- For the Seat2
           local propertiesX1 = {Position = Vector3.new(221.23, 14.753, -207.303), Orientation = Vector3.new(78.411, 88.956, -9.614)} -- For the Cart
           local propertiesX2 = {Position = Vector3.new(221.654, 12.134, -207.277), Orientation = Vector3.new(78.414, 88.954, -9.619)} -- For the Seat1
           local propertiesX3 = {Position = Vector3.new(221.071, 14.975, -207.287), Orientation = Vector3.new(78.414, 88.954, -9.619)} -- For the Seat2
           local propertiesY1 = {Position = Vector3.new(221.289, 18.398, -207.436), Orientation = Vector3.new(81.22, -69.066, -167.301)} -- For the Cart
           local propertiesY2 = {Position = Vector3.new(220.802, 15.796, -207.276), Orientation = Vector3.new(81.218, -69.07, -167.308)} -- For the Seat1
           local propertiesY3 = {Position = Vector3.new(221.216, 18.662, -207.434), Orientation = Vector3.new(81.218, -69.07, -167.308)} -- For the Seat2
           local propertiesZ1 = {Position = Vector3.new(235.689, 20.405, -210.98), Orientation = Vector3.new(-68.49, -86.502, -174.755)} -- For the Cart
           local propertiesZ2 = {Position = Vector3.new(235.959, 20.731, -210.955), Orientation = Vector3.new(-77.969, -81.776, -174.425)} -- For the Seat1
           local propertiesZ3 = {Position = Vector3.new(235.468, 23.059, -210.884), Orientation = Vector3.new(-77.969, -81.776, -174.425)} -- For the Seat2
           local propertiesAA1 = {Position = Vector3.new(233.953, 11.324, -211.543), Orientation = Vector3.new(-52.118, 91.483, -1.866)} -- For the Cart
           local propertiesAA2 = {Position = Vector3.new(235.668, 13.347, -211.583), Orientation = Vector3.new(-52.115, 91.483, -1.868)} -- For the Seat1
           local propertiesAA3 = {Position = Vector3.new(233.95, 11.137, -211.539), Orientation = Vector3.new(-52.115, 91.483, -1.868)} -- For the Seat2
           local propertiesBB1 = {Position = Vector3.new(228.117, 7.438, -213.138), Orientation = Vector3.new(-21.989, 79.686, 2.826)} -- For the Cart
           local propertiesBB2 = {Position = Vector3.new(230.577, 8.327, -212.696), Orientation = Vector3.new(-21.986, 79.686, 2.823)} -- For the Seat1
           local propertiesBB3 = {Position = Vector3.new(228.023, 7.279, -213.161), Orientation = Vector3.new(-21.986, 79.686, 2.823)} -- For the Seat2
           local propertiesCC1 = {Position = Vector3.new(215.982, 8.493, -216.138), Orientation = Vector3.new(33.163, 70.918, -0.584)} -- For the Cart
           local propertiesCC2 = {Position = Vector3.new(218.021, 6.95, -215.432), Orientation = Vector3.new(33.166, 70.918, -0.587)} -- For the Seat1
           local propertiesCC3 = {Position = Vector3.new(215.806, 8.481, -216.198), Orientation = Vector3.new(33.166, 70.918, -0.587)} -- For the Seat2
           local propertiesDD1 = {Position = Vector3.new(207.028, 18.484, -219.27), Orientation = Vector3.new(48.162, 70.691, -0.733)} -- For the Cart
           local propertiesDD2 = {Position = Vector3.new(208.617, 16.435, -218.712), Orientation = Vector3.new(48.165, 70.691, -0.736)} -- For the Seat1
           local propertiesDD3 = {Position = Vector3.new(206.854, 18.522, -219.329), Orientation = Vector3.new(48.165, 70.691, -0.736)} -- For the Seat2
           local propertiesFF1 = {Position = Vector3.new(181.94, 40.566, -227.822), Orientation = Vector3.new(13.164, 71.123, -0.502)} -- For the Cart
           local propertiesFF2 = {Position = Vector3.new(184.358, 39.854, -226.995), Orientation = Vector3.new(13.167, 71.123, -0.505)} -- For the Seat1
           local propertiesFF3 = {Position = Vector3.new(181.778, 40.491, -227.877), Orientation = Vector3.new(13.167, 71.123, -0.505)} -- For the Seat2
           
           -- Tween parts
           local tweenA1 = tweenService:Create(cart, tweenInfo, {Position = Vector3.new(110.786, 7.477, -166.71)})
           local tweenA2 = tweenService:Create(seat, tweenInfo, {Position = Vector3.new(108.255, 6.683, -166.71)})
           local tweenA3 = tweenService:Create(seat2, tweenInfo, {Position = Vector3.new(110.959, 7.407, -166.71)})
           local tweenB1 = tweenService:Create(cart, tweenInfo, propertiesB1)
           local tweenB2 = tweenService:Create(seat, tweenInfo, propertiesB2)
           local tweenB3 = tweenService:Create(seat2, tweenInfo, propertiesB3)
           local tweenC1 = tweenService:Create(cart, uppie1, {Position = Vector3.new(128.879, 21.114, -166.71)})
           local tweenC2 = tweenService:Create(seat, uppie1, {Position = Vector3.new(126.921, 19.325, -166.71)})
           local tweenC3 = tweenService:Create(seat2, uppie1, {Position = Vector3.new(129.066, 21.125, -166.71)})
           local tweenD1 = tweenService:Create(cart, uppie1, propertiesD1)
           local tweenD2 = tweenService:Create(seat, uppie1, propertiesD2)
           local tweenD3 = tweenService:Create(seat2, uppie1, propertiesD3)
           local tweenE1 = tweenService:Create(cart, uppie1, {Position = Vector3.new(142.928, 32.753, -166.71)})
           local tweenE2 = tweenService:Create(seat, uppie1, {Position = Vector3.new(140.969, 30.964, -166.71)})
           local tweenE3 = tweenService:Create(seat2, uppie1, {Position = Vector3.new(143.114, 32.764, -166.71)})
           local tweenF1 = tweenService:Create(cart, uppie2, propertiesF1)
           local tweenF2 = tweenService:Create(seat, uppie2, propertiesF2)
           local tweenF3 = tweenService:Create(seat2, uppie2, propertiesF3)
           local tweenG1 = tweenService:Create(cart, uppie2, {Position = Vector3.new(160.772, 53.727, -166.708)})
           local tweenG2 = tweenService:Create(seat, uppie2, {Position = Vector3.new(159.154, 51.625, -166.708)})
           local tweenG3 = tweenService:Create(seat2, uppie2, {Position = Vector3.new(160.954, 53.77, -166.708)})
           local tweenH1 = tweenService:Create(cart, uppie2, propertiesH1)
           local tweenH2 = tweenService:Create(seat, uppie2, propertiesH2)
           local tweenH3 = tweenService:Create(seat2, uppie2, propertiesH3)
           local tweenI1 = tweenService:Create(cart, uppie2, propertiesI1)
           local tweenI2 = tweenService:Create(seat, uppie2, propertiesI2)
           local tweenI3 = tweenService:Create(seat2, uppie2, propertiesI3)
           local tweenJ1 = tweenService:Create(cart, uppie3, propertiesJ1)
           local tweenJ2 = tweenService:Create(seat, uppie3, propertiesJ2)
           local tweenJ3 = tweenService:Create(seat2, uppie3, propertiesJ3)
           local tweenK1 = tweenService:Create(cart, uppie3, propertiesK1)
           local tweenK2 = tweenService:Create(seat, uppie3, propertiesK2)
           local tweenK3 = tweenService:Create(seat2, uppie3, propertiesK3)
           local tweenL1 = tweenService:Create(cart, tweenInfo, propertiesL1)
           local tweenL2 = tweenService:Create(seat, tweenInfo, propertiesL2)
           local tweenL3 = tweenService:Create(seat2, tweenInfo, propertiesL3)
           local tweenM1 = tweenService:Create(cart, tweenInfo, propertiesM1)
           local tweenM2 = tweenService:Create(seat, tweenInfo, propertiesM2)
           local tweenM3 = tweenService:Create(seat2, tweenInfo, propertiesM3)
           local tweenN1 = tweenService:Create(cart, styledownwardfast, propertiesN1)
           local tweenN2 = tweenService:Create(seat, styledownwardfast, propertiesN2)
           local tweenN3 = tweenService:Create(seat2, styledownwardfast, propertiesN3)
           local tweenO1 = tweenService:Create(cart, styledownwardfast, propertiesO1)
           local tweenO2 = tweenService:Create(seat, styledownwardfast, propertiesO2)
           local tweenO3 = tweenService:Create(seat2, styledownwardfast, propertiesO3)
           local tweenP1 = tweenService:Create(cart, styledownwardfaststyle2, propertiesP1)
           local tweenP2 = tweenService:Create(seat, styledownwardfaststyle2, propertiesP2)
           local tweenP3 = tweenService:Create(seat2, styledownwardfaststyle2, propertiesP3)
           local tweenQ1 = tweenService:Create(cart, styledownwardfaststyle2, propertiesP1)
           local tweenQ2 = tweenService:Create(seat, styledownwardfaststyle2, propertiesP2)
           local tweenQ3 = tweenService:Create(seat2, styledownwardfaststyle2, propertiesP3)
           local tweenR1 = tweenService:Create(cart, styledownwardfaststyle2, propertiesR1)
           local tweenR2 = tweenService:Create(seat, styledownwardfaststyle2, propertiesR2)
           local tweenR3 = tweenService:Create(seat2, styledownwardfaststyle2, propertiesR3)
           local tweenS1 = tweenService:Create(cart, sharpturnstyle, propertiesS1)
           local tweenS2 = tweenService:Create(seat, sharpturnstyle, propertiesS2)
           local tweenS3 = tweenService:Create(seat2, sharpturnstyle, propertiesS3)
           local tweenT1 = tweenService:Create(cart, sharpturnstyle, propertiesT1)
           local tweenT2 = tweenService:Create(seat, sharpturnstyle, propertiesT2)
           local tweenT3 = tweenService:Create(seat2, sharpturnstyle, propertiesT3)
           local tweenU1 = tweenService:Create(cart, sharpturnstyle, propertiesU1)
           local tweenU2 = tweenService:Create(seat, sharpturnstyle, propertiesU2)
           local tweenU3 = tweenService:Create(seat2, sharpturnstyle, propertiesU3)
           local tweenV1 = tweenService:Create(cart, sharpturnstyle, propertiesV1)
           local tweenV2 = tweenService:Create(seat, sharpturnstyle, propertiesV2)
           local tweenV3 = tweenService:Create(seat2, sharpturnstyle, propertiesV3)
           local tweenW1 = tweenService:Create(cart, sharpturnstyle, propertiesW1)
           local tweenW2 = tweenService:Create(seat, sharpturnstyle, propertiesW2)
           local tweenW3 = tweenService:Create(seat2, sharpturnstyle, propertiesW3)
           local tweenX1 = tweenService:Create(cart, circlemotion, propertiesX1)
           local tweenX2 = tweenService:Create(seat, circlemotion, propertiesX2)
           local tweenX3 = tweenService:Create(seat2, circlemotion, propertiesX3)
           local tweenY1 = tweenService:Create(cart, circlemotion, propertiesY1)
           local tweenY2 = tweenService:Create(seat, circlemotion, propertiesY2)
           local tweenY3 = tweenService:Create(seat2, circlemotion, propertiesY3)
           local tweenZ1 = tweenService:Create(cart, circlemotion, propertiesZ1)
           local tweenZ2 = tweenService:Create(seat, circlemotion, propertiesZ2)
           local tweenZ3 = tweenService:Create(seat2, circlemotion, propertiesZ3)
           local tweenAA1 = tweenService:Create(cart, circlemotion, propertiesAA1)
           local tweenAA2 = tweenService:Create(seat, circlemotion, propertiesAA2)
           local tweenAA3 = tweenService:Create(seat2, circlemotion, propertiesAA3)
           local tweenBB1 = tweenService:Create(cart, sharpwayforward, propertiesBB1)
           local tweenBB2 = tweenService:Create(seat, sharpwayforward, propertiesBB2)
           local tweenBB3 = tweenService:Create(seat2, sharpwayforward, propertiesBB3)
           local tweenCC1 = tweenService:Create(cart, sharpwayforward, propertiesCC1)
           local tweenCC2 = tweenService:Create(seat, sharpwayforward, propertiesCC2)
           local tweenCC3 = tweenService:Create(seat2, sharpwayforward, propertiesCC3)
           local tweenDD1 = tweenService:Create(cart, sharpwayforward, propertiesDD1)
           local tweenDD2 = tweenService:Create(seat, sharpwayforward, propertiesDD2)
           local tweenDD3 = tweenService:Create(seat2, sharpwayforward, propertiesDD3)
           local tweenEE1 = tweenService:Create(cart, sharpwayforward, {Position = Vector3.new(197.287, 30.049, -223.042)})
           local tweenEE2 = tweenService:Create(seat, sharpwayforward, {Position = Vector3.new(198.876, 28, -222.484)})
           local tweenEE3 = tweenService:Create(seat2, sharpwayforward, {Position = Vector3.new(197.113, 30.086, -223.102)})
           local tweenFF1 = tweenService:Create(cart, sharpwayforward, propertiesFF1)
           local tweenFF2 = tweenService:Create(seat, sharpwayforward, propertiesFF2)
           local tweenFF3 = tweenService:Create(seat2, sharpwayforward, propertiesFF3)
           
           -- Plays tween parts with given speed
           tweenA1:Play()
           tweenA2:Play()
           tweenA3:Play()
           wait(2 / speed)
           tweenB1:Play()
           tweenB2:Play()
           tweenB3:Play()
           wait(2 / speed)
           tweenC1:Play()
           tweenC2:Play()
           tweenC3:Play()
           wait(4 / speed)
           tweenD1:Play()
           tweenD2:Play()
           tweenD3:Play()
           wait(1 / speed)
           tweenE1:Play()
           tweenE2:Play()
           tweenE3:Play()
           wait(1 / speed)
           tweenF1:Play()
           tweenF2:Play()
           tweenF3:Play()
           wait(1 / speed)
           tweenG1:Play()
           tweenG2:Play()
           tweenG3:Play()
           wait(1 / speed)
           tweenH1:Play()
           tweenH2:Play()
           tweenH3:Play()
           wait(1 / speed)
           tweenI1:Play()
           tweenI2:Play()
           tweenI3:Play()
           wait(1 / speed)
           tweenJ1:Play()
           tweenJ2:Play()
           tweenJ3:Play()
           wait(0.5 / speed)
           tweenK1:Play()
           tweenK2:Play()
           tweenK3:Play()
           wait(0.5 / speed)
           tweenL1:Play()
           tweenL2:Play()
           tweenL3:Play()
           wait(2 / speed)
           tweenM1:Play()
           tweenM2:Play()
           tweenM3:Play()
           wait(2 / speed)
           tweenN1:Play()
           tweenN2:Play()
           tweenN3:Play()
           wait(0.2 / speed)
           tweenO1:Play()
           tweenO2:Play()
           tweenO3:Play()
           wait(0.15 / speed)
           tweenP1:Play()
           tweenP2:Play()
           tweenP3:Play()
           wait(0.15 / speed)
           tweenQ1:Play()
           tweenQ2:Play()
           tweenQ3:Play()
           wait(0.15 / speed)
           tweenR1:Play()
           tweenR2:Play()
           tweenR3:Play()
           wait(0.2 / speed)
           tweenS1:Play()
           tweenS2:Play()
           tweenS3:Play()
           wait(0.2 / speed)
           tweenT1:Play()
           tweenT2:Play()
           tweenT3:Play()
           wait(0.2 / speed)
           tweenU1:Play()
           tweenU2:Play()
           tweenU3:Play()
           wait(0.2 / speed)
           tweenV1:Play()
           tweenV2:Play()
           tweenV3:Play()
           wait(0.2 / speed)
           tweenW1:Play()
           tweenW2:Play()
           tweenW3:Play()
           wait(0.2 / speed)
           tweenX1:Play()
           tweenX2:Play()
           tweenX3:Play()
           wait(0.2 / speed)
           tweenY1:Play()
           tweenY2:Play()
           tweenY3:Play()
           wait(0.2 / speed)
           tweenZ1:Play()
           tweenZ2:Play()
           tweenZ3:Play()
           wait(0.2 / speed)
           tweenAA1:Play()
           tweenAA2:Play()
           tweenAA3:Play()
           wait(0.2 / speed)
           tweenBB1:Play()
           tweenBB2:Play()
           tweenBB3:Play()
           wait(0.2 / speed)
           tweenCC1:Play()
           tweenCC2:Play()
           tweenCC3:Play()
           wait(0.2 / speed)
           tweenDD1:Play()
           tweenDD2:Play()
           tweenDD3:Play()
           wait(0.2 / speed)
           tweenEE1:Play()
           tweenEE2:Play()
           tweenEE3:Play()
           wait(0.2 / speed)
           tweenFF1:Play()
           tweenFF2:Play()
           tweenFF3:Play()
           wait(0.2 / speed)
           tweentheRest()
       else
           -- Warns that ride is already running
           plr.PlayerGui.Warning.TextLabel.Visible = true
           wait(1)
           plr.PlayerGui.Warning.TextLabel.Visible = false
       end
   end
   local function HasRankOrPass()
       -- Checks if they own the gamepass for the ride or is a developer
       if plr:IsInGroup(33247817) or MarketPlaceService:UserOwnsGamePassAsync(plr.UserId, 911270874) then
           if plr:IsInGroup(33247817) or MarketPlaceService:UserOwnsGamePassAsync(plr.UserId, 911270874) then
               if plr:GetRankInGroup(33247817) >= 250 or MarketPlaceService:UserOwnsGamePassAsync(plr.UserId, 911270874) then
                   StartRide()
               else
                   MarketPlaceService:PromptGamePassPurchase(plr, 911270874)
               end
           end
       else
           MarketPlaceService:PromptGamePassPurchase(plr, 911270874)
       end
   end
   HasRankOrPass()
end)