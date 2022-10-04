--start Vars
local cmd = require('otherstuff.commands')
local work = require('otherstuff.work')
local fight= require('otherstuff.fight')
local buy = require('otherstuff.buy')
local food = require("otherstuff.food")
local sleepcount = 0
local stand = require('otherstuff.standard')
VERSION = "1.6"

Energy = 100
Money = 100
RandomTemp = 0
--end Vars
--This is the main function. It is called once when the program starts.

function MainLoop()
io.write("\n")
io.write("What Would you like to do?\n")
Input = string.lower(io.read())

if Input == "sleep" then
if sleepcount >= 10 then
cmd.sleep()
sleepcount = 0
else
print('You arent tired you cant sleep!')
end
end

if Input == "work" then
work.work()
end

if Input == "eat" then
food.eat()
end

if Input == "cook" then
food.cook()
end

if Input == "list_food" then
food.list()
end

if Input == "fight" then
fight.flight()
end

if Input == "buy_food" then
buy.food()
end

if Input == "exit" then
print("exiting!")
os.exit()
end

math.randomseed(os.time())
sleepcount = sleepcount +1
MainLoop()
end
MainLoop()