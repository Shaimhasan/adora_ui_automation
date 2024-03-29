Feature: Basic Order Entry - Delivery Cash - With Change Due  - with Prep Station Only
  This script is to validate Basic Order Entry - Delivery Cash - With Change Due  - with Prep Station Only

  @Basic_Order_Entry_Dine_In_Delivery_Cash_With_Change_Due_With_Prep_Station_Only @RegressionSuite @Delivery @BOE_Delivery @BOE @BOE_Prep_Station_Only @BOE_Prep_Station_Only_Delivery
  Scenario: Basic_Order_Entry_Dine_In_Delivery_Cash_With_Change_Due_With_Prep_Station_Only_Testcase
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
    #Comment: the user click Setting
    And the user clicks the "settings" element at the "SettingsPage" page
    #Comment: the user click on Setting change
    And the user clicks the "settingsChange" element at the "SettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "prepStationConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "By Item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the dom to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "makeLineConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "Disabled" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the dom to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "cutAndWrapConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "Disabled" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the dom to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user refresh Page
    And the user refreshes the page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user wait the element disable
    And the user waits for the "orderEntry" element to be "VISIBLE" on the "HomeScreenPage" page

    #Comment: user click On the orderEntry Button
    And the user clicks the "orderEntry" element at the "HomeScreenPage" page
    #Comment: validate background color
    And the user validates the background color of the "dinInColor" element is "rgba(153, 255, 204, 1)" at the "OrderEntry" page "validate_background_color" "HardStopOnFailure"
    #Comment: user select veggiePizza
    And the user clicks the "hawaiianPizzaP" element at the "OrderEntry" page
    #Comment: The user selected Veggie Pizza
    And the user validates the "hawaiianPizzaPSelected" element is present at the "OrderEntry" page "validate_Pizza_Selected" "HardStopOnFailure"
    #Comment: user click on Devilery
    And the user clicks the "delivery" element at the "OrderEntry" page
    #Comment: the user enter phone Number
    Then the user enters "#(textPhone)" into the "textPhone" textbox at the "CustomerInfoPage" page
     #Comment: The user enter at textPhone field
    And the user sends keys "Key_enter" to the "textPhone" element on the "CustomerInfoPage" page
    #Comment: the user wait
    And the user waits for the "addressText" element to be "VISIBLE" on the "CustomerInfoPage" page
    #Comment: The user save the address into dictionary key
    And store the displayed text of the "address" element at the "CustomerInfoPage" page into the data dictionary with key "address_value"
    #Comment: user click on Finish
    And the user clicks the "OK" element at the "CustomerInfoPage" page
	#Comment: Validate the amount
    And store the displayed text of the "amount" element at the "OrderEntry" page into the data dictionary with key "amt1"
    #Comment: user click on Finish
    And the user clicks the "finishBtn" element at the "OrderEntry" page
    #Comment: user click on hundread dollar
    And the user clicks the "hundreadDollar" element at the "PaymentPage" page
    #Comment: The user save the order number into dictionary key
    And store the displayed text of the "orderNum" element at the "OrderEntry" page into the data dictionary with key "order_Number"
    #Comment: The user save the transaction number into dictionary key
    And store the displayed text of the "transactionNum" element at the "OrderEntry" page into the data dictionary with key "transaction_Number"
    #Comment: user click on Close
    And the user clicks the "closeForDelivery" element at the "OrderEntry" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load

    #Comment: user wait for visible of element
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "prepStation" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: User validate the order list element is present.
    And the user validates the "prepStation" element is present at the "AdoraHeaderPage" page "validate_Prep_Station_present" "HardStopOnFailure"
    #Comment: user click on prep Station
    And the user clicks the "prepStation" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: user click prepstation until order comes on console
    And the user click Single prepstation "order" element until "#(transaction_Number)" expected value based on attribute "id" found at the page "PrepStationPage"

    #Comment: The user wait until page is loading
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: The user click on adora
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: The user wait until page is loading
    And the user waits for the "clockIn" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: user click on ClockIn
    And the user hovers over the "clockIn" element at the "AdoraHeaderPage" page
    #Comment: user click on ClockIn
    And the user clicks the "clockIn" element at the "AdoraHeaderPage" page
    #Comment: user click on two digit
    And the user clicks the "oneDigit" element at the "ClockInPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockInPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockInPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockInPage" page
    #Comment: user click on Enter
    And the user clicks the "enter" element at the "ClockInPage" page
    #Comment: the user page to load
    And the user waits for the dom to load
    #Comment: the user clock out if already clock in
    And the user clock out if already clock in
    #Comment: the user validate the visibility of clockInPopup
    And the user waits for the "clockInPopup" element to be "VISIBLE" on the "ClockInPage" page
    #Comment: user validate time record message successfully
    And the user validates "Compare_Strings" that the "timeCardRecordSuccessMsg" element is "Equal To" "#(timeRecordSuccessMsg)" at the "ClockInPage" page "validate_Time_Record_Successfully" "HardStopOnFailure"
    #Comment: user click on Driver
    And the user clicks the "OKBtn" element at the "ClockInPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "dispatch" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: user click on dispatch
    And the user clicks the "dispatch" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment : user click on orderNumber and dispatch
    And the user clicks the "table" element with dictionary key "#(order_Number)" at the "DispatchPage" page with xpath1 "#(orderNumberXpath1)" and xpath2 "#(orderNumberXpath2)"
    #Comment: user click on Driver o Dispatch page
    And the user clicks the "bobTheDriver" element at the "DispatchPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the dom to load
    #Comment: user click on Driver o Printer Page
    And the user clicks the "printerOkBtn" element at the "CommonPage" page If Present
    #Comment: user click on Driver o Dispatch page
    And the user clicks the "bobTheDriver" element at the "DispatchPage" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page

    #Comment: the user click on back office
    And the user clicks the "backOffice" element at the "AdoraHeaderPage" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page

    #Comment: the user validate the visibility of popup
    And the user waits for the "clockOut" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: user click on ClockIn
    And the user hovers over the "clockOut" element at the "AdoraHeaderPage" page
    #Comment: user click on ClockOut
    And the user clicks the "clockOut" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the "cloutOutVisible" element to be "VISIBLE" on the "ClockOutPage" page
    #Comment: user click on oneDigit
    And the user hovers over the "oneDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "oneDigit" element at the "ClockOutPage" page
    #Comment: user click on oneDigit
    And the user hovers over the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on oneDigit
    And the user hovers over the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on oneDigit
    And the user hovers over the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on Enter
    And the user clicks the "enter" element at the "ClockOutPage" page
    #Comment: The user wait until page is loading
    And the user waits for the "cloutOutVisible" element to be "VISIBLE" on the "ClockOutPage" page
    #Comment: the user enter gratuity amount
    Then the user enters "#(gatuityAmt)" into the "gratuityAmt" textbox at the "ClockOutPage" page
    #Comment: user click on ClockOut
    And the user clicks the "clockOut" element at the "ClockOutPage" page
    #Comment: The user wait until page is loading
    And the user waits for the "cloutOutTxtVisible" element to be "VISIBLE" on the "ClockOutPage" page
    #Comment: user validate clock out message successfully
    And the user validates "Compare_Strings" that the "clockOutSuccessMsg" element is "Equal To" "#(timeClockOutSuccessMsg)" at the "ClockOutPage" page "validate_Clock_Out_Successfully" "HardStopOnFailure"
    #Comment: user click on Driver
    And the user clicks the "OKBtn" element at the "ClockOutPage" page

    #Comment: the user visible element
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "orderList" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: User validate the order list element is present.
    And the user validates the "orderList" element is present at the "AdoraHeaderPage" page "validate_order_list_present" "HardStopOnFailure"
    #Comment: user click on Order List
    And the user clicks the "orderList" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the dom to load
    #Comment: user validate the transaction Number
    And the user waits "3000" seconds
    #Comment: the user validate the ID number in History
    And the user validates Exact expected value "Compare_Strings" that the "table" element is "Equal To" "Cash" at the "OrderListPage" page based on datadictionary "#(order_Number)" and xpath1 "#(orderIdXpath)" and xpath2 "']//parent::td//following-sibling::td)[9]//div[text()='Cash']" "validate_ID_Number" "HardStopOnFailure"
    #Comment: the user click on Details Elements
    And the user clicks the "table" element with dictionary key "#(order_Number)" at the "OrderListPage" page with xpath1 "#(DetailsClickXpath1)" and xpath2 "#(DetailsClickXpath2)"
    #Comment: the user validate the visibility of Page
    And the user waits for the "orderDetailTxt" element to be "VISIBLE" on the "OrderDetailsPage" page
    #Comment: Validate the amount
    Then the user validates "Compare_Strings" that the "amount" element is "Equal To" "#(amt1)" at the "OrderDetailsPage" page "validate_Amount" "HardStopOnFailure"
    #Comment: The user save the transaction number into dictionary key
    And store the displayed text of the "transactionNum" element at the "OrderDetailsPage" page into the data dictionary with key "transaction_Number2"
    #Comment: The user save the order number into dictionary key
    And store the displayed text of the "orderNum" element at the "OrderDetailsPage" page into the data dictionary with key "order_Number2"
    #Comment: User validate data dictionary values
    And the user validates the data dictionary value of "#(transaction_Number)" is "Equal To" data dictionary value of "#(transaction_Number2)" "validate_data_dictionary_values" "HardStopOnFailure"
    #Comment: User validate data dictionary values
    And the user validates the data dictionary value of "#(order_Number)" is "Equal To" data dictionary value of "#(order_Number2)" "validate_data_dictionary_values" "HardStopOnFailure"
    #Comment: user click Close Button
    And the user clicks the "close" element at the "OrderDetailsPage" page

    #Comment: the user visible element
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user visible element
    And the user waits for the "backOffice" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: the user click on back office
    And the user clicks the "backOffice" element at the "AdoraHeaderPage" page
    #Comment: the user click Setting
    And the user clicks the "settings" element at the "SettingsPage" page
    #Comment: the user click on Setting change
    And the user clicks the "settingsChange" element at the "SettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "prepStationConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "By Item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the dom to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "makeLineConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "By Item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the dom to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "cutAndWrapConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "By Item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the dom to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user refresh Page
    And the user refreshes the page





