package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class PostUnPostInventoryEntryPage extends BasePO {

    private By post = By.xpath("//dialog[contains(@id,'div_Message')]//button[text()='Post']");
    private By unPost = By.xpath("//dialog[contains(@id,'div_Message')]//button[text()='Yes']");
    private By warningTxt = By.xpath("//div[text()='Warning']");
    private By validatePost = By.xpath("//i[@class='icon-check']");

    public Element validatePost() throws IOException, InterruptedException {
        return $(validatePost);
    }

    public Element warningTxt() throws IOException, InterruptedException {
        return $(warningTxt);
    }

    public Element post() throws IOException, InterruptedException {
        return $(post);
    }

    public Element unPost() throws IOException, InterruptedException {
        return $(unPost);
    }

}
