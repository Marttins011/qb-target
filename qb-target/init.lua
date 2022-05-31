function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 5.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- The color of the outline in rgb, the first value is red, the second value is green and the last value is blue. Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target
Config.OpenKey = 'LMENU' -- Left Alt

-- Key to open the menu
Config.MenuControlKey = 238 -- Control for keypress detection on the context menu, this is the Right Mouse Button, controls are found here https://docs.fivem.net/docs/game-references/controls/

-- Whether to have the target as a toggle or not
Config.Toggle = false

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

}

Config.PolyZones = {

}

Config.TargetBones = {
	    --[[["main"] = {
        bones = {
            "seat_dside_f",
            "seat_pside_f",
            "seat_dside_r",
            "seat_pside_r",
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r",
            "bodyshell",
        },
        options = {
            {
                type = "client",
                event = "police:client:PutPlayerInVehicle",
                icon = "fas fa-user-plus",
                label = "Colocar no veiculo",
            },
            {
                type = "client",
                event = "police:client:SetPlayerOutVehicle",
                icon = "fas fa-user-minus",
                label = "Retirar do veiculo",
            },
            {
                type = "command",
                event = "impound",
                icon = "fas fa-truck-moving",
                label = "Apreender veiculo",
                job = "police",
            },
            {
                type = "client",
                event = "vehicle:flipit",
                label = 'Virar veiculo',
                icon = 'fas fa-chevron-circle-up',
            }
        },
        distance = 2.5
    },]]

}

Config.TargetEntities = {

}

