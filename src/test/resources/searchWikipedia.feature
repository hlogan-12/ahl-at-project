# *** Each non-blank line must start w/ Gherkin keyword

# Multiple features may have the same Given steps before each scenario.
# To avoid copy/paste, define those steps as feature pre-req w/ 'Background' keyword.
Feature: search Wikipedia

  Background:
    Given Open http://en.wikipedia.org
    And Do login

  Scenario: direct search article
    Given Enter search term 'Cucumber'
    When Do search
    Then Single result is shown for 'Cucumber'