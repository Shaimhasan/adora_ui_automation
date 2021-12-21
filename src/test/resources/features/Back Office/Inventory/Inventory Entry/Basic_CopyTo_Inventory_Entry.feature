Feature: Basic Edit Inventory Entry
  This script is to validate Edit Inventory Entry

  @Basic_Edit_Inventory_Entry @RegressionSuite @BO_Inventory_Entry @Back_Office
  Scenario: Basic_Edit_Inventory_Entry_Testcase
    #Comment: Launch Adora Web URL in CHROME browser
    Given the web application "Adora_Web_URL" is launched in a "NewWindow"
    #Comment: Enter the Store_Key into username textbox present on Login Page
    When the user enters the user credential "#(Store_Key_AutomationStore)" into the "storeKey" textbox at the "LoginPage" page
    #Comment: Enter the Station_Key into Station_Key textbox present on Login Page
    When the user enters the secure credential "#(Station_Key_AutomationStore)" into the "stationKey" textbox at the "LoginPage" page
    #Comment: user click On the Connect Button
    And the user clicks the "connect" element at the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: Enter the Employee_Id into username textbox present on Login Page
    When the user enters the user credential "#(Employee_Id)" into the "employee_Id" textbox at the "LoginPage" page
    #Comment: Enter the Password into Password textbox present on Login Page
    When the user enters the secure credential "#(Password)" into the "password" textbox at the "LoginPage" page
    #Comment: The user enter at passsword field
    And the user sends keys "Key_enter" to the "password" element on the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click On the continueToLogin Button
    And the user clicks the "continueToLogin" element at the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user validate the Title of the page
    And the user validates that the page title "Equal To" "Adora" "validate_Title" "HardStopOnFailure"
    #Comment: the user click on back office
    And the user clicks the "backOffice" element at the "AdoraHeaderPage" page
    #Comment: the user click Discounts
    And the user clicks the "inventory" element at the "InventoryPage" page
    #Comment: the user click on Menu Items
    And the user clicks the "invetoryEntry" element at the "InventoryPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on Add
    And the user clicks the "addBtn" element at the "InventoryEntryPage" page
    #Comment: the user click on list
    And the user clicks the "weekly" element at the "AddInventoryEntryPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user validate the visibility of popup
    And the user waits for the "inventoryEntryTxtPopup" element to be "VISIBLE" on the "AddInventoryEntryPage" page
    #Comment: the user enter text
    And the user enters "#(date)" into the "date" textbox at the "AddInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "date" element at the "AddInventoryEntryPage" page into the data dictionary with key "date_value1"
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
    And the user waits for the page to load
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(Weekly)" at the "InventoryEntryPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user store the id
    And store the displayed text of the "table" element at the "InventoryEntryPage" page and get the dictionary key value "#(Weekly)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number"
    #Comment: the user click on Edit Button
    And the user clicks the "editBtn" element at the "InventoryEntryPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "inventoryEntryTxtPopup" element to be "VISIBLE" on the "EditInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "date" element at the "EditInventoryEntryPage" page into the data dictionary with key "date_value2"
    #Comment: the user enter text
    And the user enters "#(receivingUnitNew)" into the "receivingUnit" textbox at the "EditInventoryEntryPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "receivingUnit" element at the "EditInventoryEntryPage" page into the data dictionary with key "receivingUnitNew_value1"
    #Comment: the user append 00
    And the user validates and append at trailing any value ".00" with data dictionary key "#(receivingUnitNew_value1)" and store with new dictionary key "receivingUnitNew_value3"
    #Cooment: the user click save
    And the user clicks the "save" element at the "EditInventoryEntryPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(Weekly)" at the "InventoryEntryPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user store the id
    And store the displayed text of the "table" element at the "InventoryEntryPage" page and get the dictionary key value "#(Weekly)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number"
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
    #Comment: user validate Name US Value
    And the user validates the data dictionary value of "#(date_value1)" is "Equal To" data dictionary value of "#(date_value2)" "validate_invoiceNum_value" "HardStopOnFailure"
    #Comment: user validate descriptionUS Value
    And the user validates the data dictionary value of "#(receivingUnitNew_value3)" is "Equal To" data dictionary value of "#(receivingUnit_value2)" "validate_date_value" "HardStopOnFailure"
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
    And the user validates and append at leading any value ": " with data dictionary key "#(Id_Number)" and store with new dictionary key "Id_Number_Latest"
    #Comment append value with dictionary
    And the user validates and append at trailing any value "']//preceding-sibling::td[text()='Edit']//following-sibling::td)[5]" with data dictionary key "#(Id_Number_Latest)" and store with new dictionary key "Id_Number_Latest_1"
    #Comment: the user click on Details Elements
    And the user clicks the "table" element with dictionary key "#(Id_Number)" at the "HistoryPage" page with xpath1 "#(DetailsClickXpath1)" and xpath2 "#(Id_Number_Latest_1)"
    #Comment: user validate the details model popup
    And the user validates "Compare_Strings" that the "detailsText" element is "Equal To" "Details" at the "HistoryPage" page "validate_Details_model" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "0" of the "tableDetails" table at the "HistoryPage" page "Equal To" "Items: Automation Mix - Receiving Quantity" "validate_Item_Changed_Details" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "1" of the "tableDetails" table at the "HistoryPage" page "Equal To" "Changed" "validate_Item_Changed_Details" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "2" of the "tableDetails" table at the "HistoryPage" page "Equal To" "#(receivingUnit_value3)" "validate_InvoiceNumber_Details" "HardStopOnFailure"
    #Comment: The user validate the chages on Hisotry Page
    And the user validates the cell at row "1" and column "3" of the "tableDetails" table at the "HistoryPage" page "Equal To" "#(receivingUnit_value2)" "validate_InvoiceNumber_Details" "HardStopOnFailure"
    #Comment: the user click on close button
    And the user clicks the "close" element at the "HistoryPage" page
    #Comment: the user click on close button
    And the user clicks the "closeHistoryBtn" element at the "HistoryPage" page
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(Weekly)" at the "InventoryEntryPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user click on Delete Button
    And the user clicks the "delete" element at the "InventoryEntryPage" page
    #Comment: the user click on Delete Button on Warning popup
    And the user clicks the "deleteOnWarning" element at the "InventoryEntryPage" page
