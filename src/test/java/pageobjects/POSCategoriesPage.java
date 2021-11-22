package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;

public class POSCategoriesPage extends BasePO {

    private By addBtn = By.id("btn_BO_MN_CAT_AddNew");
    private By editBtn = By.id("btn_BO_MN_CAT_Edit");
    private By search = By.xpath("//input[@id='txtSearch']");
    private By table = By.id("tbl_BO_List_MN_CAT");
    private By history = By.id("btn_BO_HISTORY");
    private By actAndDeact = By.id("btn_BO_MN_ITM_AVAL");
    private By cloneBtn = By.id("btn_BO_MN_ITM_Clone");
    private By cloneConfirmationBtn = By.xpath("//div[contains(text(),'Are you sure you want to clone')]/..//following-sibling::div//button[text()='Clone']");
    private By delete = By.id("btn_BO_MN_CAT_Del");
    private By deleteOnWarning = By.xpath("//div[@data-title='Warning']//button[text()='Delete']");

    public Element deleteOnWarning() throws IOException, InterruptedException {
        return $(deleteOnWarning);
    }

    public Element delete() throws IOException, InterruptedException {
        return $(delete);
    }

    public Element cloneConfirmationBtn() throws IOException, InterruptedException {
        return $(cloneConfirmationBtn);
    }

    public Element cloneBtn() throws IOException, InterruptedException {
        return $(cloneBtn);
    }

    public Element actAndDeact() throws IOException, InterruptedException {
        return $(actAndDeact);
    }

    public Element history() throws IOException, InterruptedException {
        return $(history);
    }

    public Element editBtn() throws IOException, InterruptedException {
        return $(editBtn);
    }

    public Element table() throws IOException, InterruptedException {
        return $(table);
    }

    public Element search() throws IOException, InterruptedException {
        return $(search);
    }

    public Element addBtn() throws IOException, InterruptedException {
        return $(addBtn);
    }

}