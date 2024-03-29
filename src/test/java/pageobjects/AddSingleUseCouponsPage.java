package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class AddSingleUseCouponsPage extends BasePO {

    private By name = By.id("txt_BO_CP_SUC_ADDEDT_Name");
    private By expirationDate = By.id("txt_BO_CP_SUC_ADDEDT_ExpDate");
    private By startDate = By.id("txt_BO_CP_SUC_ADDEDT_StartDate");
    private By couponRadioBtn = By.xpath("(//input[@name='rdo_BO_CP_SUC_ADDEDT_CPNs'])[1]");
    private By singleUseCouponsTxtPopup = By.xpath("//div[@id='div_BO_CP_SUC_ADDEDT_DIALOG_modal_view']//span[text()='Single Use Coupons']");
    private By save = By.xpath("//button[@onclick='BO_CP_SUC_ADDEDT_Save();']");

    public Element startDate() throws IOException, InterruptedException {
        return $(startDate);
    }

    public Element singleUseCouponsTxtPopup() throws IOException, InterruptedException {
        return $(singleUseCouponsTxtPopup);
    }

    public Element expirationDate() throws IOException, InterruptedException {
        return $(expirationDate);
    }

    public Element couponRadioBtn() throws IOException, InterruptedException {
        return $(couponRadioBtn);
    }

    public Element save() throws IOException, InterruptedException {
        return $(save);
    }

    public Element name() throws IOException, InterruptedException {
        return $(name);
    }

}
