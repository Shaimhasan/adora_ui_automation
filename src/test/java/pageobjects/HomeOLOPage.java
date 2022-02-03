package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class HomeOLOPage extends BasePO {

    private By automationPizzaPMC = By.xpath("//button[@aria-label='Automation Pizza (P-M-C)']");
    private By cheesePizzaPMC = By.xpath("//button[@aria-label='Cheese Pizza (P-M-C)']");
    private By checkOut = By.id("btn_OB_CheckOut");

    public Element checkOut() throws IOException, InterruptedException {
        return $(checkOut);
    }

    public Element cheesePizzaPMC() throws IOException, InterruptedException {
        return $(cheesePizzaPMC);
    }

    public Element automationPizzaPMC() throws IOException, InterruptedException {
        return $(automationPizzaPMC);
    }

}