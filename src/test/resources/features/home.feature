Feature: Home page tests

Background: Navigate to Home Page
  Given I open url of homepage

  @ASB-3
  Scenario: Verify address and phone number are displayed under the main navigation bar on top of the page
    Then Verify "10090 Main Street Fairfax, VA, USA" is displayed
    Then Verify "703-831-3217" is displayed

  @ABS-6 @regression @smoke
  Scenario: Test header of the home page
    Then Verify header text is "Advance Systems - Home"