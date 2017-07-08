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
  waitFor(By.xpath("//h1[text()='Listing " + title + "']"), 3000, title + ' Title not found');
  for(var i = 2; i < arguments.length; i++) {
    waitFor(By.xpath('//th[text()="' + arguments[i] + '"]'), 3000, arguments[i] + ' Heading not found');
  }
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

listingPage(ROOT_URL + 'testcases', "Testcases", "Code", "Title", "Summary", "Preconditions", "Status",
  "Importance", "Minutes");

clickLink('New Testcase', 'New Testcase');
findElementClass("form", "w3-container");
findElementIdClass('input', 'testcase_title', 'w3-input');
labelAfterInput('testcase_title');
findElementIdClass('input', 'testcase_code', 'w3-input');
labelAfterInput('testcase_code');
findElementIdClass('input', 'testcase_summary', 'w3-input');
labelAfterInput('testcase_summary');
findElementIdClass('input', 'testcase_minutes', 'w3-input');
labelAfterInput('testcase_minutes');

listingPage(ROOT_URL + 'leads', "Leads", "Code", "Owner", "Firstname", "Lastname", "Company",
  "Title", "Status", "Phone", "Email", "Street", "City", "State", "Zipcode", "County", "Website", 
  "Numberofemployees", "Annualrevenue", "Source", "Industry", "Description");

clickLink('New Lead', 'New Lead');
findElementClass("form", "w3-container");
findElementIdClass('input', 'lead_code', 'w3-input');
labelAfterInput('lead_code');
findElementIdClass('input', 'lead_owner', 'w3-input');
labelAfterInput('lead_owner');
findElementIdClass('input', 'lead_annualrevenue', 'w3-input');
labelAfterInput('lead_annualrevenue');
findElementIdClass('input', 'lead_city', 'w3-input');
labelAfterInput('lead_city');

driver.quit();
