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

listingPage(ROOT_URL + 'bugs', "Bugs", "Code", "Product", "Component", "Version", "Summary", 
  "Description", "Importance", "Targetmilestone", "Assignedto", "Qacontact", "Url", 
  "Whiteboard", "Keywords", "Tags", "Dependson", "Blocks", "Origestimated", "Hoursworked", 
  "Hoursleft", "Deadline", "Additionalcomments", "Status");

clickLink('New Bug', 'New Bug');
findElementClass("form", "w3-card-4");

fillForm("bug_code", "1", "bug_product", "Product 1");
clickButton('Create Bug');
clickLink('Edit', 'Editing Bug');
findElementClass("form", "w3-card-4");

listingPage(ROOT_URL + 'bugzillausers', "Bugzillausers", "Loginname", "Realname", "Password",
  "Bugmaildisabled", "Disabletext", "Adminpermission", "Creategroupspermission", "Edituserspermission");

clickLink('New Bugzillauser', 'New Bugzillauser');
findElementClass("form", "w3-card-4");

fillForm("bugzillauser_loginname", "login1", "bugzillauser_realname", "Name 1");
clickButton('Create Bugzillauser');
clickLink('Edit', 'Editing Bugzillauser');
findElementClass("form", "w3-card-4");

driver.quit();
