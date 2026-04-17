import pandas as pd

# Load data
df = pd.read_excel("C:\Users\dell\Downloads\KHUSHBOO\blinkit project\BlinkIT Grocery Data.xlsx")


# Basic cleaning
df.columns = df.columns.str.strip().str.lower().str.replace(" ", "_")

# KPIs
total_sales = df['sales'].sum()
avg_sales = df['sales'].mean()
no_of_items = df.shape[0]
avg_rating = df['rating'].mean()

print("Total Sales:", total_sales)
print("Avg Sales:", avg_sales)
print("No of Items:", no_of_items)
print("Avg Rating:", avg_rating)

# Groupings
fat_content = df.groupby('fat_content')['sales'].sum()
item_type = df.groupby('item_type')['sales'].sum().sort_values(ascending=False)
outlet_size = df.groupby('outlet_size')['sales'].sum()
outlet_location = df.groupby('outlet_location_type')['sales'].sum()
establishment = df.groupby('outlet_establishment_year')['sales'].sum()

print(fat_content)
print(item_type)
print(outlet_size)
print(outlet_location)
print(establishment)