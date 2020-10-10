minutes_to_convert = 123
hours_decimal = minutes_to_convert/60
hours_part = int(hours_decimal)
minutes_decimal = hours_decimal-hours_part
minutes_part = minutes_to_convert%6
minutes_part = round(minutes_decimal*60)
print("hours", minutes_to_convert/60)
print("hours_part", int(hours_decimal))
print("Minutes", minutes_decimal / 60)
print("", minutes_to_convert%6)
print("",minutes_part * 60)