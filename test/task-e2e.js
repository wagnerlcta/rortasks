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
 
listingPage(ROOT_URL + 'bugs', "Bugs", "Code", "Product", "Component", "Version", "Summary", 
  "Description", "Importance", "Targetmilestone", "Assignedto", "Qacontact", "Url", 
  "Whiteboard", "Keywords", "Tags", "Dependson", "Blocks", "Origestimated", "Hoursworked", 
  "Hoursleft", "Deadline", "Additionalcomments", "Status");
 
findElementClass("table", "w3-table-all");
 
listingPage(ROOT_URL + 'bugzillausers', "Bugzillausers", "Loginname", "Realname", "Password",
  "Bugmaildisabled", "Disabletext", "Adminpermission", "Creategroupspermission", "Edituserspermission");
 
findElementClass("table", "w3-table-all");
 
driver.quit();
