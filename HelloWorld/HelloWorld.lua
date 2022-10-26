--message("Hello World")

---------------------------

--local name = UnitName("player") -- your character name

-- Hello, Crav!
--message("Hello, " .. name .. "!")

--------------------------------------

--SLASH_HELLO1 = "/helloworld" -- register a slash command
--SLASH_HELLO2 = "/hellow"
 
-- in game /helloworld Crav
--local function HelloWorldHandler(name)
    -- name === Crav
    -- Hello, {name}!
--    message("Hello, " .. name .. "!")
--end

--SlashCmdList["HELLO"] = HelloWorldHandler

-------------------------------------------

-- Quando digitamos os comandos e eu não dou um nome adicional, ele pega o nome do meu personagem.

--SLASH_HELLO1 = "/helloworld" -- register a slash command
--SLASH_HELLO2 = "/hellow"
 
-- in game /helloworld Crav
--local function HelloWorldHandler(name)
--   if(string.len(name) > 0) then
--       message("Hello, " .. name .. "!")
--  else
--       local playerName = UnitName("player")
--
--      message("Hello, " .. playerName .. "!")
--   end
--end

--SlashCmdList["HELLO"] = HelloWorldHandler

----------------------------------------------
-- Reescrevendo o código de uma forma mais legível

SLASH_HELLO1 = "/helloworld" -- register a slash command
SLASH_HELLO2 = "/hellow"

local function showGreeting(name)
    local greeting = "Hello, " .. name .. "!"

    message(greeting)
end

local function HelloWorldHandler(name)
    local userAddedName = string.len(name) > 0

    if(userAddedName) then
        showGreeting(name)
    else
       local playerName = UnitName("player")
        showGreeting(playerName)
   end
end

SlashCmdList["HELLO"] = HelloWorldHandler
