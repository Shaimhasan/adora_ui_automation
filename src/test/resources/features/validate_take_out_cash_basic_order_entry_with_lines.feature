@takeOutCashBasicOrderEntryWithLines
Feature: Take out cash basic order entry with lines
  This script is to validate Take out cash basic order entry with line

  @validate_take_out_cash_basic_order_entry_with_lines @RegressionSuite
  Scenario: validate_take_out_cash_basic_order_entry_with_lines_Testcase
    #Comment: Launch Adora Web URL in CHROME browser
    Given the web application "Adora_Web_URL" is launched in a "NewWindow"
    #Comment: Enter the Store_Key into username textbox present on Login Page
    When the user enters the user credential "#(Store_Key)" into the "storeKey" textbox at the "LoginPage" page
    #Comment: Enter the Station_Key into Station_Key textbox present on Login Page
    When the user enters the secure credential "#(Station_Key)" into the "stationKey" textbox at the "LoginPage" page
    #Comment: user click On the Connect Button
    And the user clicks the "connect" element at the "LoginPage" page
    And the user waits "20000" seconds
    #Comment: The user wait until page is loading
    #And the user validates the "waitTillLoading" element is present at the "LoginPage" page "wait_Untill_Loading" "HardStopOnFailure"
    #Comment: Enter the Employee_Id into username textbox present on Login Page
    When the user enters the user credential "#(Employee_Id)" into the "employee_Id" textbox at the "LoginPage" page
    #Comment: Enter the Password into Password textbox present on Login Page
    When the user enters the secure credential "#(Password)" into the "password" textbox at the "LoginPage" page
    #Comment: The user enter at passsword field
    And the user sends keys "Key_enter" to the "password" element on the "LoginPage" page
    #Comment: user click On the continueToLogin Button
    And the user clicks the "continueToLogin" element at the "LoginPage" page
    #Comment: the user validate the Title of the page
    And the user validates that the page title "Equal To" "Adora" "validate_Title" "HardStopOnFailure"
    #Comment: user click On the orderEntry Button
    And the user clicks the "orderEntry" element at the "HomeScreenPage" page
    #Comment: user click on Take Out
    And the user clicks the "takeOut" element at the "OrderEntry" page
    #Comment: validate background color
    And the user validates the background color of the "takeOutColor" element is "rgba(255, 255, 224, 1)" at the "OrderEntry" page "validate_background_color" "HardStopOnFailure"
    #Comment: user select suprimePizza
    And the user clicks the "suprimePizza" element at the "OrderEntry" page
    #Comment: user select veggiePizza
    And the user clicks the "veggiePizza" element at the "OrderEntry" page
    #Comment: user select peperoni pizza
    And the user clicks the "paperroniPizza" element at the "OrderEntry" page
    #Comment: The user selected Supreme Pizza
    And the user validates the "suprimePizzaSelected" element is present at the "OrderEntry" page "validate_Supreme_Pizza_Selected" "HardStopOnFailure"
    #Comment: The user selected Veggie Pizza
    And the user validates the "veggiePizzaSelected" element is present at the "OrderEntry" page "validate_Supreme_Pizza_Selected" "HardStopOnFailure"
    #Comment: The user selected pepperoni Pizza
    And the user validates the "paperroniPizzaSelected" element is present at the "OrderEntry" page "validate_Supreme_Pizza_Selected" "HardStopOnFailure"
    #Comment: Validate the amount
    Then the user validates "Compare_Strings" that the "amount" element is "Equal To" "#(amount)" at the "OrderEntry" page "validate_Amount" "HardStopOnFailure"
    #Comment: user click on Finish
    And the user clicks the "`finishBtn`" element at the "OrderEntry" page
    #Comment: The user can see the table menu popup
    And the user validates the "tableNoPopUpMenu" element is present at the "OrderEntry" page "validate_Table_Menu_popUp" "HardStopOnFailure"
    #Comment: the user enter the table number
    Then the user enters "#(tableNo)" into the "tableNo" textbox at the "OrderEntry" page
    #Comment: user click on OK
    And the user clicks the "OK" element at the "OrderEntry" page
    #Comment: user click on Cash
    And the user clicks the "cash" element at the "PaymentPage" page

    #Comment: The user validate change due popuo is present
    And the user validates the "headerPopUpChangeDue" element is present at the "OrderEntry" page "validate_Change_Due_popUp" "HardStopOnFailure"
    #Comment: The user save the transaction number into dictionary key
    And store the displayed text of the "transactionNum" element at the "OrderEntry" page into the data dictionary with key "transaction_Number"
    #Comment: The user save the order number into dictionary key
    And store the displayed text of the "orderNum" element at the "OrderEntry" page into the data dictionary with key "order_Number"
    #Comment: user click on Close
    And the user clicks the "close" element at the "OrderEntry" page
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: User validate the order list element is present.
    And the user validates the "prepStation" element is present at the "AdoraHeaderPage" page "validate_Prep_Station_present" "HardStopOnFailure"
    #Comment: user click on prep Station
    And the user clicks the "prepStation" element at the "AdoraHeaderPage" page

    #Comment: user click  until found the order
    And the user click "order" element until "#(transaction_Number)" expected value based on attribute "data-full-key" found at the page "PrepStationPage"
    And the user waits "3000" seconds

    #Comment: User validate the adoraHeaderSVG element is present.
    And the user validates the "adoraHeaderSVG" element is present at the "OrderEntry" page "validate_Adora_Svg_Present" "HardStopOnFailure"

    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: user click on makeLine
    And the user clicks the "makeLine" element at the "AdoraHeaderPage" page
    #Comment: user click click until found the order
    And the user click "order" element until "#(transaction_Number)" expected value based on attribute "data-full-key" found at the page "MakeLinePage"
    #Comment: User validate the adoraHeaderSVG element is present.
    And the user validates the "adoraHeaderSVG" element is present at the "OrderEntry" page "validate_Adora_Svg_Present" "HardStopOnFailure"
    #Comment: user click on Adora Header
    And the user clicks the "adoraHeaderSVG" element at the "OrderEntry" page
    #Comment: user click on Cut and Wrap
    And the user clicks the "cutAndWrap" element at the "AdoraHeaderPage" page
    #Comment: User validate the adoraHeaderSVG element is present.
    And the user validates the "inOven" element is present at the "CutAndWrapPage" page "validate_In_Oven_Present" "HardStopOnFailure"

    #Comment: user click on cut wrap based on order Number
    And the user clicks on the customize matching cell in the " Order No" column containing "#(order_Number)" with sequence "1" from the "table" table at the "CutAndWrapPage" page
    #Comment: User validate the adoraHeaderSVG element is present.
    And the user validates the "cutAndWrap" element is present at the "CutAndWrapPage" page "validate_Cut_And_Wrap_Present" "HardStopOnFailure"
    #Comment: User click on cut and wrap on order Number
    And the user clicks on the customize matching cell in the " Order No" column containing "#(order_Number)" with sequence "2" from the "table" table at the "CutAndWrapPage" page

