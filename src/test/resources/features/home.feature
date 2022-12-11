Feature: Home page tests

Background: Navigate to Home Page
  Given I open url of homepage

  @ASB-3 @regression
  Scenario: Verify address and phone number are displayed under the main navigation bar on top of the page
    Then Verify "10090 Main Street Fairfax, VA, USA" is displayed
    Then Verify "703-831-3217" is displayed

  @ASB-6 @regression @smoke
  Scenario: Test header of the home page
    Then Verify header text is "Advance Systems - Home"

  @ASB-7 @regression
  Scenario Outline: Verify navigation bar on the top right is displayed and enable
    Then Verify "<topNavBtn>" is displayed
    Then Verify "<topNavBtn>" is enable
    Examples:
      | topNavBtn   |
      | Get Support |
      | Job Career  |
      | Feedback    |
      | English     |
      | Spanish     |
      | French      |

  @ASB-8 @regression
  Scenario Outline: Verify Join Now  is displayed and enable
    Then Verify "<joinNow>" is displayed
    Then Verify "<joinNow>" is enable
 #   Then Verify webpage navigate to url page
    Then Verify destination window as url as "<url>"
    Examples:
      | joinNow  | url                                                               |
      | Join Now | https://tla-batch-6.github.io/advance-systems-test-b6/joinUs.html |

  @ASB-9 @regression
  Scenario Outline: Verify second navigation bar on the top right is displayed and enable.
    When I scroll down
    Then Verify "<navBar2>" is displayed
    #Then Verify "<navBar2>" is enable
    Then Verify "<navBar2>" navigate to window as url as "<url>"
   # Then Verify destination window as url as "<url>"
    Examples:
      | navBar2    | url                                                                 |
      | Home       | https://tla-batch-6.github.io/advance-systems-test-b6/index.html    |
      | About Us   | https://tla-batch-6.github.io/advance-systems-test-b6/about.html    |
      | Services   | https://tla-batch-6.github.io/advance-systems-test-b6/services.html |
      | Clients    | https://tla-batch-6.github.io/advance-systems-test-b6/clients.html  |
      | Join Us    | https://tla-batch-6.github.io/advance-systems-test-b6/joinUs.html   |
      | Contact Us | https://tla-batch-6.github.io/advance-systems-test-b6/contact.html  |

  @ASB-11
  Scenario Outline: Verify these section is displayed
    Then Verify "<fiveBox>" is displayed
    Examples:
      | fiveBox                       |
      | Leadership Development        |
      | Capability Building           |
      | Rewards & Benefits            |
      | Employee & Employer Relations |
      | Excellent Customer Service    |

  @ASB-14 @regression
    Scenario Outline: Verify footer contact info is displayed
     Then Verify "<contactInfo>" is displayed
      Examples:
        | contactInfo                         |
        | Address: 10090 Main St, Fairfax, VA |
        | Phone: +1 703-831-3217              |
        | Email: Info@advancesystems.us       |
        | Mon to Sat: 9.00 am to 5:00 pm      |





#  Scenario Outline: Verify practice website destination url
#    When I click link text "<linkText>"
#    Then Verify destination window as url as "<URL>"
#    Examples:
#      | linkText      | URL                                     |
#      | PHP Travels   | https://phptravels.com/demo/          |
#      | Mercury tours | http://ww7.demoaut.com/          |
#      | Internet      | http://the-internet.herokuapp.com/           |
#      | E-commerce    | http://automationpractice.com/index.php |
