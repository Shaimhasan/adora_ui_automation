Feature: Basic Order Entry - Delivery Credit Card  - with all lines enabled
  This script is to validate Basic Order Entry - Delivery Credit Card  - with all lines enabled

  @Basic_Order_Entry_Dine_In_Delivery_Credit_Card_With_All_Lines_Enabled @RegressionSuite @BOE @BOE_ALE @BOE_ALE_Delivery
  Scenario: Basic_Order_Entry_Dine_In_Delivery_Credit_Card_With_All_Lines_Enabled_Testcase
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
    #Comment: user click On the continueToLogin Button
    And the user clicks the "continueToLogin" element at the "LoginPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
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
    And the user selects value "By item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the page to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "makeLineConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "By item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the page to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user click on make line row
    And the user clicks the "cutAndWrapConfig" element at the "SettingsChangePage" page
    #Comment: the user wait the element enable
    And the user waits for the "edit" element to be "ENABLED" on the "EditSettingsPage" page
    #Comment: the user click on Edit
    And the user clicks the "edit" element at the "EditSettingsPage" page
    #Comment: the user click on Make Line
    And the user selects value "By item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the page to load
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
    #Comment: user select suprimePizza
    And the user clicks the "automationPizzaPMC" element at the "OrderEntry" page
    #Comment: user select veggiePizza
    And the user clicks the "cheesePizzaPMC" element at the "OrderEntry" page
    #Comment: The user selected Supreme Pizza
    And the user validates the "automationPizzaPMCSelected" element is present at the "OrderEntry" page "validate_Pizza_Selected" "HardStopOnFailure"
    #Comment: The user selected Veggie Pizza
    And the user validates the "cheesePizzaPMCSelected" element is present at the "OrderEntry" page "validate_Pizza_Selected" "HardStopOnFailure"
    #Comment: Validate the amount
    Then the user validates "Compare_Strings" that the "amount" element is "Equal To" "#(amount)" at the "OrderEntry" page "validate_Amount" "HardStopOnFailure"
    #Comment: user click on Devilery
    And the user clicks the "delivery" element at the "OrderEntry" page
    #Comment: the user enter phone Number
    Then the user enters "#(textPhone)" into the "textPhone" textbox at the "CustomerInfoPage" page
    #Comment: The user enter at textPhone field
    And the user sends keys "Key_enter" to the "textPhone" element on the "CustomerInfoPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click on Finish
    And the user clicks the "OK" element at the "CustomerInfoPage" page
    #Comment: The user save the address into dictionary key
    And store the displayed text of the "address" element at the "CustomerInfoPage" page into the data dictionary with key "address_value"
    #Comment: user click on Finish
    And the user clicks the "OK" element at the "CustomerInfoPage" page
    #Comment: user click on Finish
    And the user clicks the "finishBtn" element at the "OrderEntry" page
    #Comment: user click on credit
    And the user clicks the "credit" element at the "PaymentPage" page
    #Comment: User switches to the frame
    And the user switches to frame "cardNumber"
     #Comment: the user enter the CreditCard Number
    Then the user enters "#(cardNum)" into the "cardNum" textbox at the "CreditCardPage" page
    #Comment: The user Switches out side the frame
    And the user switches to the default window content
    #Comment: User switches to the frame
    And the user switches to frame "cardExpiration"
     #Comment: the user enter the expiration
    Then the user enters "#(expiration)" into the "expiration" textbox at the "CreditCardPage" page
    #Comment: The user swtiches out side the frame
    And the user switches to the default window content
    #Comment: User switches to the frame
    And the user switches to frame "cardCvv"
    #Comment: the user enter the cvv
    Then the user enters "#(cvv)" into the "cvv" textbox at the "CreditCardPage" page
    #Comment: The user swtiches out side the frame
    And the user switches to the default window content
    #Comment: user click on chargeBtn
    And the user clicks the "chargeBtn" element at the "CreditCardPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: The user save the order number into dictionary key
    And store the displayed text of the "orderNum" element at the "OrderEntry" page into the data dictionary with key "order_Number"
    #Comment: The user save the transaction number into dictionary key
    And store the displayed text of the "transactionNum" element at the "OrderEntry" page into the data dictionary with key "transaction_Number"
    #Comment: user click on Close
    And the user clicks the "closeForDelivery" element at the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "prepStation" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: User validate the order list element is present.
    And the user validates the "prepStation" element is present at the "AdoraHeaderPage" page "validate_Prep_Station_present" "HardStopOnFailure"
    #Comment: user click on prep Station
    And the user clicks the "prepStation" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click prepstation until order comes on console
    And the user click prepstation "order" element until "#(transaction_Number)" expected value based on attribute "id" found at the page "PrepStationPage"
    #Comment: the user validate the visibility of popup
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "makeLine" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: user click on makeLine
    And the user clicks the "makeLine" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click makeline until order comes on console
    And the user click makeline "order" element until "#(transaction_Number)" expected value based on attribute "data-full-key" found at the page "MakeLinePage"
    #Comment: the user validate the visibility of popup
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "cutAndWrap" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: user click on Cut and Wrap
    And the user clicks the "cutAndWrap" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: User validate the adoraHeaderSVG element is present.
    And the user validates the "inOven" element is present at the "CutAndWrapPage" page "validate_In_Oven_Present" "HardStopOnFailure"
    #Comment: user click on cut wrap based on order Number
    And the user custom clicks on row with order number "#(order_Number)" and category value "1" from the "table" table on the "CutAndWrapPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: User validate the adoraHeaderSVG element is present.
    And the user order number "#(order_Number)" category value "1" cut and wrap validates the "table" element is present at the "CutAndWrapPage" page "validate_Cut_And_Wrap_Present" "HardStopOnFailure"
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on the row
    And the user custom clicks on row with order number "#(order_Number)" and category value "2" from the "table" table on the "CutAndWrapPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user validate the cut and wrap
    And the user order number "#(order_Number)" category value "2" cut and wrap validates the "table" element is present at the "CutAndWrapPage" page "validate_Cut_And_Wrap_Present" "HardStopOnFailure"
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: The user click on Adora header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user validate the visibility of popup
    And the user waits for the "clockIn" element to be "VISIBLE" on the "AdoraHeaderPage" page
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
     #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user validate time record message successfully
    And the user validates "Compare_Strings" that the "timeCardRecordSuccessMsg" element is "Equal To" "#(timeRecordSuccessMsg)" at the "ClockInPage" page "validate_Time_Record_Successfully" "HardStopOnFailure"
    #Comment: user click on Driver
    And the user clicks the "OKBtn" element at the "ClockInPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: The user click on Adore header page
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click on dispatch
    And the user clicks the "dispatch" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment : user click on orderNumber and dispatch
    And the user clicks the "table" element with dictionary key "#(order_Number)" at the "DispatchPage" page with xpath1 "#(orderNumberXpath1)" and xpath2 "#(orderNumberXpath2)"
    #Comment: user click on Driver o Dispatch page
    And the user clicks the "bobTheDriver" element at the "DispatchPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click on Driver o Dispatch page
    And the user clicks the "bobTheDriver" element at the "DispatchPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click on ClockOut
    And the user clicks the "clockOut" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user click on two digit
    And the user clicks the "oneDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on two digit
    And the user clicks the "zeroDigit" element at the "ClockOutPage" page
    #Comment: user click on Enter
    And the user clicks the "enter" element at the "ClockOutPage" page
    #Comment: the user enter gratuity amount
    Then the user enters "#(gatuityAmt)" into the "gratuityAmt" textbox at the "ClockOutPage" page
    #Comment: user click on ClockOut
    And the user clicks the "clockOut" element at the "ClockOutPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user validate clock out message successfully
    And the user validates "Compare_Strings" that the "clockOutSuccessMsg" element is "Equal To" "#(timeClockOutSuccessMsg)" at the "ClockOutPage" page "validate_Clock_Out_Successfully" "HardStopOnFailure"
    #Comment: user click on Driver
    And the user clicks the "OKBtn" element at the "ClockOutPage" page