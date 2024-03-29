@BasicAddMenuItems
Feature: Basic Add Menu Items
  This script is to validate Add Menu Items

  @Basic_Add_Menu_Items @RegressionSuite @BO_MenuItems @Menu_Settings @Back_Office
  Scenario: Basic_Add_Menu_Items_Testcase
    #Comment: Launch Adora Web URL in CHROME browser
    Given the web application "Adora_Web_URL" is launched in a "NewWindow"
    #Comment: Enter the Store_Key into username textbox present on Login Page
    When the user enters the user credential "#(Store_Key_AutomationStore)" into the "storeKey" textbox at the "LoginPage" page
    #Comment: Enter the Station_Key into Station_Key textbox present on Login Page
    When the user enters the secure credential "#(Station_Key_AutomationStore)" into the "stationKey" textbox at the "LoginPage" page
    #Comment: user click On the Connect Button
    And the user clicks the "connect" element at the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits Jquery for the page to load
    #Comment: Enter the Employee_Id into username textbox present on Login Page
    When the user enters the user credential "#(Employee_Id)" into the "employee_Id" textbox at the "LoginPage" page
    #Comment: Enter the Password into Password textbox present on Login Page
    When the user enters the secure credential "#(Password)" into the "password" textbox at the "LoginPage" page
    #Comment: The user enter at passsword field
    And the user sends keys "Key_enter" to the "password" element on the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: user click On the continueToLogin Button
    And the user clicks the "continueToLogin" element at the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: the user validate the Title of the page
    And the user validates that the page title "Equal To" "Adora" "validate_Title" "HardStopOnFailure"
    #Comment: the user click on back office
    And the user clicks the "backOffice" element at the "AdoraHeaderPage" page
    #Comment: the user click on Menu Items
    And the user clicks the "menuItems" element at the "MenuSettingPage" page
    #Comment: the user wait untile element displayed
    And the user validates the "menuItemTxt" element is visible at the "MenuSettingPage" page "validate_text" "HardStopOnFailure"
    #Comment: the user click on Add
    And the user clicks the "addBtn" element at the "MenuItemsPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "addMenuItemText" element to be "VISIBLE" on the "AddMenuItemsPage" page
    #Comment: the user enters the name On ADD Item
    And the user enters "#(nameUS)" into the "nameUS" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameUS" element at the "AddMenuItemsPage" page into the data dictionary with key "nameUS_value1"
    #Comment: the user enters the name
    And the user enters "#(webNameUS)" into the "webNameUS" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webNameUS" element at the "AddMenuItemsPage" page into the data dictionary with key "webNameUS_value1"
    #Comment: the user enters the name
    And the user enters "#(descriptionUS)" into the "descriptionUS" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "descriptionUS" element at the "AddMenuItemsPage" page into the data dictionary with key "descriptionUS_value1"
    #Comment: the user enters the name
    And the user enters "#(webDescriptionUS)" into the "webDescriptionUS" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webDescriptionUS" element at the "AddMenuItemsPage" page into the data dictionary with key "webDescriptionUS_value1"
    #Comment: the user enters the name
    And the user enters "#(nameSpanish)" into the "nameSpanish" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameSpanish" element at the "AddMenuItemsPage" page into the data dictionary with key "nameSpanish_value1"
    #Comment: the user enters the name
    And the user enters "#(webNameSpanish)" into the "webNameSpanish" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webNameSpanish" element at the "AddMenuItemsPage" page into the data dictionary with key "webNameSpanish_value1"
    #Comment: the user enters the name
    And the user enters "#(descriptionSpanish)" into the "descriptionSpanish" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "descriptionSpanish" element at the "AddMenuItemsPage" page into the data dictionary with key "descriptionSpanish_value1"
    #Comment: the user enters the name
    And the user enters "#(webDescriptionSpanish)" into the "webDescriptionSpanish" textbox at the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webDescriptionSpanish" element at the "AddMenuItemsPage" page into the data dictionary with key "webDescriptionSpanish_value1"
    #Cooment: the user enters the random Number and stored at data dictionary
    And the user enters random number into the "itemNumber" textbox at the "AddMenuItemsPage" page and store at dictionary key "item_Number_value1"
    #Comment: the user select the dine in check box
    And the user clicks the "dineInChkBx" element at the "AddMenuItemsPage" page
    #Comment: the user select the Take out check box
    And the user clicks the "takeOutChkBx" element at the "AddMenuItemsPage" page
    #Comment: the user select the delivery check box
    And the user clicks the "deliveryChkBx" element at the "AddMenuItemsPage" page
    #Cooment: the user click on small size dine in
    And the user clicks the "dineInSizeChkBx" element at the "AddMenuItemsPage" page
    #Cooment: the user click on small size take out
    And the user clicks the "takeOutSizeChkBx" element at the "AddMenuItemsPage" page
    #Cooment: the user click on small size delivery
    And the user clicks the "deliverySizeChkBx" element at the "AddMenuItemsPage" page
    #Cooment: the user click on small size default
    And the user clicks the "defualt" element at the "AddMenuItemsPage" page
    #Cooment: the user click on small size default
    And the user clicks the "save" element at the "AddMenuItemsPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: the user click on the item number row
    And the user clicks the "table" element with dictionary key "#(item_Number_value1)" at the "MenuItemsPage" page with xpath1 "#(ItemNumberXpath1)" and xpath2 "#(ItemNumberXpath2)"
    #Comment: the user store ID
    And store the displayed text of the "table" element at the "MenuItemsPage" page and get the dictionary key value "#(item_Number_value1)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number"
    #Comment: the user click on Edit Button
    And the user clicks the "editBtn" element at the "MenuItemsPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "addMenuItemText" element to be "VISIBLE" on the "AddMenuItemsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameUS" element at the "EditMenuItemsPage" page into the data dictionary with key "nameUS_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webNameUS" element at the "EditMenuItemsPage" page into the data dictionary with key "webNameUS_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "descriptionUS" element at the "EditMenuItemsPage" page into the data dictionary with key "descriptionUS_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webDescriptionUS" element at the "EditMenuItemsPage" page into the data dictionary with key "webDescriptionUS_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameSpanish" element at the "EditMenuItemsPage" page into the data dictionary with key "nameSpanish_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webNameSpanish" element at the "EditMenuItemsPage" page into the data dictionary with key "webNameSpanish_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "descriptionSpanish" element at the "EditMenuItemsPage" page into the data dictionary with key "descriptionSpanish_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "webDescriptionSpanish" element at the "EditMenuItemsPage" page into the data dictionary with key "webDescriptionSpanish_value2"
    #Comment: the user store Item Number
    And store the displayed text of the "itemNumber" element at the "EditMenuItemsPage" page into the data dictionary with key "Item_Number_value2"
    #Comment: user validate Name US Value
    And the user validates the data dictionary value of "#(nameUS_value1)" is "Equal To" data dictionary value of "#(nameUS_value2)" "validate_nameUS_value" "HardStopOnFailure"
    #Comment: user validate webNameUS Value
    And the user validates the data dictionary value of "#(webNameUS_value1)" is "Equal To" data dictionary value of "#(webNameUS_value2)" "validate_webNameUS_value" "HardStopOnFailure"
    #Comment: user validate descriptionUS Value
    And the user validates the data dictionary value of "#(descriptionUS_value1)" is "Equal To" data dictionary value of "#(descriptionUS_value2)" "validate_descriptionUS_value" "HardStopOnFailure"
    #Comment: user validate webDescriptionUS Value
    And the user validates the data dictionary value of "#(webDescriptionUS_value1)" is "Equal To" data dictionary value of "#(webDescriptionUS_value2)" "validate_descriptionUS_value" "HardStopOnFailure"
    #Comment: user validate Name Spanish Value
    And the user validates the data dictionary value of "#(nameSpanish_value1)" is "Equal To" data dictionary value of "#(nameSpanish_value2)" "validate_Spanish_value" "HardStopOnFailure"
    #Comment: user validate webNameSpanish Value
    And the user validates the data dictionary value of "#(webNameSpanish_value1)" is "Equal To" data dictionary value of "#(webNameSpanish_value2)" "validate_webNameSpanish_value" "HardStopOnFailure"
    #Comment: user validate descriptionSpanish Value
    And the user validates the data dictionary value of "#(descriptionSpanish_value1)" is "Equal To" data dictionary value of "#(descriptionSpanish_value2)" "validate_descriptionSpanish_value" "HardStopOnFailure"
    #Comment: user validate webDescriptionSpanish Value
    And the user validates the data dictionary value of "#(webDescriptionSpanish_value1)" is "Equal To" data dictionary value of "#(webDescriptionSpanish_value2)" "validate_WebDescriptionSpanish_value" "HardStopOnFailure"
    #Comment: user validate Item Number
    And the user validates the data dictionary value of "#(item_Number_value1)" is "Equal To" data dictionary value of "#(Item_Number_value2)" "validate_Item_Number_value" "HardStopOnFailure"
    #Comment: user validate the check box is selected
    And the user validates the "Dine In" item in the "dineInCheckBoxIsSelected" checkbox is checked at the "EditMenuItemsPage" page "validate_CheckBx_Selected" "HardStopOnFailure"
    #Comment: user validate the Take Out is selected
    And the user validates the "Take Out" item in the "TakeOutCheckBoxIsSelected" checkbox is checked at the "EditMenuItemsPage" page "validate_CheckBx_Selected" "HardStopOnFailure"
    #Comment: user validate the delivery is selected
    And the user validates the "Delivery" item in the "deliveryCheckBoxIsSelected" checkbox is checked at the "EditMenuItemsPage" page "validate_CheckBx_Selected" "HardStopOnFailure"
    #Comment: user validate the check box is selected
    And the user validates the item in the "dineInCheckBoxIsSelectedSize" checkbox is checked at the "EditMenuItemsPage" page "validate_CheckBx_Selected" "HardStopOnFailure"
    #Comment: user validate the Take Out is selected
    And the user validates the item in the "TakeOutCheckBoxIsSelectedSize" checkbox is checked at the "EditMenuItemsPage" page "validate_CheckBx_Selected" "HardStopOnFailure"
    #Comment: user validate the delivery is selected
    And the user validates the item in the "deliveryCheckBoxIsSelectedSize" checkbox is checked at the "EditMenuItemsPage" page "validate_CheckBx_Selected" "HardStopOnFailure"
    #Comment: the user validate radio button selected
    And the user validates the item in the "defaultSize" checkbox is checked at the "EditMenuItemsPage" page "validate_radio_Btn_Selected" "HardStopOnFailure"
    #Comment: the user click on Cancel Button
    And the user clicks the "cancelBtn" element at the "EditMenuItemsPage" page
    #Comment: the user page to load
    And the user waits for the dom to load
    #Comment: the user click on History Button
    And the user clicks the "history" element at the "MenuItemsPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "historyText" element to be "VISIBLE" on the "HistoryPage" page
    #Comment: user validate history text
    And the user validates "Compare_Strings" that the "historyText" element is "Equal To" "History" at the "HistoryPage" page "validate_Details_model" "HardStopOnFailure"
    #Comment: the user validate the ID number in History
    And the user validates "Compare_Strings" that the "table" element is "Equal To" "#(IdNumberExpectedValue)" at the "HistoryPage" page based on datadictionary "#(Id_Number)" and xpath1 "#(IDNumberXpath3)" and xpath2 "#(IdNumberXpath4)" "validate_ID_Number" "HardStopOnFailure"
    #Comment: the user click on close button
    And the user clicks the "close" element at the "HistoryPage" page

    #Comment: the user click on the item number row
    And the user clicks the "table" element with dictionary key "#(item_Number_value1)" at the "MenuItemsPage" page with xpath1 "#(ItemNumberXpath1)" and xpath2 "#(ItemNumberXpath2)"
    #Comment: the user click on Edit Button
    And the user clicks the "deleteBtn" element at the "MenuItemsPage" page
    #Comment: the user click on Delete Button on Warning popup
    And the user clicks the "deleteOnWarning" element at the "MenuItemsPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: the user wait the element is disabled
    And the user waits for the "delete" element to be "DISABLED" on the "MenuItemsPage" page