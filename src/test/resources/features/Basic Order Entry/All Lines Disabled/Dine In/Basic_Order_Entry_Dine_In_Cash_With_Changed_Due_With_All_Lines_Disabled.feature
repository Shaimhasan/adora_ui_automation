Feature: Basic Order Entry - Dine In Cash - with Change Due  - with all lines disabled
  This script is to validate Dine in cash with changed due basic order entry with 100 $Dollar

  @Basic_Order_Entry_Dine_In_Cash_With_Changed_Due_With_All_Lines_Disabled @RegressionSuite @DineIn @BOE_DineIn @BOE @BOE_ALD @BOE_ALD_DineIn
  Scenario: Basic_Order_Entry_Dine_In_Cash_With_Changed_Due_With_All_Lines_Disabled_Testcase
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
    #Comment: user click On the orderEntry Button
    And the user clicks the "orderEntry" element at the "HomeScreenPage" page
    #Comment: validate background color
    And the user validates the background color of the "dinInColor" element is "rgba(153, 255, 204, 1)" at the "OrderEntry" page "validate_background_color" "HardStopOnFailure"
    #Comment: user select suprimePizza
    And the user clicks the "automationPizzaPMC" element at the "OrderEntry" page
    #Comment: user select veggiePizza
    And the user clicks the "chicagoSylPizzaM" element at the "OrderEntry" page
    #Comment: The user selected Supreme Pizza
    And the user validates the "automationPizzaPMC" element is present at the "OrderEntry" page "validate_Pizza_Selected" "HardStopOnFailure"
    #Comment: The user selected Veggie Pizza
    And the user validates the "chicagoSylPizzaM" element is present at the "OrderEntry" page "validate_Pizza_Selected" "HardStopOnFailure"
    #Comment: Validate the amount
    And store the displayed text of the "amount" element at the "OrderEntry" page into the data dictionary with key "amt1"
    #Comment: user click on Finish
    And the user clicks the "finishBtn" element at the "OrderEntry" page
    #Comment: The user can see the table menu popup
    And the user validates the "tableNoPopUpMenu" element is present at the "OrderEntry" page "validate_Table_Menu_popUp" "HardStopOnFailure"
    #Comment: the user enter the table number
    Then the user enters "#(tableNo)" into the "tableNo" textbox at the "OrderEntry" page
    #Comment: user click on OK
    And the user clicks the "OK" element at the "OrderEntry" page
    #Comment: user click on Cash
    And the user clicks the "hundreadDollar" element at the "PaymentPage" page
    #Comment: the user validate the visibility of popup
    And the user waits for the "headerPopUpChangeDue" element to be "VISIBLE" on the "OrderEntry" page
    #Comment: The user validate change due popuo is present
    And the user validates the "headerPopUpChangeDue" element is present at the "OrderEntry" page "validate_Change_Due_popUp" "HardStopOnFailure"
    #Comment: The user save the transaction number into dictionary key
    And store the displayed text of the "transactionNum" element at the "OrderEntry" page into the data dictionary with key "transaction_Number"
    #Comment: The user save the order number into dictionary key
    And store the displayed text of the "orderNum" element at the "OrderEntry" page into the data dictionary with key "order_Number"
    #Comment: Validate Changed Due Amount
    Then the user validates "Compare_Strings" that the "changeDueAmt" element is "Equal To" "#(changedDueAmt)" at the "OrderEntry" page "validate_Changed_Due_Amount" "HardStopOnFailure"
    #Comment: user click on Close
    And the user clicks the "close" element at the "OrderEntry" page
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



