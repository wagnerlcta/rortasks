var webdriver = require('selenium-webdriver'),
    By = webdriver.By,
    until = webdriver.until;

var driver = new webdriver.Builder().build();
var ROOT_URL = 'http://localhost:3000/';
var CLICK_DELAY = 500;

var find = function (condition, timeout, message) {
  return driver.findElement(condition);
};

var waitFor = function (condition, timeout, message) {
  driver.wait(until.elementLocated(condition), timeout, message);
  return find(condition, timeout, message);
};

var listingPage = function (url, title) {
  driver.get(url);
  waitFor(By.xpath("//span[text()='Listing " + title + "']"), 3000, title + ' Title not found');
}

var findElementClass = function (element, clazz) {
  waitFor(By.xpath(
    "//" + element + "[contains(@class, '" + clazz + "')]"), 
    3000, element + " element with " + clazz + " class not found");
}

var findElementIdClass = function (element, id, clazz) {
  waitFor(By.xpath(
    "//" + element + "[@id='" + id + "' and contains(@class, '" + clazz + "')]"), 
    3000, element + " element with " + id + " id and " + clazz + " class not found");
}

var findElementText = function (element, text) {
  driver.sleep(CLICK_DELAY);
  waitFor(By.xpath('(//' + element + '[text()="' + text + '"])[last()]'), 3000, text + ' text not found');  
}

var clickLink = function (link, title) {
  driver.sleep(CLICK_DELAY);
  waitFor(By.xpath('(//a[text()="' + link + '"])[last()]'), 3000, link + ' Link not found').click();
  if (title) {
    waitFor(By.xpath('//h1[text()="' + title + '"]'), 3000, title + ' Title not found');
  }
}

var fillForm = function () {
  for(var i = 0; i < arguments.length; i++) { 
    var input = find(By.id(arguments[i++]));
    input.clear();
    input.sendKeys(arguments[i]);
  }
}

var clickButton = function(label) {
  find(By.xpath('//input[@value="' + label + '"]')).click();
  driver.sleep(CLICK_DELAY);
}

var back = function () {
  driver.sleep(CLICK_DELAY);
  find(By.xpath('//a[text()="Back"]')).click();
  driver.sleep(CLICK_DELAY);
}

var labelAfterInput = function(inputId) {
  waitFor(By.xpath('//input[@id="' + inputId + '"]/following-sibling::label'), 3000, 
    'Label not found after input ' + inputId);
}

var checkTitleBar = function () {
  findElementClass('div', 'w3-bar w3-large w3-theme-d4');
  findElementClass('a', 'w3-bar-item w3-button');
  findElementClass('i', 'fa fa-bars');
  findElementClass('span', 'w3-bar-item');
  findElementClass('a', 'w3-bar-item w3-button w3-right');
  findElementClass('i', 'fa fa-search');
}

var checkCard = function () {
  findElementClass('div', 'w3-panel w3-white w3-card-2 w3-display-container');
}

listingPage(ROOT_URL + 'testcases', "Testcases");
checkTitleBar();

clickLink('New Testcase', 'New Testcase');
fillForm("testcase_code", "1", "testcase_title", "Test case 1");
clickButton('Create Testcase');
back();

checkCard();
findElementText('p', '1');
findElementText('p', 'Test case 1');


listingPage(ROOT_URL + 'campaigns', "Campaigns");
checkTitleBar();

clickLink('New Campaign', 'New Campaign');
fillForm("campaign_code", "510", "campaign_name", "Campaign 1", "campaign_status", "New");
clickButton('Create Campaign');
back();

checkCard();
findElementText('p', '510');
findElementText('p', 'Campaign 1');
findElementText('p', 'New');

driver.quit();
