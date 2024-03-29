package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class HomeOLOPage extends BasePO {

    private By automationPizzaPMC = By.xpath("//button[@aria-label='Automation Pizza (P-M-C)']");
    private By chickenBaconPizzaNone = By.xpath("//button[@aria-label='Chicken Bacon Ranch (None)']");
    private By hawaiianPizzaP = By.xpath("//button[@aria-label='Hawaiian Pizza (P)']");
    private By chicagoStylePizzaM = By.xpath("//button[@aria-label='Chicago Style Pizza (M)']");
    private By veggiePizzaC = By.xpath("//button[@aria-label='Veggie Pizza (C)']");
    private By pepperoniPizzaMC = By.xpath("//button[@aria-label='Pepperoni Pizza (M-C)']");
    private By supremePizzaPM = By.xpath("//button[@aria-label='Supreme Pizza (P-M)']");
    private By cheesePizzaPMC = By.xpath("//button[@aria-label='Cheese Pizza (P-M-C)']");
    private By checkOut = By.id("btn_cart_checkout");
    private By orderTotal = By.xpath("//div[@ltag='OrderTotal']//following-sibling::div");

    public Element orderTotal() throws IOException, InterruptedException {
        return $(orderTotal);
    }

    public Element supremePizzaPM() throws IOException, InterruptedException {
        return $(supremePizzaPM);
    }

    public Element pepperoniPizzaMC() throws IOException, InterruptedException {
        return $(pepperoniPizzaMC);
    }

    public Element veggiePizzaC() throws IOException, InterruptedException {
        return $(veggiePizzaC);
    }

    public Element chicagoStylePizzaM() throws IOException, InterruptedException {
        return $(chicagoStylePizzaM);
    }

    public Element hawaiianPizzaP() throws IOException, InterruptedException {
        return $(hawaiianPizzaP);
    }

    public Element chickenBaconPizzaNone() throws IOException, InterruptedException {
        return $(chickenBaconPizzaNone);
    }

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