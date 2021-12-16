Feature: Basic Edit Coupons
  This script is to validate Edit Coupons

  @Basic_Edit_Coupons @RegressionSuite @BO_Coupons @Back_Office
  Scenario: Basic_Edit_Coupons_Testcase
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
    And the user clicks the "discount" element at the "DiscountsPage" page
    #Comment: the user click on Menu Items
    And the user clicks the "coupons" element at the "DiscountsPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on Add
    And the user clicks the "addBtn" element at the "CouponsPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "couponsTxtPopup" element to be "VISIBLE" on the "AddCouponsPage" page
    #Comment: the user enters the name On ADD Item
    And the user enters dynamic UserName "#(nameUS)" into the "nameUS" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameUS" element at the "AddCouponsPage" page into the data dictionary with key "nameUS_value1"
    #Comment: the user enter text
    And the user enters "#(descriptionUS)" into the "descriptionUS" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "descriptionUS" element at the "AddCouponsPage" page into the data dictionary with key "descriptionUS_value1"
    #Comment: the user enter text
    And the user enters "#(nameSpanish)" into the "nameSpanish" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameSpanish" element at the "AddCouponsPage" page into the data dictionary with key "nameSpanish_value1"
    #Comment: the user enters the name
    And the user enters "#(descriptionSpanish)" into the "descriptionSpanish" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "descriptionSpanish" element at the "AddCouponsPage" page into the data dictionary with key "descriptionSpanish_value1"
    #Comment: the user enters the couponNumber
    And the user enters "#(couponNumber)" into the "couponNumber" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "couponNumber" element at the "AddCouponsPage" page into the data dictionary with key "couponNumber_value1"
    #Comment: the user enters the discount
    And the user enters "#(discount)" into the "discount" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "discount" element at the "AddCouponsPage" page into the data dictionary with key "discount_value1"
    #Comment: the user enters the backGroundColor
    And the user enters "#(backGroundColor)" into the "backGroundColor" textbox at the "AddCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "backGroundColor" element at the "AddCouponsPage" page into the data dictionary with key "backGroundColor_value1"
    #Cooment: the user click save
    And the user clicks the "save" element at the "AddCouponsPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(nameUS_value1)" at the "CouponsPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user store the id
    And store the displayed text of the "table" element at the "CouponsPage" page and get the dictionary key value "#(nameUS_value1)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number"
    #Comment: the user click on Edit Button
    And the user clicks the "editBtn" element at the "CouponsPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "couponsTxtPopup" element to be "VISIBLE" on the "EditCouponsPage" page
    #Comment: the user enters the name On ADD Item
    And the user enters dynamic UserName "#(nameUS)" into the "nameUS" textbox at the "EditCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameUS" element at the "EditCouponsPage" page into the data dictionary with key "nameUS_value2"
    #Cooment: the user click save
    And the user clicks the "save" element at the "EditCouponsPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on the ID number row
    And the user clicks the "table" element with dictionary key "#(nameUS_value2)" at the "CouponsPage" page with xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)"
    #Comment: the user store the id
    And store the displayed text of the "table" element at the "CouponsPage" page and get the dictionary key value "#(nameUS_value2)" based on xpath1 "#(IdNumberXpath1)" and xpath2 "#(IdNumberXpath2)" store at dictionary with key "Id_Number"
    #Comment: the user click on Edit Button
    And the user clicks the "editBtn" element at the "CouponsPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "couponsTxtPopup" element to be "VISIBLE" on the "EditCouponsPage" page
    #Comment: the user store the text on data dictionary
    And store the displayed text of the "nameUS" element at the "EditCouponsPage" page into the data dictionary with key "nameUS_value3"
    #Comment: user validate Name US Value
    And the user validates the data dictionary value of "#(nameUS_value2)" is "Equal To" data dictionary value of "#(nameUS_value3)" "validate_nameUS_value" "HardStopOnFailure"
    #Comment: the user click on Cancel Button
    And the user clicks the "cancelBtn" element at the "EditCouponsPage" page
#    #Comment: the user click on History Button
#    And the user clicks the "history" element at the "CouponsPage" page
#    #Comment: the user validate the visibility of popup
#    And the user waits for the "historyText" element to be "VISIBLE" on the "HistoryPage" page
#    #Comment append value with dictionary
#    And the user validates and append at leading any value ": " with data dictionary key "#(nameUS_value1)" and store with new dictionary key "nameUS_value1_Latest"
#    #Comment append value with dictionary
#    And the user validates and append at trailing any value "']//preceding-sibling::td[text()='Add']" with data dictionary key "#(nameUS_value1_Latest)" and store with new dictionary key "nameUS_value1_Latest_1"
#    #Comment: the user validate the ID number in History
#    And the user validates Exact expected value "Compare_Strings" that the "table" element is "Equal To" "Add" at the "HistoryPage" page based on datadictionary "#(Id_Number)" and xpath1 "#(IDNumberXpath3)" and xpath2 "#(nameUS_value1_Latest_1)" "validate_ID_Number" "HardStopOnFailure"
#    #Comment: the user click on close button
#    And the user clicks the "closeHistoryBtn" element at the "HistoryPage" page