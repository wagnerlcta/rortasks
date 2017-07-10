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

var findNotElementClass = function (element, clazz) {
  driver.findElements(By.xpath("//" + element + "[contains(@class, '" + clazz + "')]")).then(
    function (elements) {
      if (elements.length > 0) {
        throw element + " element with " + clazz + " class found";
      }
    }
  );
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

var checkCard = function () {
  findElementClass("ul", "w3-ul w3-hoverable");
  findElementClass("li", "w3-border");
  findElementClass("span", "w3-tag w3-blue");
}

var checkNotCard = function () {
  findNotElementClass("ul", "w3-ul w3-hoverable");
  findNotElementClass("li", "w3-border");
  findNotElementClass("span", "w3-tag w3-blue");
}

listingPage(ROOT_URL + 'testcases', "Testcases");
clickLink('New Testcase', 'New Testcase');
fillForm("testcase_code", "12", "testcase_title", "Title 1");
clickButton('Create Testcase');
back();
checkCard();
findElementText('span', '12');
findElementText('span', 'Title 1');

listingPage(ROOT_URL + 'quizzes', "Quizzes");
clickLink('New Quiz', 'New Quiz');
fillForm("quiz_code", "123", "quiz_name", "Quiz 1");
clickButton('Create Quiz');
back();
checkCard();
findElementText('span', '123');
findElementText('span', 'Quiz 1');

listingPage(ROOT_URL + 'courses', "Courses");
clickLink('New Course', 'New Course');
fillForm("course_code", "111", "course_fullname", "Course 1");
clickButton('Create Course');
back();
checkCard();
findElementText('span', '111');
findElementText('span', 'Course 1');

listingPage(ROOT_URL + 'leads', "Leads");
clickLink('New Lead', 'New Lead');
fillForm("lead_code", "100", "lead_firstname", "Lead 1");
clickButton('Create Lead');
back();
checkNotCard();

driver.quit();
