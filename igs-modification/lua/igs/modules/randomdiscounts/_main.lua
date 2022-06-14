local MAX_DISCOUNTS = 5 -- Количество товаров, которые получат скидку
local PERCENT_DISCOUNT = .25 -- Процент скидки. Здесь 25%

local function applyDiscounts(items_ids)
	for _,item_id in ipairs(items_ids) do
		local ITEM = IGS.GetItem(item_id)
		if not ITEM.null then
			local old_price = ITEM:Price()
			ITEM:SetPrice(old_price * (1 - PERCENT_DISCOUNT))
			ITEM:SetDiscountedFrom(old_price)
		end
	end
end

if SERVER then
	util.AddNetworkString("IGS.RegularDiscounts")

	local items_ids = {}
	for _ = 1, MAX_DISCOUNTS do
		local ITEM = table.Random(IGS.ITEMS.STORED)
		if not ITEM.null and not table.HasValue(items_ids, ITEM.id) then
			table.insert(items_ids, ITEM.id)
		end
	end

	applyDiscounts(items_ids)

	SetGlobalString("igs_discounts", util.TableToJSON(items_ids))

else
	hook.Add("IGS.Loaded", "fetch_discounts", function()
		local items_ids = GetGlobalString("igs_discounts")
		items_ids = util.JSONToTable(items_ids)
		applyDiscounts(items_ids)
	end)
end