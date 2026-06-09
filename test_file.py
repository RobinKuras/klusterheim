# app.py
import time
import os

print(f"Containeren kjører i miljøet: {os.getenv('ENV_NAME', 'Ukjent')}")
counter = 0
while True:
    print("SRE-lærling: Jeg lever --- ", counter+1)
    time.sleep(4)
    counter+=1