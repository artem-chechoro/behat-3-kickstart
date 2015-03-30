Feature: The Gherkin

  @phantomjs @goutte
  Scenario: The Gherkin Headless UI
    Given I am on "/"
    And I fill in "Behat" for "s"
    And I press "Search"
    Then I should see "Behat"
    And count of "25" instances of "Behat" exists on page

  @api @guzzle
  Scenario: The Gherkin API
    When I called "JaffamonkeySite"
    And I get a successful response
    Then the response contains the following values:
      | title  | Some basic CLI web performance tools |
      | status | publish                              |

  @phantomjs @goutte
  Scenario: The Gherkin Browser UI
    Given I am on "/"
    And I fill in "Behat" for "s"
    And I press "Search"
    Then I should see "Behat"

  @phantomjs @goutte
  Scenario: The Gherkin Form Filling Eg2
    Given I am on "/form-test"
    When I fill form with:
      | title     | some text |
      | checkbox1 | YES       |
      | checkbox2 | YES       |
      | checkbox3 | YES       |
      | select    | Option 3  |
    Then I should see form with:
      | title     | some text |
      | checkbox1 | YES       |
      | checkbox2 | YES       |
      | checkbox3 | YES       |
      | select    | Option 3  |
    And I press "Save"
    And I should see "Oops! That page can’t be found"