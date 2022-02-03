package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class OrderModelPopupOLOPage extends BasePO {

    private By successMsg = By.xpath("//div[text()='Your order submitted successfully.']");
    private By tranAndOrdNo = By.xpath("//div[contains(text(),'Transaction')]");
    private By OK = By.id("btnMsgBoxOk_Ok");

    public Element OK() throws IOException, InterruptedException {
        return $(OK);
    }

    public Element tranAndOrdNo() throws IOException, InterruptedException {
        return $(tranAndOrdNo);
    }

    public Element successMsg() throws IOException, InterruptedException {
        return $(successMsg);
    }

}