package pageobjects;

import core.BasePO;
import core.Element;
import org.openqa.selenium.By;

import java.io.IOException;
import java.util.List;

public class EditMenuItemsPage extends BasePO {

    private By nameUS = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_Name'])[1]");
    private By webNameUS = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_WebName'])[1]");
    private By descriptionUS = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_Desc'])[1]");
    private By webDescriptionUS = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_WebDesc'])[1]");
    private By nameSpanish = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_Name'])[2]");
    private By webNameSpanish = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_WebName'])[2]");
    private By descriptionSpanish = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_Desc'])[2]");
    private By webDescriptionSpanish = By.xpath("(//input[@name='txt_BO_MN_ITM_ADDEDT_WebDesc'])[2]");
    private By itemNumber = By.id("txt_BO_MN_ITM_ADDEDT_ItemNumber");
    private By dineInChkBx = By.id("chk_BO_MN_ITM_ADDEDT_DineIn");
    private By takeOutChkBx = By.id("chk_BO_MN_ITM_ADDEDT_TakeOut");
    private By deliveryChkBx = By.id("chk_BO_MN_ITM_ADDEDT_Delivery");
    private By dineInSizeChkBx = By.id("chk_BO_MN_ITM_ADDEDT_Sizes_DineIn_235");
    private By takeOutSizeChkBx = By.id("chk_BO_MN_ITM_ADDEDT_Sizes_TakeOut_236");
    private By deliverySizeChkBx = By.id("chk_BO_MN_ITM_ADDEDT_Sizes_Delivery_236");
    private By defualt = By.id("rdo_BO_MN_ITM_ADDEDT_Sizes_Default_235");
    private By save = By.xpath("//button[@onclick='BO_MN_ITM_ADDEDT_Save();']");
    private By dineInCheckBoxIsSelected = By.xpath("//label[@id='chk_BO_MN_ITM_ADDEDT_DineIn']");
    private By TakeOutCheckBoxIsSelected = By.xpath("//label[@id='chk_BO_MN_ITM_ADDEDT_TakeOut']");
    private By deliveryCheckBoxIsSelected = By.xpath("//label[@id='chk_BO_MN_ITM_ADDEDT_Delivery']");
    private By dineInCheckBoxIsSelectedSize = By.xpath("//label[@id='chk_BO_MN_ITM_ADDEDT_Sizes_DineIn_235']");
    private By TakeOutCheckBoxIsSelectedSize = By.xpath("//label[@id='chk_BO_MN_ITM_ADDEDT_Sizes_TakeOut_235']");
    private By deliveryCheckBoxIsSelectedSize = By.xpath("//label[@id='chk_BO_MN_ITM_ADDEDT_Sizes_Delivery_235']");
    private By defaultSize = By.xpath("//label[@id='rdo_BO_MN_ITM_ADDEDT_Sizes_Default_235']");
    private By cancelBtn = By.xpath("//button[@onclick='BO_MN_ITM_ADDEDT_Close();']");

    public Element cancelBtn() throws IOException, InterruptedException {
        return $(cancelBtn);
    }

    public Element defaultSize() throws IOException, InterruptedException {
        return $(defaultSize);
    }

    public Element deliveryCheckBoxIsSelectedSize() throws IOException, InterruptedException {
        return $(deliveryCheckBoxIsSelectedSize);
    }

    public Element TakeOutCheckBoxIsSelectedSize() throws IOException, InterruptedException {
        return $(TakeOutCheckBoxIsSelectedSize);
    }

    public Element dineInCheckBoxIsSelectedSize() throws IOException, InterruptedException {
        return $(dineInCheckBoxIsSelectedSize);
    }

    public List<Element> dineInCheckBoxIsSelected() throws IOException, InterruptedException {
        return $$(dineInCheckBoxIsSelected);
    }

    public List<Element> TakeOutCheckBoxIsSelected() throws IOException, InterruptedException {
        return $$(TakeOutCheckBoxIsSelected);
    }

    public List<Element> deliveryCheckBoxIsSelected() throws IOException, InterruptedException {
        return $$(deliveryCheckBoxIsSelected);
    }

    public Element save() throws IOException, InterruptedException {
        return $(save);
    }

    public Element defualt() throws IOException, InterruptedException {
        return $(defualt);
    }

    public Element deliverySizeChkBx() throws IOException, InterruptedException {
        return $(deliverySizeChkBx);
    }

    public Element takeOutSizeChkBx() throws IOException, InterruptedException {
        return $(takeOutSizeChkBx);
    }

    public Element dineInSizeChkBx() throws IOException, InterruptedException {
        return $(dineInSizeChkBx);
    }

    public Element deliveryChkBx() throws IOException, InterruptedException {
        return $(deliveryChkBx);
    }

    public Element takeOutChkBx() throws IOException, InterruptedException {
        return $(takeOutChkBx);
    }

    public Element dineInChkBx() throws IOException, InterruptedException {
        return $(dineInChkBx);
    }

    public Element itemNumber() throws IOException, InterruptedException {
        return $(itemNumber);
    }

    public Element nameUS() throws IOException, InterruptedException {
        return $(nameUS);
    }

    public Element webNameUS() throws IOException, InterruptedException {
        return $(webNameUS);
    }

    public Element descriptionUS() throws IOException, InterruptedException {
        return $(descriptionUS);
    }

    public Element webDescriptionUS() throws IOException, InterruptedException {
        return $(webDescriptionUS);
    }

    public Element nameSpanish() throws IOException, InterruptedException {
        return $(nameUS);
    }

    public Element webNameSpanish() throws IOException, InterruptedException {
        return $(webNameUS);
    }

    public Element descriptionSpanish() throws IOException, InterruptedException {
        return $(descriptionUS);
    }

    public Element webDescriptionSpanish() throws IOException, InterruptedException {
        return $(webDescriptionUS);
    }


}
