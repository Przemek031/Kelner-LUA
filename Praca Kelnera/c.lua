--[[
  @author: Przemek031
  All rights reserved.
]]--

local sw,sh = guiGetScreenSize()

local pracakelner = createMarker( 378.30289, -114.12006, 1000.5, 'cylinder', 1.5, 10, 0, 255)
setElementInterior(pracakelner, 5) 


local miejscalisty = {
{378.17056, -122.56276, 1001.49219},
{378.16916, -125.35421, 1001.49219},
{378.16885, -128.60616, 1001.49219},
{378.17065, -131.65976, 1001.49219},
{373.79102, -130.99370, 1001.49219},
{373.68286, -127.63242, 1001.49951},
{373.92908, -124.01475, 1001.49219},
{373.82678, -121.16930, 1001.49219},
{369.21106, -122.23820, 1001.49219},
{369.20157, -125.25528, 1001.49219},
{369.20276, -128.61499, 1001.49951},
{369.20169, -131.60555, 1001.49219},
}

guipraca = guiCreateWindow(1500/1920*sw, 400/1080*sh, 324/1920*sw, 372/1080*sh, "Praca Kelnera", false)
guiWindowSetSizable(guipraca, false, guipraca)
memoinfo = guiCreateMemo(1510/1920*sw, 425/1080*sh, 300/1920*sw, 165/1080*sh, "Praca Kelnera\nZarobki: 25$-50$\nZadanie: Dostarczaj dania do wyznaczonych stolików!", false, pracagui)

guiMemoSetReadOnly( memoinfo, true )

anulujp = guiCreateButton(1510/1920*sw, 676/1080*sh, 304/1920*sw, 47/1080*sh, "Wyłącz Okno", false)
guiSetProperty(anulujp, "NormalTextColour", "FFAAAAAA")

paczkawez = guiCreateButton(1510/1920*sw, 619/1080*sh, 304/1920*sw, 47/1080*sh, "Weź Danie", false)
guiSetProperty(paczkawez, "NormalTextColour", "FFAAAAAA")

guipoczta = guiCreateWindow(1500/1920*sw, 400/1080*sh, 324/1920*sw, 372/1080*sh, "Stołówka", false)
guiWindowSetSizable(guipoczta, false, guipoczta)
memopoczta = guiCreateMemo(1510/1920*sw, 425/1080*sh, 300/1920*sw, 165/1080*sh, "Stołówka\nPoszukujemy kelnerów! \nWięcej informacji w środku", false, pocztagui)

guiMemoSetReadOnly( memopoczta, true )

pocztawyjdz1 = guiCreateButton(1510/1920*sw, 676/1080*sh, 304/1920*sw, 47/1080*sh, "Wyłącz Okno", false)
guiSetProperty(pocztawyjdz1, "NormalTextColour", "FFAAAAAA")

pocztawejdz1 = guiCreateButton(1510/1920*sw, 619/1080*sh, 304/1920*sw, 47/1080*sh, "Wejdź", false)
guiSetProperty(pocztawejdz1, "NormalTextColour", "FFAAAAAA")

             guiSetVisible(guipoczta, false)
             guiSetVisible(memopoczta, false)
             guiSetVisible(pocztawejdz1, false)
             guiSetVisible(pocztawyjdz1, false)
             guiSetVisible(pocztagui, false)
             showCursor(false)
             guiSetVisible(guipraca, false)
             guiSetVisible(memoinfo, false)
             guiSetVisible(paczkawez, false)
             guiSetVisible(anulujp, false)
             guiSetVisible(pracagui, false)
             showCursor(false)
			 



 function pracuj1(hitPlayer, matchingDimension) 
  
	 
    if isElementWithinMarker(localPlayer, pracakelner) then 
	 if hitPlayer == localPlayer then
	             guiSetVisible(guipraca, true)
             guiSetVisible(memoinfo, true)
             guiSetVisible(paczkawez, true)
             guiSetVisible(anulujp, true)
             guiSetVisible(guipraca, true)
             showCursor(true)

   end end end
	addEventHandler("onClientMarkerHit", pracakelner, pracuj1)


    function wylaczokno()
             guiSetVisible(pracagui, false)
             guiSetVisible(memoinfo, false)
             guiSetVisible(paczkawez, false)
             guiSetVisible(anulujp, false)
             guiSetVisible(guipraca, false)
             showCursor(false)

			end
