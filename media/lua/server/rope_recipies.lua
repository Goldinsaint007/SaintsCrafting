function Recipe.OnCreate.UnbundleRippedSheets(items, result, player)
  local item = items:get(0);

  if item:getType() == "TinyBundleOfRippedSheets" then
    player:getInventory():AddItem("SaintsRopes.SheetRope");

  elseif item:getType() == "SmallBundleOfRippedSheets" then
    player:getInventory():AddItem("SaintsRopes.ShortRope");

  elseif item:getType() == "BundleOfRippedSheets" then
    player:getInventory():AddItem("Base.Rope");

  elseif item:getType() == "BigBundleOfRippedSheets" then
    player:getInventory():AddItem("SaintsRopes.LongRope");
  end
end

function Recipe.OnGiveXP.RopeCraft(recipe, ingredients, result, player)
  if recipe:getOriginalname() == "Craft Sheet Rope" then
    if player:getPerkLevel(Perks.Tailoring) <= 2 then
      player:getXp():AddXP(Perks.Tailoring, 2);
      player:Say("recived 2 tailoring xp");

    elseif player:getPerkLevel(Perks.Tailoring) <= 3 then
      player:getXp():AddXP(Perks.Tailoring, 1);
      player:Say("recived 1 tailoring xp");
    end

  elseif recipe:getOriginalname() == "Craft Short Rope" then
    if player:getPerkLevel(Perks.Tailoring) <= 3 then
      player:getXp():AddXP(Perks.Tailoring, 3);
      player:Say("recived 3 tailoring xp");

    elseif player:getPerkLevel(Perks.Tailoring) <= 4 then
      player:getXp():AddXP(Perks.Tailoring, 2);
      player:Say("recived 2 tailoring xp");

    elseif player:getPerkLevel(Perks.Tailoring) <= 5 then
      player:getXp():AddXP(Perks.Tailoring, 1);
      player:Say("recived 1 tailoring xp");

    end
  elseif recipe:getOriginalname() == "Craft Rope" then
    if player:getPerkLevel(Perks.Tailoring) <= 4 then
      player:getXp():AddXP(Perks.Tailoring, 4);
      player:Say("recived 4 tailoring xp");

    elseif player:getPerkLevel(Perks.Tailoring) <= 5 then
      player:getXp():AddXP(Perks.Tailoring, 3);
      player:Say("recived 3 tailoring xp");

    elseif player:getPerkLevel(Perks.Tailoring) <= 6 then
      player:getXp():AddXP(Perks.Tailoring, 2);
      player:Say("recived 2 tailoring xp");

    elseif player:getPerkLevel(Perks.Tailoring) <= 7 then
      player:getXp():AddXP(Perks.Tailoring, 1);
      player:Say("recived 1 tailoring xp");

    end
  elseif recipe:getOriginalname() == "Craft Long Rope" then
    if player:getPerkLevel(Perks.Tailoring) <= 5 then
      player:getXp():AddXP(Perks.Tailoring, 5);
      player:Say("recived 5 tailoring xp");
      
    elseif player:getPerkLevel(Perks.Tailoring) <= 6 then
      player:getXp():AddXP(Perks.Tailoring, 4);
      player:Say("recived 4 tailoring xp")
      
    elseif player:getPerkLevel(Perks.Tailoring) <= 7 then
      player:getXp():AddXP(Perks.Tailoring, 3);
      player:Say("recived 3 tailoring xp")
      
    elseif player:getPerkLevel(Perks.Tailoring) <= 8 then
      player:getXp():AddXP(Perks.Tailoring, 2);
      player:Say("recived 2 tailoring xp")
      
    elseif player:getPerkLevel(Perks.Tailoring) <= 9 then
      player:getXp():AddXP(Perks.Tailoring, 1);
      player:Say("recived 1 tailoring xp")
    end
  end
end

function Recipe.OnGiveXP.RipFabric(recipe, ingredients, result, player)
  if player:getPerkLevel(Perks.Tailoring) <= 2 then
    player:getXp():AddXP(Perks.Tailoring, 2);
    player:Say("recived 3 tailoring xp");

  elseif player:getPerkLevel(Perks.Tailoring) <= 4 then
    player:getXp():AddXP(Perks.Tailoring, 1.5);
    player:Say("recived 2 tailoring xp");

  elseif player:getPerkLevel(Perks.Tailoring) <= 6 then
    player:getXp():AddXP(Perks.Tailoring, 1);
    player:Say("recived 1 tailoring xp");
  end
end
