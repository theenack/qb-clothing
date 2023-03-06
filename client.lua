Stores = { 
  vector3(1693.32, 4823.48, 41.06), 
  vector3(-712.215881, -155.352982, 37.4151268), 
  vector3(-1192.94495, -772.688965, 17.3255997), 
  vector3(425.236, -806.008, 28.491), 
  vector3(-162.658, -303.397, 38.733), 
  vector3(75.950, -1392.891, 28.376), 
  vector3(-822.194, -1074.134, 10.328), 
  vector3(-1450.711, -236.83, 48.809), 
  vector3(4.254, 6512.813, 30.877), 
  vector3(615.180, 2762.933, 41.088), 
  vector3(1196.785, 2709.558, 37.222), 
  vector3(-3171.453, 1043.857, 19.863), 
  vector3(-1100.959, 2710.211, 18.107), 
  vector3(-1207.65, -1456.88, 4.3784737586975), 
  vector3(121.76, -224.6, 53.56), 
}
RegisterCommand('outfits', function(source, args) 
    local pos = GetEntityCoords(PlayerPedId()) 
    local canOpen = false for k,v in pairs(Stores) do 
      if #(pos - v) < 30.0 then canOpen = true 
      end 
    end 
    if canOpen then 
      TriggerEvent("qb-clothing:client:openOutfitMenu") 
    else 
      QBCore.Functions.Notify("You must be in a clothing store!", "error") 
    end 
  end, false)