Config.TargetModels = {
	["atms"] = {
        models = {
			-1364697528,
			506770882,
			-870868698,
			-1126237515,

        },
        options = {
            {
                type = "client",
                event = "qb-banking:client:atm:openUI",
                icon = "fas fa-wallet", 
                label = "Aceder ao ATM",
            }
        },
        distance = 2.5,
    },
	["Banco"] = {
        models = {
            "u_m_m_bankman",
        },
        options = {
            {
                type = "client",
                event = "qb-banking:client:bank:openUI",
                icon = "fas fa-money-check",
                label = "Falar com o bancário",
            },
            {
                type = "server",
                event = "qb-core:server:TrocarSalario",
                icon = "fas fa-money-check",
                label = "Trocar cheques de salário por dinheiro",
            },
        },
        distance = 5,
    },
	["24/7 shops"] = {
        models = {
            "mp_m_shopkeep_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-store",
                label = "Falar com o vendedor",
            },
        },
        distance = 2.5,
    },
    ["ammunation shops"] = {
        models = {
            "s_m_y_ammucity_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-shopping-cart",
                label = "Falar com o vendedor",
            },
        },
        distance = 2.5,
    },
    ["youtool shops"] = {
        models = {
            "s_m_m_lathandy_01",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-wrench",
                label = "Falar com o vendedor",
            },
        },
        distance = 2.5,
    },
    ["sea_world"] = {
        models = {
            "cs_dom",
        },
        options = {
            {
                type = "client",
                event = "qb-shops:marketshop",
                icon = "fas fa-circle",
                label = "Buy Gear",
            },
        },
        distance = 2.5,
    },
	["bike"] = {
        models = {
            "bmx",
			"scorcher",
			"cruiser",
			"fixter",
			"tribike",
			"tribike2",
			"tribike3",
        },
        options = {
            {
                type = "client",
                event = "pickup:bike",
                icon = "fas fa-bicycle",
                label = "Pegar Bike",
            },
        },
        distance = 2.5,
    },
	["stealcopper"] = {
        models = {
            1709954128,
			1131941737,
			-1625667924,
			-2007495856,
			-1620823304,
			-2008643115,
        },
        options = {
            {
                type = "client",
                event = "qb-stealcopper:client:RoubarCobre",
                icon = "fas fa-mask",
                label = "Steal Copper",
            },
        },
        distance = 1.5,
    },
	["mt-hunting"] = {
        models = {
            "cs_hunter",
        },
        options = {
            {
                type = "client",
                event = "mt-hunting:client:LojaCaca",
                icon = "fas fa-circle",
                label = "Talk to employee",
            },
        },
        distance = 2.5,
    },
	--[[["maquinas-automaticas"] = {
        models = {
            "prop_vend_snak_01",
            "prop_vend_snak_01_tu",
			"prop_vend_soda_01",
            "prop_vend_soda_02",
            "prop_vend_water_01",

        },
        options = {
            {
                type = "client",
                event = "mt-maquinas-automaticas:client:ComprarCola",
                icon = "fas fa-glass", 
                label = "A1 - Lata de cola 350ml - 1$",
            },
			{
                type = "client",
                event = "mt-maquinas-automaticas:client:ComprarGarrafaAgua",
                icon = "fas fa-glass", 
                label = "A2 - Garrafa de agua 500ml - 1$",
            },
			{
                type = "client",
                event = "mt-maquinas-automaticas:client:ComprarChocolate",
                icon = "fas fa-cookie", 
                label = "A3 - Barra de chocolate twix - 1$",
            },
			{
                type = "client",
                event = "mt-maquinas-automaticas:client:ComprarSandwich",
                icon = "fas fa-sandiwch", 
                label = "A3 - Sandwich mista - 1$",
            }
        },
        distance = 2.5,
    },
	["maquina-cafe"] = {
        models = {
            "prop_vend_coffe_01",
            "apa_mp_h_acc_coffeemachine_01",

        },
        options = {
            {
                type = "client",
                event = "mt-maquinas-automaticas:client:BeberCafe",
                icon = "fas fa-coffee", 
                label = "Tirar copo de café",
            }
        },
        distance = 2.5,
    },
	["maquina-agua"] = {
        models = {
            "prop_watercooler_dark",
            "prop_watercooler",
			"prop_vend_water_01",

        },
        options = {
            {
                type = "client",
                event = "mt-maquinas-automaticas:client:BeberAgua",
                icon = "fas fa-glass", 
                label = "Tirar copo de água",
            }
        },
        distance = 2.5,
    },]]
	["garagem-apreendidos"] = {
        models = {
            "a_m_y_smartcaspat_01",

        },
        options = {
            {
                type = "client",
                event = "qb-garages:client:DepotList",
                icon = "fas fa-car", 
                label = "Carros Apreendidos",
            },
			{
                type = "client",
                event = "qb-vehiclekeys:client:OpenVehiclesList",
                icon = "fas fa-key", 
                label = "Chaves suplentes",
            }
        },
        distance = 2.5,
    },
    ["pesca-compra"] = {
        models = {
            "a_m_m_eastsa_01",

        },
        options = {
            {
                type = "client",
                event = "mt-fishing:client:AbrirLoja",
                icon = "fas fa-fish", 
                label = "Talk to emplyee",
            }
        },
        distance = 2.5,
    },
    ["pesca-venda"] = {
        models = {
            "a_f_m_fatbla_01",

        },
        options = {
            {
                type = "client",
                event = "mt-fishing:client:MenuVendas",
                icon = "fas fa-fish", 
                label = "Talk to girl",
            }
        },
        distance = 2.5,
    },
    ["loja-pets"] = {
        models = {
            "u_m_y_baygor",

        },
        options = {
            {
                type = "client",
                event = "mt-pets:client:MenuLoja",
                icon = "fas fa-cat", 
                label = "Talk to employee",
            }
        },
        distance = 2.5,
    },
    ["pets"] = {
        models = {
            "a_c_shepherd",
            "a_c_cat_01",
            "a_c_husky",
            "a_c_hen",
            "a_c_pug",
            "a_c_rabbit_01",
            "a_c_poodle",
            "a_c_westy",
            "a_c_retriever",
            "a_c_rottweiler",
            "a_c_mtlion",
            "a_c_rat",

        },
        options = {
            {
                type = "client",
                event = "mt-pets:client:AlimentarPet",
                icon = "fas fa-cat", 
                label = "Feed Pet",
                item = "comida_animais",
            }
        },
        distance = 2.5,
    },
    ["deliveryped"] = {
        models = {
            "a_f_y_rurmeth_01",
        },
        options = {
            {
                type = "client",
                event = "mt-delivery:client:PedirEntrega",
                icon = "fas fa-taco", 
                label = "Request Delivery",
            },
            {
                type = "client",
                event = "mt-delivery:client:ReceberPagamento",
                icon = "fas fa-dolar", 
                label = "Recive Payment",
                item = "delivery_recive",
            }
        },
        distance = 2.5,
    },
    ["weedrunsped"] = {
        models = {
            "s_m_y_dealer_01",
        },
        options = {
            {
                type = "client",
                event = "mt-weedruns:client:PedirEntrega",
                icon = "fas fa-cannabis", 
                label = "Request Delivery",
            },
            {
                type = "client",
                event = "mt-weedruns:client:ReceberPagamento",
                icon = "fas fa-dolar-sign", 
                label = "Recive Payment",
                item = "weed_recive",
            }
        },
        distance = 2.5,
    },

}

