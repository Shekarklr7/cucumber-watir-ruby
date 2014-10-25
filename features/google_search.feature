@google_search
Feature: Internet Search
         As a casual internet user
         I want to search Qwinix Technologies

@search_for_qwinix_technologies
  Scenario Outline: Search for Qwinix Technologies
    Given I am on the <search engine> Home Page
    When I search for "Qwinix Technologies"
    Then I should see the "Qwinix Technologies" from search results

Examples:
      | search engine |
      | Google        |