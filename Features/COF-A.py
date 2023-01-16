import pytest
from pytest_bdd import scenarios, given, when, then
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver=webdriver.Chrome("C:/Users/jrajvi/Learning/BP/chromedriver.exe")
driver.get("file:///C:/Users/jrajvi/Learning/BP/index.html")
CF = 'file:///C:/Users/jrajvi/Learning/BP/index.html'

scenarios('./Features/CheckOutForm-B.Feature')
@pytest.fixture
def browser():
    b = webdriver.Chrome()
    b.implicitly_wait(10)
    yield b
    b.quit()

@given('user is on the checkout page')
def cof_home(browser):
    browser.get(CF)

@when(parsers.parse('User clicks on Submit missing out the required field "{Submit}"'))
def search_button(browser, button):
    search_input = driver.find_elements_by_type('submit')
    search_input.send_keys(submit + Keys.RETURN)

@then(parsers.parse('User see error message "{Submit}"'))
def search_button(browser, button):
    search_input = browser.find_element_by_type('Submit')
    search_input.send_keys(submit + Keys.RETURN)






