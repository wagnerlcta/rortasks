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

var findElementClassText = function (element, clazz, text) {
  driver.sleep(CLICK_DELAY);
  waitFor(By.xpath('(//' + element + '[text()="' + text + '" and contains(@class, "' + clazz + '")])[last()]'), 
    3000, text + ' text and ' + clazz + ' class not found');  
}

var findNotElementClass = function (element, clazz) {
  driver.findElements(By.xpath("//" + element + "[contains(@class, '" + clazz + "')]")).then(
    function (elements) {
      if (elements.length > 0) {
        throw element + " element with " + clazz + " class found";
      }
    }
  );
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

var checkActions = function () {
  findElementClassText("a", "w3-bar-item w3-button", "Show");
  findElementClassText("a", "w3-bar-item w3-button", "Edit");
  findElementClassText("a", "w3-bar-item w3-button", "Destroy");
}

listingPage(ROOT_URL + 'bugs', "Bugs");
clickLink('New Bug', 'New Bug');
fillForm("bug_code", "1", "bug_product", "Product 1");
clickButton('Create Bug');
back();
checkActions();

listingPage(ROOT_URL + 'issues', "Issues");
clickLink('New Issue', 'New Issue');
fillForm("issue_code", "123", "issue_project", "Project 1");
clickButton('Create Issue');
back();
checkActions();

driver.quit();
