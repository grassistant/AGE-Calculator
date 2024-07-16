 from datetime import datetime 
def calculate_age(birth_date): 
# Convert the birth date string to a datetime object 
birth_date = datetime.strptime(birth_date, '%Y-%m-%d') 
 
# Get the current date 
current_date = datetime.now() 
 
# Calculate the age 
age = current_date.year - birth_date.year - ((current_date.month, 
current_date.day) < (birth_date.month, birth_date.day)) 
 
return age 
 
def calculate_days(birth_date): 
# Convert the birth date string to a datetime object 
birth_date = datetime.strptime(birth_date, '%Y-%m-%d') 
 
# Get the current date 
current_date = datetime.now() 
 
# Calculate the number of days 
days = (current_date - birth_date).days 
return days 
def calculate_months(birth_date): 
# Convert the birth date string to a datetime object 
birth_date = datetime.strptime(birth_date, '%Y-%m-%d') 
 
# Get the current date 
current_date = datetime.now() 
 
# Calculate the number of months 
months = (current_date.year - birth_date.year) * 12 + current_date.month - 
birth_date.month 
 
return months 
 
def calculate_hours(birth_date): 
# Convert the birth date string to a datetime object 
birth_date = datetime.strptime(birth_date, '%Y-%m-%d')

# Get the current date 
current_date = datetime.now() 
 
# Calculate the number of hours 
hours = (current_date - birth_date).total_seconds() / 3600 
return hours 
# Get user input for name and birth date 
name = input("Enter your name: ") 
birth_date_str = input("Enter your birth date in YYYY-MM-DD format: ") 
 
try: 
age = calculate_age(birth_date_str) 
days = calculate_days(birth_date_str) 
months = calculate_months(birth_date_str) 
hours = calculate_hours(birth_date_str) 
 
print(f"{name}, you are {age} years old.") 
print(f"You have lived for {days} days, {months} months, and {hours:.2f} 
hours.") 
except ValueError: 
print("Invalid date format. Please use YYYY-MM-DD.")
