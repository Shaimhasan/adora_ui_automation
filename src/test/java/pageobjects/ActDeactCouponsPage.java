package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class ActDeactCouponsPage extends BasePO {

    private By paidDineIn = By.xpath("//input[normalize-space(@id)='chk_BO_CP_CPN_AVAL_OSTs_1_1']");
    private By activeChkBx = By.xpath("//input[normalize-space(@id)='chk_BO_CP_CPN_AVAL_Active']");
    private By activeChkBxIsSelected = By.xpath("//label[@for='chk_BO_CP_CPN_AVAL_OSTs_1_1']");
    private By save = By.xpath("//button[@onclick='BO_CP_CPN_AVAL_Save();']");
    private By cancel = By.xpath("//button[@id='btn_BO_CP_CPN_AVAL_Cancel' and text()='Close']");
    private By paidDineInIsSelected = By.xpath("//label[@for='chk_BO_CP_CPN_AVAL_OSTs_1_1']");
    private By couponsTextVal = By.xpath("//span[@id='div_BO_CP_CPN_AVAL_DIALOG_Header_Title']");

    public Element activeChkBxIsSelected() throws IOException, InterruptedException {
        return $(activeChkBxIsSelected);
    }

    public Element activeChkBx() throws IOException, InterruptedException {
        return $(activeChkBx);
    }

    public Element couponsTextVal() throws IOException, InterruptedException {
        return $(couponsTextVal);
    }

    public Element cancel() throws IOException, InterruptedException {
        return $(cancel);
    }

    public Element paidDineIn() throws IOException, InterruptedException {
        return $(paidDineIn);
    }

    public Element paidDineInIsSelected() throws IOException, InterruptedException {
        return $(paidDineInIsSelected);
    }

    public Element save() throws IOException, InterruptedException {
        return $(save);
    }


}
