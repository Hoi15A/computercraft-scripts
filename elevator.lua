local input = "top"
local output = "back"
local timeout = 30

print("Polling input")

while true do
    sleep(0.5)
    if redstone.getInput(input) then
        redstone.setOutput(output, true)
        sleep(timeout)
        redstone.setOutput(output, false)
    end
end
