function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count >= amount
  end
end

function primaryonly()
  if (has("DartMonkey-TUnlock") or has("BoomerangMonkey-TUnlock") or has("BombShooter-TUnlock") or has("TackShooter-TUnlock") or has("IceMonkey-TUnlock") or has("GlueGunner-TUnlock")) then
    return 1
  else
    return 0
  end
end

function militaryonly()
  if (has("SniperMonkey-TUnlock") or has("MonkeySub-TUnlock") or has("MonkeyBuccaneer-TUnlock") or has("MonkeyAce-TUnlock") or has("HeliPilot-TUnlock") or has("DartlingGunner-TUnlock") or has("MortarMonkey-TUnlock")) then
    return 1
  else
    return 0
  end
end

function magiconly()
  if (has("WizardMonkey-TUnlock") or has("SuperMonkey-TUnlock") or has("NinjaMonkey-TUnlock") or has("Alchemist-TUnlock") or has("Druid-TUnlock") or has("Mermonkey-TUnlock")) then
    return 1
  else
    return 0
  end
end