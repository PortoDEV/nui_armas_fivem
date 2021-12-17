-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
feijonts = {}
Tunnel.bindInterface("feijonts_arma",feijonts)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function feijonts.checkperm()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasGroup(user_id,'Crips') or vRP.hasGroup(user_id,'Bloods') or vRP.hasGroup(user_id,'admin') then
        return true
    end
end

function feijonts.Createmp5()
    local source = source
	local user_id = vRP.getUserId(source)
    if feijonts.checkperm() then
        if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_SMG_MK2")-vRP.getItemWeight("armacaodemp5") <= vRP.getInventoryMaxWeight(user_id) then
            if vRP.getInventoryItemAmount(user_id,"armacaodemp5") >= 1 then
                if vRP.tryGetInventoryItem(user_id,"armacaodemp5",1) then
                    TriggerClientEvent("feijonts-nui",source)

                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                    SetTimeout(10000,function()
                        vRPclient._stopAnim(source,false)
                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_SMG_MK2",1)
                    end)
                end
            else
                TriggerClientEvent("feijonts-nui",source)
                TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
            end
        end
    end
end

function feijonts.CreateAK()
    local source = source
	local user_id = vRP.getUserId(source)
    if feijonts.checkperm() then
        if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_ASSAULTRIFLE_MK2")-vRP.getItemWeight("armacaodeak") <= vRP.getInventoryMaxWeight(user_id) then
            if vRP.getInventoryItemAmount(user_id,"armacaodeak") >= 1 then
                if vRP.tryGetInventoryItem(user_id,"armacaodeak",1) then
                    TriggerClientEvent("feijonts-nui",source)

                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                    SetTimeout(10000,function()
                        vRPclient._stopAnim(source,false)
                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_ASSAULTRIFLE_MK2",1)
                    end)
                end
            else
                TriggerClientEvent("feijonts-nui",source)
                TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
            end
        end
    end
end

function feijonts.CreateG3()
    local source = source
	local user_id = vRP.getUserId(source)
    if feijonts.checkperm() then
        if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_SPECIALCARBINE_MK2")-vRP.getItemWeight("armacaodeg3") <= vRP.getInventoryMaxWeight(user_id) then
            if vRP.getInventoryItemAmount(user_id,"armacaodeg3") >= 1 then
                if vRP.tryGetInventoryItem(user_id,"armacaodeg3",1) then
                    TriggerClientEvent("feijonts-nui",source)

                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                    SetTimeout(10000,function()
                        vRPclient._stopAnim(source,false)
                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_SPECIALCARBINE_MK2",1)
                    end)
                end
            else
                TriggerClientEvent("feijonts-nui",source)
                TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
            end
        end
    end
end

function feijonts.CreateFIVE()
    local source = source
	local user_id = vRP.getUserId(source)
    if feijonts.checkperm() then
        if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_PISTOL_MK2")-vRP.getItemWeight("armacao") <= vRP.getInventoryMaxWeight(user_id) then
            if vRP.getInventoryItemAmount(user_id,"armacao") >= 1 then
                if vRP.tryGetInventoryItem(user_id,"armacao",1) then
                    TriggerClientEvent("feijonts-nui",source)

                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                    SetTimeout(10000,function()
                        vRPclient._stopAnim(source,false)
                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_PISTOL_MK2",1)
                    end)
                end
            else
                TriggerClientEvent("feijonts-nui",source)
                TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
            end
        end
    end
end

function feijonts.CreateGLOCKR()
    local source = source
	local user_id = vRP.getUserId(source)
    if feijonts.checkperm() then
        if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("wbody|WEAPON_APPISTOL")-vRP.getItemWeight("armacaodeglockr") <= vRP.getInventoryMaxWeight(user_id) then
            if vRP.getInventoryItemAmount(user_id,"armacaodeglockr") >= 1 then
                if vRP.tryGetInventoryItem(user_id,"armacaodeglockr",1) then
                    TriggerClientEvent("feijonts-nui",source)

                    TriggerClientEvent("progress",source,10000,"FABRICANDO")
                    vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)

                    SetTimeout(10000,function()
                        vRPclient._stopAnim(source,false)
                        vRP.giveInventoryItem(user_id,"wbody|WEAPON_APPISTOL",1)
                    end)
                end
            else
                TriggerClientEvent("feijonts-nui",source)
                TriggerClientEvent("Notify",source,"negado","Você precisa <b>Armação de Arma</b>.")
            end
        end
    end
end