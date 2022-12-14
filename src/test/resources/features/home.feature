Feature: Home page tests

Background: Navigate to Home Page
  Given I open url of homepage

  @ASB-3 @regression
  Scenario: Verify address and phone number are displayed under the main navigation bar on top of the page
    Then Verify "10090 Main Street Fairfax, VA, USA" is displayed
    Then Verify "703-831-3217" is displayed

  @ASB-6 @regression
  Scenario: Test header of the home page
    Then Verify header text is "Advance Systems - Home"

  @ASB-7 @regression @smoke
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

  @ASB-8 @regression @smoke
  Scenario Outline: Verify Join Now is displayed and enable
    Then Verify "<joinNow>" is displayed
    Then Verify "<joinNow>" is enable
    Then Verify destination window as url as "<url>"
    Examples:
      | joinNow  | url                                                               |
      | Join Now|  https://tla-batch-6.github.io/advance-systems-test-b6/joinUs.html |
#
  @ASB-9 @regression @smoke
  Scenario Outline: Verify second navigation bar on the top right is displayed and enable.
    Then verify "<navBar2>" is displayed when scroll down
    Then Verify "<navBar2>" navigate to window as url as "<url>"
    Examples:
      | navBar2    | url                                                                 |
      | Home       | https://tla-batch-6.github.io/advance-systems-test-b6/index.html    |
      | About Us   | https://tla-batch-6.github.io/advance-systems-test-b6/about.html    |
      | Services   | https://tla-batch-6.github.io/advance-systems-test-b6/services.html |
      | Clients    | https://tla-batch-6.github.io/advance-systems-test-b6/clients.html  |
      | Join Us    | https://tla-batch-6.github.io/advance-systems-test-b6/joinUs.html   |
      | Contact Us | https://tla-batch-6.github.io/advance-systems-test-b6/contact.html  |

  @ASB-10 @regression @smoke
  Scenario Outline: Verify social media is displayed and enable
    Then Verify "<socialMediaTop>" icon is displayed
    And Verify "<socialMediaTop>" direct to window as url as "<url>"
    Examples:
      | socialMediaTop       | url                       |
      | https://facebook.com | https://www.facebook.com/ |
      | https://twitter.com  | https://twitter.com/      |
      | https://google.com   | https://www.google.com/   |
      | https://linkedin.com | https://www.linkedin.com/ |

  @ASB-11 @regression
  Scenario Outline: Verify these section is displayed.
    When I scroll dow to the section "<fiveBox>"
    Then Verify "<fiveBox>" is displayed
    Examples:
      | fiveBox                       |
      | Leadership Development        |
      | Capability Building           |
      | Rewards & Benefits            |
      | Employee & Employer Relations |
      | Excellent Customer Service    |


  @ASB-12 @regression
  Scenario Outline: Verify message written by a person who is displayed above
    When I scroll dow to the section "Words from our clients"
    Then Verify the "<message>" displayed above the picture of the writer "<person>"
  Examples:
  | person | message |
  | James John | These guys are just the coolest company ever! Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.|
  | Mark Cameron |  These guys are just the coolest company ever! Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.|
  | Jenifer Hearly | These guys are just the coolest company ever! Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer scrambled it to make a type specimen book.                    |


  @ASB-14 @regression
    Scenario Outline: Verify footer contact info is displayed
     Then Verify "<contactInfo>" is displayed
      Examples:
        | contactInfo                         |
        | Address: 10090 Main St, Fairfax, VA |
        | Phone: +1 703-831-3217              |
        | Email: Info@advancesystems.us       |
        | Mon to Sat: 9.00 am to 5:00 pm      |

  @ASB-16 @regression @smoke
  Scenario Outline:  Social media buttons displayed in the footer section
    Then Verify "<socialMediaBtn>" is displayed
    And Verify "<socialMediaBtn>" link to window as url as "<url>"
    Examples:
      | socialMediaBtn       | url                       |
      | https://facebook.com | https://www.facebook.com/ |
      | https://twitter.com  | https://twitter.com/      |
      | https://skype.com    | https://www.skype.com/en/ |
      | https://linkedin.com | https://www.linkedin.com/ |


