package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.BrowserUtils;

public class HomePage {

    public HomePage(){
        PageFactory.initElements(BrowserUtils.getDriver(), this);
    }

    @FindBy(xpath = "//div[@class='info-box-one']/ul")
    public WebElement address;

    @FindBy(id = "dropdownMenu1")
    public WebElement langMenu;

    @FindBy(xpath = "//footer/div[1]/div/div/div[1]")
    public WebElement contactInfo;

    @FindBy(xpath = "//div[@class='flex-box']/div")
    public WebElement fiveBoxTxt;

    @FindBy(xpath = "//a[text()='Join Now']")
    public WebElement joinNow;

    @FindBy(xpath = "/html/body/div[1]/header/div[4]/div/div[2]")
    public WebElement navBar2;



}
