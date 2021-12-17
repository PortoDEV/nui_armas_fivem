-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
feijonts = Tunnel.getInterface("feijonts_arma")
-----------------------------------------------------------------------------------------------------------------------------------------
-- MENU
-----------------------------------------------------------------------------------------------------------------------------------------
local feijontsm = false
function Tooglefeijontsm()
    feijontsm = not feijontsm
    if feijontsm then
        SetNuiFocus(true,true)
		SendNUIMessage({ open = true })
    else
        SetNuiFocus(false)
        SendNUIMessage({ open = false })
    end
end

RegisterNetEvent("feijonts-nui")
AddEventHandler("feijonts-nui", function()
	Tooglefeijontsm()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("createFive",function()
	feijonts.CreateFIVE()
end)

RegisterNUICallback("createG3",function()
	feijonts.CreateG3()
end)

RegisterNUICallback("createAK",function()
	feijonts.CreateAK()
end)

RegisterNUICallback("createMP5",function()
	feijonts.Createmp5()
end)

RegisterNUICallback("createGlockr",function()
	feijonts.CreateGLOCKR()
end)

RegisterNUICallback("fecharnui",function()
	Tooglefeijontsm()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local marcacoes = {
	{1275.38,-1710.8,54.78},  -- CRIPS
	{-1081.65,-1678.23,4.58}  -- BLOODS
}

RegisterCommand('farmas',function(source,args)
	if not exports["chat"]:statusChat() then return end
    local ped = PlayerPedId()
	SetNuiFocus(false,false)
	for k,v in pairs(marcacoes) do
		local x,y,z = table.unpack(v)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),x,y,z,true)
		if distance <= 2.0 then
			if feijonts.checkperm() then
				Tooglefeijontsm()
			end
		end
	end
end)