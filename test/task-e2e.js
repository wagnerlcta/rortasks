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

var findElementMinMax = function (element, min, max) {
  waitFor(By.xpath(
    "//" + element + "[@min=" + min + " and @max=" + max + "]"), 
    3000, element + " element with " + min + " min and " + max + " max not found");
}

var findElementClass = function (element, clazz) {
  waitFor(By.xpath(
    "//" + element + "[contains(@class, '" + clazz + "')]"), 
    3000, element + " element with " + clazz + " class not found");
}

var findNotElementMinMax = function (element, min, max) {
  driver.findElements(By.xpath("//" + element + "[@min=" + min + " and @max=" + max + "]")).then(
    function (elements) {
      if (elements.length > 0) {
        throw element + " element with " + min + " min and " + max + " max found";
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

var checkLimit = function () {
  findElementMinMax("input", 0, 500);
}

var checkNotLimit = function () {
  findNotElementMinMax("input", 0, 500);
}

listingPage(ROOT_URL + 'bugs', "Bugs");
clickLink('New Bug', 'New Bug');
checkLimit();

listingPage(ROOT_URL + 'issues', "Issues");
clickLink('New Issue', 'New Issue');
checkLimit();

listingPage(ROOT_URL + 'projects', "Projects");
clickLink('New Project', 'New Project');
checkNotLimit();

driver.quit();
