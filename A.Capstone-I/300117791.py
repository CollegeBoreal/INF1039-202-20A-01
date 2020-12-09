minutes_to_convert = 123
hours_decimal = minutes_to_convert/60
hours_part = int (hours_decimal)

minutes_decimal = hours_decimal-hours_part
minutes_part = round (minutes_decimal*60)

print ("hours")
print ("hours_part")
print ("minutes")
print ("minutes_part")
