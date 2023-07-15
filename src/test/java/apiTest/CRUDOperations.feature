Feature: This feature will be used to test crud operationson emplotee springboot application using Rest Assured

  Scenario: This scenario will test the get operation on Employee DB
    Given I have the and point as "http://3.84.15.226:8088/employees"
    When I perfrom Get operation
    Then I should get the response as 200

  Scenario: This scenario will test the Post operation on Employee DB
    Given I have the and point as "http://3.84.15.226:8088/employees"
    When I perform the Post operation with below data
      | firstName | Ramana       |
      | lastName  | Murthy       |
      | salary    |         8000 |
      | email     | abc@xyz1.com |
    Then I should get the response as 201
    And the fname should be "Ramana" in response
