from selenium import webdriver
from selenium.webdriver.chrome.service import service

s=service("C:\Users\jrajvi\Learning\BP\chromedriver.exe")

driver=webdriver.Chrome(service=s)
driver.get("file:///C:/Users/jrajvi/Learning/BP/index.html")

