local col_red = Color(250,30,90)
local function publishCoupon(iSumIgs, code)
  IGS.NotifyAll("*** ВНИМАНИЕ! ****")
  IGS.NotifyAll("Промокод на " .. PL_IGS(iSumIgs))
  IGS.NotifyAll("", col_red, code) -- "" костыль для оверрайда цвета
  IGS.NotifyAll("Активируй первым в /donate!")
end

local function generateAndPublishCoupon(iSumIgs)
  IGS.CreateCoupon(iSumIgs, 1, "generated_on_server", function(code)
    publishCoupon(iSumIgs, code)
  end)
end

local function giveaway(iSumIgs)
  if #player.GetAll() >= 5 then
    generateAndPublishCoupon(iSumIgs)
  end
end

timer.Create("ChatCouponsGenerator", 60 * 30, 0, function()
  giveaway(5)
end)