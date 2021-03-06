Feature: Course category

  Background:
    Given I am a platform administrator

  Scenario: Add a course category
      Given I am on "/main/admin/course_category.php?action=add"
    And I should see "Add category"
    When I fill in the following:
      | code | COURSE_CATEGORY |
      | name | Course category |
    Then I fill in editor field "description" with "description"
    Then I attach the file "/public/img/logo.png" to "picture"
    And I press "submit"
    And wait for the page to be loaded
    Then I should see "Item added"

  Scenario: Edit a course category
    Given I am on "/main/admin/course_category.php"
    Then I should see "Course category"
    Then I follow "Edit"
    Then I should see "Edit this category"
    Then I fill in the following:
      | name | Course category edited |
    Then I fill in editor field "description" with "description edited"
    And I press "submit"
    And wait for the page to be loaded
    Then I should see "Update successful"
    And I should see "Course category edited"

  Scenario: Delete course category
    Given I am on "/main/admin/course_category.php"
    Then I should see "Course category edited"
    Then I follow "Delete"
    Then confirm the popup
    And wait for the page to be loaded
    Then I should see "There are no categories here"