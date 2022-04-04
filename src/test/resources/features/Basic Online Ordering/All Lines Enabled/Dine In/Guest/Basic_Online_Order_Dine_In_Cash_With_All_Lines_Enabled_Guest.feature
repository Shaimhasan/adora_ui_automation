Feature: Basic Online Order - Dine In Cash - with all lines enabled - Guest
  This script is to validate Basic Online Order - Dine In Cash - with all lines enabled - Guest

  @issue=1780
  @Basic_Online_Order_Dine_In_Cash_With_All_Lines_Enabled_Guest @RegressionSuite @OLO @OLO_ALE @OLO_ALE_DineIn @OLO_ALE_DineIn_Guest
  Scenario: Basic_Online_Order_Dine_In_Cash_With_All_Lines_Enabled_Guest_Testcase
    #Comment: User launch online ordering web application in chrome browser
    Given the web application "Online_Ordering_Web_URL" is launched in a "NewWindow"
    #Comment: User wait to visible the page
    And the user waits for the "continueAsGuest" element to be "VISIBLE" on the "LoginOLOPage" page
    #Comment: User click on continue as guest
    And the user clicks the "continueAsGuest" element at the "LoginOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "orderType" element to be "VISIBLE" on the "OrderTypeOLOPage" page
    #Comment: the user wait hover element
    And the user hovers over the "dineIn" element at the "OrderTypeOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "dineIn" element at the "OrderTypeOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "orderType" element to be "VISIBLE" on the "OrderTypeOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "continueBtn" element at the "OrderTypeOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "automationPizzaPMC" element to be "VISIBLE" on the "HomeOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "automationPizzaPMC" element at the "HomeOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "addToOrder" element to be "VISIBLE" on the "AddToOrderOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "addToOrder" element at the "AddToOrderOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "cheesePizzaPMC" element to be "VISIBLE" on the "HomeOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "cheesePizzaPMC" element at the "HomeOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "addToOrder" element to be "VISIBLE" on the "AddToOrderOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "addToOrder" element at the "AddToOrderOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "checkOut" element to be "VISIBLE" on the "HomeOLOPage" page
    #Comment: User click on dine in
    And the user clicks the "checkOut" element at the "HomeOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "existingCustLogin" element to be "VISIBLE" on the "ExistingCustLoginOLOPage" page
    #Comment: the user enter text
    And the user enters "#(firstName)" into the "firstName" textbox at the "ExistingCustLoginOLOPage" page
    #Comment: the user enter text
    And the user enters "#(lastName)" into the "lastName" textbox at the "ExistingCustLoginOLOPage" page
    #Comment: the user enter email
    And the user enters "#(email)" into the "email" textbox at the "ExistingCustLoginOLOPage" page
    #Comment: the user enter re-email
    And the user enters "#(reEnterEmail)" into the "reEnterEmail" textbox at the "ExistingCustLoginOLOPage" page
    #Comment: the user enter ten digit Number
    And the user enters random Ten digit number into the "phoneNo" textbox at the "ExistingCustLoginOLOPage" page
    #Comment: the user enter 10 digit number
    And store the displayed text of the "phoneNo" element at the "ExistingCustLoginOLOPage" page into the data dictionary with key "phoneNo1"
    #Comment: the user enter re enter phone
    And the user enters "#(phoneNo1)" into the "reEnterPhoneNo" textbox at the "ExistingCustLoginOLOPage" page
    #comment: the user click on Pay In Store
    And the user clicks the "payInStore" element at the "ExistingCustLoginOLOPage" page
    #Comment: the user validates the checkbox is selected
    And the user validates the item in the "payInStore" checkbox is checked at the "ExistingCustLoginOLOPage" page "validate_Text" "HardStopOnFailure"
    #comment: the user click on termsAndCondition
    And the user clicks the "termsAndCondition" element at the "ExistingCustLoginOLOPage" page
    #Comment: the user click on termsAndCondition
    And the user clicks the "placeYourOrder" element at the "ExistingCustLoginOLOPage" page
    #Comment: User wait to visible the page
    And the user waits for the "successMsg" element to be "VISIBLE" on the "OrderModelPopupOLOPage" page
    #Comment: the user wait to store the element
    And store the displayed text of the "tranAndOrdNo" element at the "OrderModelPopupOLOPage" page into the data dictionary with key "tranAndOrdNo1"
    #Comment: the user substring
    And store the sub string "#(tranAndOrdNo1)" of text with start index "15" and last index "24" into the data dictionary with key "transactionNum"
    #Comment: the user substring
    And store the sub string "#(tranAndOrdNo1)" of text with start index "34" and last index "37" into the data dictionary with key "orderNum1"
    #Comment: the user click on OrderModelPopupOLOPage
    And the user clicks the "OK" element at the "OrderModelPopupOLOPage" page

    #Comment: Launch Adora Web URL in CHROME browser
    Given the web application "Adora_Web_URL" is launched in a "NewTab"
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
    And the user selects value "By Item" from the "drpDwn" dropdown at the "EditSettingsPage" page
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
    And the user selects value "By Item" from the "drpDwn" dropdown at the "EditSettingsPage" page
    #Comment: the user click on Save
    And the user clicks the "save" element at the "EditSettingsPage" page
    #Comment: the user load the page
    And the user waits for the page to load
    #Comment: the user wait the element disable
    And the user waits for the "edit" element to be "DISABLED" on the "EditSettingsPage" page
    #Comment: the user refresh Page
    And the user refreshes the page

    #Comment: the user validate the visibility of popup
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
    And the user waits for the page to load
    #Comment: user click prepstation until order comes on console
    And the user click prepstation "order" element until "#(transactionNum)" expected value based on attribute "id" found at the page "PrepStationPage"

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
    And the user click makeline "order" element until "#(transactionNum)" expected value based on attribute "data-full-key" found at the page "MakeLinePage"

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
    And the user custom clicks on row with order number "#(orderNum1)" and category value "1" from the "table" table on the "CutAndWrapPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: User validate the adoraHeaderSVG element is present.
    And the user order number "#(orderNum1)" category value "1" cut and wrap validates the "table" element is present at the "CutAndWrapPage" page "validate_Cut_And_Wrap_Present" "HardStopOnFailure"
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user click on the row
    And the user custom clicks on row with order number "#(orderNum1)" and category value "2" from the "table" table on the "CutAndWrapPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: the user validate the cut and wrap
    And the user order number "#(orderNum1)" category value "2" cut and wrap validates the "table" element is present at the "CutAndWrapPage" page "validate_Cut_And_Wrap_Present" "HardStopOnFailure"

    #Comment: the user validate the visibility of popup
    And the user waits for the "adoraHeaderSVG" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "orderList" element to be "VISIBLE" on the "AdoraHeaderPage" page
    #Comment: User validate the order list element is present.
    And the user validates the "orderList" element is present at the "AdoraHeaderPage" page "validate_order_list_present" "HardStopOnFailure"
    #Comment: the user hover the Order List
    And the user hovers over the "orderList" element at the "AdoraHeaderPage" page
    #Comment: user click on Order List
    And the user clicks the "orderList" element at the "AdoraHeaderPage" page
    #Comment: The user wait until page is loading
    And the user waits for the page to load
    #Comment: user validate the transaction Number
    And store text of the cell having unique rowVal comes from Data Dictionary "#(transactionNum)" and columnHeader " Transaction#" from the "tableOrderList" table at the "OrderListPage" page into the data dictionary with key "transaction_Num"
    #Comment: user validate the transaction Number
    And store text of the cell having unique rowVal comes from Data Dictionary "#(orderNum1)" and columnHeader " Order#" from the "tableOrderList" table at the "OrderListPage" page into the data dictionary with key "order_Num"
    #Comment: User validate data dictionary values
    And the user validates the data dictionary value of "#(transactionNum)" is "Equal To" data dictionary value of "#(transaction_Num)" "validate_data_dictionary_values" "HardStopOnFailure"
    #Comment: User validate data dictionary values
    And the user validates the data dictionary value of "#(orderNum1)" is "Equal To" data dictionary value of "#(order_Num)" "validate_data_dictionary_values" "HardStopOnFailure"
    #Comment: the user click on Details Elements
    And the user clicks the "table" element with dictionary key "#(orderNum1)" at the "OrderListPage" page with xpath1 "#(DetailsClickXpath1)" and xpath2 "#(DetailsClickXpath2)"
    #Comment: the user validate the visibility of Page
    And the user waits for the "orderDetailTxt" element to be "VISIBLE" on the "OrderDetailsPage" page
    #Comment: Validate the amount
    Then the user validates "Compare_Strings" that the "amount" element is "Equal To" "#(amount)" at the "OrderDetailsPage" page "validate_Amount" "HardStopOnFailure"
    #Comment: The user save the transaction number into dictionary key
    And store the displayed text of the "transactionNum" element at the "OrderDetailsPage" page into the data dictionary with key "transaction_Number2"
    #Comment: The user save the order number into dictionary key
    And store the displayed text of the "orderNum" element at the "OrderDetailsPage" page into the data dictionary with key "order_Number2"
    #Comment: User validate data dictionary values
    And the user validates the data dictionary value of "#(transactionNum)" is "Equal To" data dictionary value of "#(transaction_Number2)" "validate_data_dictionary_values" "HardStopOnFailure"
    #Comment: User validate data dictionary values
    And the user validates the data dictionary value of "#(orderNum1)" is "Equal To" data dictionary value of "#(order_Number2)" "validate_data_dictionary_values" "HardStopOnFailure"
    #Comment: user click Close Button
    And the user clicks the "close" element at the "OrderDetailsPage" page


