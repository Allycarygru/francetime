getgenv().franceHour :: number = 7
getgenv().franceMinute :: number = 0

getgenv().FR_OFFSET :: number = 1
getgenv().UK_OFFSET :: number = 0
getgenv().US_OFFSET :: number = -5

getgenv().formatTime :: (number, number) -> string = function(h: number, m: number): string
	return string.format("%02d:%02d", h % 24, m)
end

getgenv().utcHour :: number = getgenv().franceHour - getgenv().FR_OFFSET
getgenv().ukHour :: number = getgenv().utcHour + getgenv().UK_OFFSET
getgenv().usHour :: number = getgenv().utcHour + getgenv().US_OFFSET

print("France :", getgenv().formatTime(getgenv().franceHour, getgenv().franceMinute))
print("UK :", getgenv().formatTime(getgenv().ukHour, getgenv().franceMinute))
print("US :", getgenv().formatTime(getgenv().usHour, getgenv().franceMinute))

-- thanks for reading and if u think this is Lua not it is not ! It's LUAU IT LIT SAYS blob.luau ! 