addEventHandler("onClientGUIClick", anulujp, wylaczokno, false)

 local kelner1 = createMarker(372.3, -133.52112, 1002, "arrow", 1, 255, 0, 0)  
setElementInterior(kelner1, 5) 




 
    function wyjdz1(hitPlayer, matchingDimension) 
   
	       if getPedOccupiedVehicle(localPlayer) then
			return
            end
			
    if isElementWithinMarker(localPlayer, kelner1) then 
	
    setElementInterior (localPlayer, 0)
    setElementPosition (localPlayer, 663.5, -1577, 15.1)
 
	
   end

   end
	addEventHandler("onClientMarkerHit", kelner1, wyjdz1)
	

local kelner = createMarker(663.5, -1575.96350, 15.1, "arrow", 1, 255, 0, 0) 
setElementInterior(kelner, 0) 
local blipkelner = createBlipAttachedTo(kelner, 46)
  function zamknijpoczta1()
             guiSetVisible(guipoczta, false)
             guiSetVisible(memopoczta, false)
             guiSetVisible(pocztawejdz1, false)
             guiSetVisible(pocztawyjdz1, false)
             guiSetVisible(pocztagui, false)
             showCursor(false)
			end
			addEventHandler("onClientGUIClick", pocztawyjdz1, zamknijpoczta1, false)
	    function otworzpoczta1()
             guiSetVisible(guipoczta, false)
             guiSetVisible(memopoczta, false)
             guiSetVisible(pocztawejdz1, false)
             guiSetVisible(pocztawyjdz1, false)
             guiSetVisible(pocztagui, false)
             showCursor(false)
			 setElementInterior (localPlayer, 5)
             setElementPosition (localPlayer, 372.2, -132.52112, 1002)
			end
			addEventHandler("onClientGUIClick", pocztawejdz1, otworzpoczta1, false)
			       
	   function wejdz1(hitPlayer, matchingDimension) 
  
	  if getPedOccupiedVehicle(el) then return end
	 
    if isElementWithinMarker(localPlayer, kelner) then 
	 if hitPlayer == localPlayer then
	          guiSetVisible(guipoczta, true)
             guiSetVisible(memopoczta, true)
             guiSetVisible(pocztawejdz1, true)
             guiSetVisible(pocztawyjdz1, true)
             guiSetVisible(pocztagui, true)
             showCursor(true)

   end end end
	addEventHandler("onClientMarkerHit", kelner, wejdz1)
  
    function paczkastart()
	         guiSetVisible(pracagui, false)
             guiSetVisible(memoinfo, false)
             guiSetVisible(paczkawez, false)
             guiSetVisible(anulujp, false)
             guiSetVisible(guipraca, false)
             showCursor(false)
			
    if not isElementWithinMarker(localPlayer, pracakelner) then return end
    if not getElementData(localPlayer, "gracz_praca1") then
        local losuj = math.random(2, #miejscalisty)
        setElementData(localPlayer, "gracz_praca1", true)

		outputChatBox("*Zanieś danie na stolik", 255,255, 0, true)
        
        local cel = createMarker(miejscalisty[losuj][1], miejscalisty[losuj][2], miejscalisty[losuj][3]-1.0, "checkpoint", 1.0, 255, 0, 0)
		
		
        local blip = createBlipAttachedTo(cel, 41)

        addEventHandler("onClientMarkerHit", cel, function(el, md)
            if not md or getElementType(el) ~= "player" then return end
            if el ~= localPlayer then
			return 
			end

            if getPedOccupiedVehicle(el) then
			return
            end


            destroyElement(blip)
            setElementFrozen(el, true)
      
		outputChatBox("*Kładziesz danie na stolik", 255,255, 0, true)


            setTimer(function()
                setElementFrozen(el, false)

                
                destroyElement(cel)
                setElementData(el, "gracz_praca1", false)
				 toggleControl("sprint", true)
				
				  local pieniadze = math.random(25,50)
               
				outputChatBox("*Doręczyłeś danie otrzymałeś za nie "..pieniadze.."$", 0,255, 0, true)
		         triggerServerEvent("givePlayerMoney", localPlayer, ""..pieniadze.."") 
            end, 3000, 1)
			
        end)
		
		  else
	    outputChatBox("*Już rozpocząłeś prace - nie możesz zacząć jej drugi raz", 255,0, 0, true)
		  end
end
addEventHandler("onClientGUIClick", paczkawez,paczkastart , false)

	
	