RegisterNetEvent("rawr:toggleNUI")
AddEventHandler("rawr:toggleNUI", function(display)
    SendNUIMessage({
    type = "ui",
    display = display
  })
end)