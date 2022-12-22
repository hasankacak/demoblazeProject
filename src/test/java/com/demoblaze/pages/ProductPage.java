package com.demoblaze.pages;

import com.demoblaze.utilities.BrowserUtils;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ProductPage extends BasePage{
    @FindBy(id = "nameofuser")
    public WebElement welcomeUsername_loc;

    public void verifyLogin_mtd(String expectedUsername){
        String actualUsername = welcomeUsername_loc.getText();
        Assert.assertEquals("user does Not match", expectedUsername, actualUsername);
        BrowserUtils.waitFor(5);
        System.out.println("expectedUsername = " + expectedUsername);
        System.out.println("actualUsername = " + actualUsername);
    }
}
