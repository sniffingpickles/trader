function print(message)
	DEFAULT_CHAT_FRAME:AddMessage(message);
end
--print("hello");


function trader_OnLoad()
	DEFAULT_CHAT_FRAME:AddMessage("stuff loaded");
	this:RegisterEvent("TRADE_REQUEST"); 
    this:RegisterEvent("TRADE_MONEY_CHANGED"); 
    this:RegisterEvent("TRADE_SHOW"); 
    this:RegisterEvent("TRADE_CLOSE"); 
    this:RegisterEvent("TRADE_ACCEPT_UPDATE"); 
    --DEFAULT_CHAT_FRAME:AddMessage("stuff loaded");
end



function trader_OnEvent()
	if (event == "TRADE_ACCEPT_UPDATE" or event == "TRADE_MONEY_CHANGED") then
		AcceptTrade();
		--DEFAULT_CHAT_FRAME:AddMessage("trade window open");
	end
end