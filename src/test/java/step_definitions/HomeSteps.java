package step_definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import pages.CommonPage;
import pages.HomePage;
import utils.BrowserUtils;
import utils.CucumberLogUtils;

import java.util.List;




public class HomeSteps implements CommonPage {
    HomePage page;

    public HomeSteps() {
        page = new HomePage();

    }

    @Given("I open url of homepage")
    public void iOpenUrlOfHomepage() {
        BrowserUtils.getDriver();
    }

    @Then("Verify header text is {string}")
    public void verifyHeaderTextIs(String headerTxt) {
        BrowserUtils.assertEquals(BrowserUtils.getDriver().getTitle(), headerTxt);
    }

    @Then("Verify {string} is displayed")
    public void verifyIsDisplayed(String txt) {
        WebElement element = null;

        switch (txt) {
            case "10090 Main Street Fairfax, VA, USA":
                element = page.address;
                BrowserUtils.assertTrue(BrowserUtils.isDisplayed(element));
                break;
            case "English":
            case "Spanish":
            case "French":
                element = page.langMenu;
                BrowserUtils.click(element);
                BrowserUtils.assertEquals(getElementByXpath(XPATH_TEMPLATE_LINKTEXT, txt).getText(), txt);
                break;
            case "Address: 10090 Main St, Fairfax, VA":
            case "Phone: +1 703-831-3217":
            case "Email: Info@advancesystems.us":
            case "Mon to Sat: 9.00 am to 5:00 pm":
                element = page.contactInfo;
                BrowserUtils.assertTrue((BrowserUtils.isDisplayed(element)));
                break;
            case "Leadership Development":
            case "Capability Building":
            case "Rewards & Benefits":
            case "Employee & Employer Relations":
            case "Excellent Customer Service":
                break;
            case "Join Now":
                element = page.joinNow;
                BrowserUtils.assertTrue(BrowserUtils.isDisplayed(element));
                break;
            case "Home":
            case "About Us":
            case "Services":
            case "Clients":
            case "Join Us":
            case "Contact Us":
                element = page.navBar2;
                BrowserUtils.assertTrue(BrowserUtils.isDisplayed(element));
            default:
                element = BrowserUtils.getDriver().findElement(By.xpath(String.format(XPATH_TEMPLATE_TEXT_CONTAINS, txt)));
                BrowserUtils.assertTrue(BrowserUtils.isDisplayed(element));
                break;
        }
    }

    @Then("Verify {string} is enable")
    public void verifyIsEnable(String navBtn) {
        WebElement element;
        switch (navBtn) {
            case "English":
            case "Spanish":
            case "French":
                element = page.langMenu;
                BrowserUtils.click(element);
                BrowserUtils.assertTrue(getElementByXpath(XPATH_TEMPLATE_LINKTEXT, navBtn).isEnabled());
                break;
            case "Join Now":
                element = page.joinNow;
                BrowserUtils.click(element);
                break;
            case "Home":
            case "About Us":
            case "Services":
            case "Clients":
            case "Join Us":
            case "Contact Us":
                element = page.navBar2;
                BrowserUtils.assertTrue(getElementByXpath(XPATH_TEMPLATE_LINKTEXT, navBtn).isEnabled());
            default:
                BrowserUtils.assertTrue(getElementByXpath(XPATH_TEMPLATE_LINKTEXT, navBtn).isEnabled());
        }
    }

//    @Then("Verify webpage navigate to url page")
//    public void verifyWebpageNavigateToUrlPage() {
//        BrowserUtils.assertEquals(BrowserUtils.getDriver().getCurrentUrl(),
//                "https://tla-batch-6.github.io/advance-systems-test-b6/joinUs.html");
//
//    }

    @Then("Verify destination window as url as {string}")
    public void verifyDestinationWindowAsUrlAs(String url) {
        BrowserUtils.switchToNewWindow();
        BrowserUtils.assertEquals(BrowserUtils.getDriver().getCurrentUrl(),url);
    }

    @When("I scroll down")
    public void iScrollDown() {
        Actions a = new Actions(BrowserUtils.getDriver());
        for (int i = 0; i < 7 ; i++) {
            a.sendKeys(Keys.PAGE_DOWN)  ;
        }
        a.build().perform();
    }

    @Then("Verify {string} navigate to window as url as {string}")
    public void verifyNavigateToWindowAsUrlAs(String navBar2, String url) {

      //  BrowserUtils.waitForElementVisibility(getElementByXpath(XPATH_TEMPLATE_NAV_LINK_TEXT, navBar2));
       // BrowserUtils.click(getElementByXpath(XPATH_TEMPLATE_NAV_LINK_TEXT,navBar2));
        BrowserUtils.waitForElementClickability(getElementByXpath(XPATH_TEMPLATE_LINKTEXT, navBar2));
        BrowserUtils.click(getElementByXpath(XPATH_TEMPLATE_LINKTEXT,navBar2));
      //  BrowserUtils.switchToNewWindow();
        BrowserUtils.assertEquals(BrowserUtils.getDriver().getCurrentUrl(),url);
    }
}


