import pandas as pd
import sys

city=sys.argv[1]

print('You chose : ' + city)


df=pd.read_csv("/app/data.csv", sep = ";")
count=df[(df.is_installed == "OUI") & (df.nom_arrondissement_communes == city)]["numbikesavailable"].sum()
print("The result is: " + str(count)) 