Feature: Basic Copy To Inventory Entry
  This script is to validate Copy To Inventory Entry

  @Basic_CopyTo_Inventory_Entry @RegressionSuite @BO_Inventory_Entry @Inventory @Back_Office
  Scenario: Basic_CopyTo_Inventory_Entry_Testcase
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
    #Comment: the user click Discounts
    And the user clicks the "inventory" element at the "InventoryPage" page

    #Comment: the user click on Menu Items
    And the user clicks the "countSheet" element at the "InventoryPage" page
    #Comment: The user wait until page is visible
    And the user waits for the "countSheetTxt" element to be "VISIBLE" on the "CountSheetPage" page
    #Comment : the user clicks and check If element present
    And the user custom clicks If element present the "table" element with Column Name "Frequency" and value "tblRowXIN_CNT" at the "CountSheetPage" page with element 1 "delete" and element 2 "deleteOnWarning" element 3 "editBtnDisable"
    #Comment: the user click on Add
    And the user clicks the "addBtn" element at the "CountSheetPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "countSheetTxtPopup" element to be "VISIBLE" on the "AddCountSheetPage" page
    #Comment: the user select the dropdown values
    And the user selects value "Weekly" from the "frequency" dropdown at the "AddCountSheetPage" page
    #Comment: the user validate the drop down value selected
    And the user selects value from the "frequency" dropdown equal to given value "Weekly" at the "AddCountSheetPage" page
    #Comment: the user select the dropdown values
    And the user selects value "Freezer" from the "location" dropdown at the "AddCountSheetPage" page
    #Comment: the user validate the drop down value selected
    And the user selects value from the "location" dropdown equal to given value "Freezer" at the "AddCountSheetPage" page
    #Comment: the user click on checkbox
    And the user clicks the "allItems" element at the "AddCountSheetPage" page
    #Comment: the user validate check box selected
    And the user validates the item in the "allItems" checkbox is checked at the "AddCountSheetPage" page "validate_checkbox_Selected" "HardStopOnFailure"
    #Comment: the user click on checkbox
    And the user clicks the "items" element at the "AddCountSheetPage" page
    #Comment: the user validate check box selected
    And the user validates the item in the "items" checkbox is checked at the "AddCountSheetPage" page "validate_checkbox_Selected" "HardStopOnFailure"
    #Comment: the user click save
    And the user clicks the "save" element at the "AddCountSheetPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load

    #Comment: the user click Discounts
    And the user clicks the "inventory" element at the "InventoryPage" page
    #Comment: the user click on Menu Items
    And the user clicks the "countSheet" element at the "InventoryPage" page
    #Comment: The user wait until page is visible
    And the user waits for the "countSheetTxt" element to be "VISIBLE" on the "CountSheetPage" page
    #Comment: the user click on Add
    And the user clicks the "addBtn" element at the "CountSheetPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "countSheetTxtPopup" element to be "VISIBLE" on the "AddCountSheetPage" page
    #Comment: the user select the dropdown values
    And the user selects value "Yearly" from the "frequency" dropdown at the "AddCountSheetPage" page
    #Comment: the user validate the drop down value selected
    And the user selects value from the "frequency" dropdown equal to given value "Yearly" at the "AddCountSheetPage" page
    #Comment: the user select the dropdown values
    And the user selects value "Freezer" from the "location" dropdown at the "AddCountSheetPage" page
    #Comment: the user validate the drop down value selected
    And the user selects value from the "location" dropdown equal to given value "Freezer" at the "AddCountSheetPage" page
    #Comment: the user click on checkbox
    And the user clicks the "allItems" element at the "AddCountSheetPage" page
    #Comment: the user validate check box selected
    And the user validates the item in the "allItems" checkbox is checked at the "AddCountSheetPage" page "validate_checkbox_Selected" "HardStopOnFailure"
    #Comment: the user click on checkbox
    And the user clicks the "items" element at the "AddCountSheetPage" page
    #Comment: the user validate check box selected
    And the user validates the item in the "items" checkbox is checked at the "AddCountSheetPage" page "validate_checkbox_Selected" "HardStopOnFailure"
    #Comment: the user click save
    And the user clicks the "save" element at the "AddCountSheetPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load

    #Comment: the user click Discounts
    And the user clicks the "inventory" element at the "InventoryPage" page
    #Comment: the user click on Menu Items
    And the user clicks the "invetoryEntry" element at the "InventoryPage" page
    #Comment: The user wait until page is visible
    And the user waits for the "inventoryEntryTxt" element to be "VISIBLE" on the "InventoryEntryPage" page
    #Comment: the user custom click if element present
    And the user delete all rows If element present the "table" table with Column Name "Frequency" and value "#(xpathValue)" at the "InventoryEntryPage" page with FirstObjectName "unPost" and SecondObjectName "unPostOnWarning" ThirdObjectName "editBtnDisable"
    #Comment : the user clicks and check If element present
    And the user custom clicks If element present the "table" element with Column Name "Frequency" and value "tblRowXIN_ENT" at the "InventoryEntryPage" page with element 1 "delete" and element 2 "deleteOnWarning" element 3 "editBtnDisable"
    #Comment: the user click on Add
    And the user clicks the "addBtn" element at the "InventoryEntryPage" page
    #Comment: the user click on list
    And the user clicks the "weekly" element at the "AddInventoryEntryPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: the user validate the visibility of popup
    And the user waits for the "inventoryEntryTxtPopup" element to be "VISIBLE" on the "AddInventoryEntryPage" page
    #Comment: the user enter text
    And the user enters "#(date)" into the "date" textbox at the "AddInventoryEntryPage" page
    #Comment: the user enter text
    And the user enters "#(receivingUnit)" into the "receivingUnit" textbox at the "AddInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "receivingUnit" element at the "AddInventoryEntryPage" page into the data dictionary with key "receivingUnit_value1"
    #Comment: the user append 00
    And the user validates and append at trailing any value ".00" with data dictionary key "#(receivingUnit_value1)" and store with new dictionary key "receivingUnit_value3"
    #Comment: the user enters the name
    And the user enters "#(inventoryUnit)" into the "inventoryUnit" textbox at the "AddInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "inventoryUnit" element at the "AddInventoryEntryPage" page into the data dictionary with key "inventoryUnit_value1"
    #Comment: the user append 00
    And the user validates and append at trailing any value ".00" with data dictionary key "#(inventoryUnit_value1)" and store with new dictionary key "inventoryUnit_value3"
    #Comment: the user enters the couponNumber
    And the user enters "#(usageUnit)" into the "usageUnit" textbox at the "AddInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "usageUnit" element at the "AddInventoryEntryPage" page into the data dictionary with key "usageUnit_value1"
    #Comment: the user append 00
    And the user validates and append at trailing any value ".00" with data dictionary key "#(usageUnit_value1)" and store with new dictionary key "usageUnit_value3"
    #Cooment: the user click save
    And the user clicks the "save" element at the "AddInventoryEntryPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(Weekly)" at the "InventoryEntryPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user store the id
    And store the displayed text of the "table" element at the "InventoryEntryPage" page and get the dictionary key value "#(Weekly)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number_Old"
    #Comment: the user click on Edit Button
    And the user clicks the "copyTo" element at the "InventoryEntryPage" page
    #Comment: the user click on Edit Button
    And the user clicks the "newYearly" element at the "CopyToInventoryEntryPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "copyToTxt" element to be "VISIBLE" on the "CopyToInventoryEntryPage" page
    #Comment: the user enter text
    And the user enters "#(date)" into the "date" textbox at the "CopyToInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "date" element at the "CopyToInventoryEntryPage" page into the data dictionary with key "date_value1"
    #Cooment: the user click save
    And the user clicks the "save" element at the "CopyToInventoryEntryPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(Yearly)" at the "InventoryEntryPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user store the id
    And store the displayed text of the "table" element at the "InventoryEntryPage" page and get the dictionary key value "#(Yearly)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number"
    #Comment: the user click on Edit Button
    And the user clicks the "editBtn" element at the "InventoryEntryPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "inventoryEntryTxtPopup" element to be "VISIBLE" on the "EditInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "receivingUnit" element at the "EditInventoryEntryPage" page into the data dictionary with key "receivingUnit_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "inventoryUnit" element at the "EditInventoryEntryPage" page into the data dictionary with key "inventoryUnit_value2"
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "usageUnit" element at the "EditInventoryEntryPage" page into the data dictionary with key "usageUnit_value2"

    #Comment: user validate descriptionUS Value
    And the user validates the data dictionary value of "#(receivingUnit_value3)" is "Equal To" data dictionary value of "#(receivingUnit_value2)" "validate_date_value" "HardStopOnFailure"
    #Comment: user validate Name Spanish Value
    And the user validates the data dictionary value of "#(inventoryUnit_value3)" is "Equal To" data dictionary value of "#(inventoryUnit_value2)" "validate_tax_value" "HardStopOnFailure"
    #Comment: user validate descriptionSpanish Value
    And the user validates the data dictionary value of "#(usageUnit_value3)" is "Equal To" data dictionary value of "#(usageUnit_value2)" "validate_freight_value" "HardStopOnFailure"
    #Comment: the user click on Cancel Button
    And the user clicks the "cancelBtn" element at the "EditInventoryEntryPage" page
    #Comment: the user click on History Button
    And the user clicks the "history" element at the "InventoryEntryPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "historyText" element to be "VISIBLE" on the "HistoryPage" page
    #Comment append value with dictionary
    And the user validates and append at leading any value ": " with data dictionary key "#(Id_Number_Old)" and store with new dictionary key "Id_Number_Old_Latest"
    #Comment append value with dictionary
    And the user validates and append at trailing any value "']//preceding-sibling::td[text()='Clone']//following-sibling::td)[5]" with data dictionary key "#(Id_Number_Old_Latest)" and store with new dictionary key "Id_Number_Old_Latest_1"
    #Comment: the user click on Details Elements
    And the user clicks the "table" element with dictionary key "#(Id_Number_Old)" at the "HistoryPage" page with xpath1 "#(DetailsClickXpath1)" and xpath2 "#(Id_Number_Old_Latest_1)"
    #Comment: user validate the details model popup
    And the user validates "Compare_Strings" that the "detailsText" element is "Equal To" "Details" at the "HistoryPage" page "validate_Details_model" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "0" of the "tableDetails" table at the "HistoryPage" page "Equal To" "Cloned" "validate_Item_Changed_Details" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "1" of the "tableDetails" table at the "HistoryPage" page "Equal To" "Changed" "validate_Item_Changed_Details" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "2" of the "tableDetails" table at the "HistoryPage" page "Equal To" "#(Id_Number_Old)" "validate_InvoiceNumber_Details" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "3" of the "tableDetails" table at the "HistoryPage" page "Equal To" "#(Id_Number)" "validate_InvoiceNumber_Details" "HardStopOnFailure"
    #Comment: the user click on close button
    And the user clicks the "close" element at the "HistoryPage" page
    #Comment: the user click on close button
    And the user clicks the "closeHistoryBtn" element at the "HistoryPage" page
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(Weekly)" at the "InventoryEntryPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