Config.GlobalPedOptions = {
	["main"] = {
        options = {
            {
                type = "client",
                event = "police:client:RobPlayer",
                icon = "fas fa-mask",
                label = "Roubar",
            },
            {
                type = "client",
                event = "police:client:KidnapPlayer",
                icon = "fas fa-user-friends",
                label = "Arrastar",
            },
			{
                type = "client",
                event = "police:client:SearchPlayer",
                icon = "fas fa-search",
                label = "Revistar",
				job = "police",
            },
			{
                type = "client",
                event = "police:client:JailPlayer",
                icon = "fas fa-user-lock",
                label = "Prender",
				job = "police",
            }
        },
        distance = 2.5
    },

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
	{ --- Apreendidos
		model = 'ig_devin',
		coords = vector4(-193.32, -1162.25, 22.67, 264.95),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(149.55, -1042.11, 28.37, 338.91),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(147.92, -1041.52, 28.37, 333.63),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-1211.94, -332.03, 36.78, 36.61),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-1213.43, -332.75, 36.78, 4.2),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-351.31, -51.25, 48.04, 351.32),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-352.85, -50.91, 48.04, 325.55),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(247.07, 225.01, 105.29, 156.99),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(252.37, 223.25, 105.29, 165.58),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(1175.23, 2708.3, 37.09, 184.57),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(1176.64, 2708.27, 37.09, 166.47),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-112.18, 6471.1, 30.63, 136.06),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-111.05, 6469.82, 30.63, 123.91),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{-- Banco
		model = 'u_m_m_bankman',
		coords = vector4(-2961.18, 481.34, 14.7, 75.79),
		gender = 'male',
		freeze = true,
		invincible = true,
		blockevents = false,
	},
	{ --mt-hunting
		model = 'cs_hunter',
		coords = vector4(-776.04, 5602.91, 32.74, 270.54),
		gender = 'male',
		freeze = true,
		invincible = false,
		blockevents = false,
	},
	{ --qb-garages/apreendidos
		model = 'a_m_y_smartcaspat_01',
		coords = vector4(407.31, -1626.35, 28.29, 222.46),
		gender = 'male',
		freeze = true,
		invincible = false,
		blockevents = false,
	},
    { --mt-fishing shop
        model = 'a_m_m_eastsa_01',
        coords = vector4(-1592.97, 5202.71, 3.31, 292.61),
        gender = 'male',
        freeze = true,
        invincible = false,
        blockevents = false,
    },
    { --mt-fishing shell
        model = 'a_f_m_fatbla_01',
        coords = vector4(-1038.57, -1397.1, 4.55, 80.44),
        gender = 'female',
        freeze = true,
        invincible = false,
        blockevents = false,
    },
    { --mt-pets
        model = 'u_m_y_baygor',
        coords = vector4(563.19, 2753.09, 41.88, 184.1),
        gender = 'male',
        freeze = true,
        invincible = false,
        blockevents = false,
    },
    { --mt-delivery
        model = 'a_f_y_rurmeth_01',
        coords = vector4(10.18, -1604.18, 28.37, 221.03),
        gender = 'female',
        freeze = true,
        invincible = false,
        blockevents = false,
    },
    { --mt-weedruns
        model = 's_m_y_dealer_01',
        coords = vector4(865.9, -3203.48, 4.98, 181.49),
        gender = 'male',
        freeze = true,
        invincible = false,
        blockevents = false,
    },
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	if not Config.Standalone then
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return true
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	else
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCount(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end