:"Cookie Clicker v2.0.1
:"By williamtdr
:"www.twitter.com/williamtdr
:Disp "Cookie Clicker v2"
:Disp "by williamtdr"
:Disp "Loading Game..."
:Lbl A1
:ClrDraw
:ZStandard
:"Set up screen layout
:AxesOff
:Text(1,24,"Cookie Clicker")
:Text(50,5,"ENTER to click, + for menu")
:Text(57,4,"(c) 2013 williamtdr v2.0.1")
:"Draw cookie
:Circle(0,{-}1,3)
:"T denotes temporary variable
:0→T
:While T≤30
:Pxl-On(randInt(27,38),randInt(35,58))
:(T+1)→T
:End
:1→{L3}(2)
:While {L3}(2)=1
:sum(getTime)→{L3}(4)
:sum(getTime)→{L3}(5)
:While {L3}(4)={L3}(5)
:sum(getTime)→{L3}(5)
:getKey→{L3}(6)
:If {L3}(6)=105
:Then
:({L3}(1)+1)→{L3}(1)
:End
:If {L3}(6)=95
:Then
:Menu("Cookie Clicker","Manage Items",A2,"Unlock Upgrades",A3,"Achivements",A4,"Quit",A5)
:End
:End
:"Update cookie count
:({L3}(3)+{L3}(1))→{L3}(1)
:If {L3}(1)<10
:Then
:Text({-}1,10,20,"Cookies:",{L3}(1))
:End
:
:If {L3}(1)<100 and {L3}(1)>10
:Then
:Text({-}1,10,16,"Cookies:",{L3}(1))
:End
:
:If {L3}(1)<1000 and {L3}(1)>100
:Then
:Text({-}1,10,12,"Cookies:",{L3}(1))
:End
:
:If {L3}(1)<10000 and {L3}(1)>1000
:Then
:Text({-}1,10,8,"Cookies:",{L3}(1))
:End
:
:If {L3}(1)<100000 and {L3}(1)>10000
:Then
:Text({-}1,10,4,"Cookies:",{L3}(1))
:End
:
:If {L3}(1)<1000000 and {L3}(1)>100000
:Then
:Text({-}1,10,1,"Cookies:",{L3}(1))
:End
:Text(17,26,"per second:",{L3}(3))
:End
:Lbl A2
:Menu("Manage Items","Cursor",F1,"Grandma",F2,"Farm",F3,"Factory",F4,"Mine",F5,"Shipment",F6,"Alchemy Lab",F7,"Portal",F8,"Time Machine",F9,"Antimatter Condenser",F10,"Back",A)
:Lbl A3
:Disp "TO-DO: Add upgrades"
:Pause
:Goto A1
:Lbl A4
:Disp "TO-DO: Add achivements"
:Pause
:Goto A1
:Lbl B1
:"Owned:",{L3}(7)→{L3}(8)
:"Producing ",({L3}(7))," CPs"→{L3}(9)
:"Next cost: ",(({L3}(7)*10)+10)→{L3}(10)
:Menu("CURSORS",{L3}(8),A1,{L3}(9),A1,{L3}(10),C1,"BACK",A1)
:Lbl A5
:Stop