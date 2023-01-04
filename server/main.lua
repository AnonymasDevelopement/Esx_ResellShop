local ShopItems = {}


function GetItemFromShop(Item, Zone)
	local item = {}
	local found = false
	for i=1, #Config.Zones[Zone].Items, 1 do
		if Config.Zones[Zone].Items[i].name == Item then
			item = Config.Zones[Zone].Items[i]
			found = true
			break
		end
	end

	if found then 
		return true, item.price, item.label
	else
		return false
	end
end


RegisterServerEvent('esx_shops:buyItem')
AddEventHandler('esx_shops:buyItem', function(itemName, amount, zone)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local Exists, price,label = GetItemFromShop(itemName,zone)
	amount = ESX.Math.Round(amount)

	if amount < 0 then
		print('esx_shops: ' .. xPlayer.identifier .. ' attempted to exploit the shop!')
		return
	end

	if not Exists then
		print('esx_shops: ' .. xPlayer.identifier .. ' attempted to exploit the shop!')
		return
	end

	if Exists then
		price = price * amount
		if xPlayer.getInventoryItem(itemName).count >= amount then
			xPlayer.addMoney(price, label .. " Purchase")
			xPlayer.removeInventoryItem(itemName, amount)
			xPlayer.showNotification(_U('bought', amount, label, ESX.Math.GroupDigits(price))) 
		   return true
		else
		   return false
		end
	end
end)
