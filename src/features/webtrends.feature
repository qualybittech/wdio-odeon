Feature: webtrends application tests for login
 
  Scenario Outline: As a customer user I can log into the webtrends application

    Given I am on the webtrends website home page
    When I login with webtrends <email>, <password>, <type>
    Then I should see username logged in <username>
    And Logout from application 
    Examples:
      | email                                  | password    | type  |username        |
      | louvina.barbosa@webtrends-optimize.com | Lo15BA07!!  | sso   |Louvina Barbosa |

  Scenario Outline: As a invalid user I can't log into the webtrends application
  
    Given I am on the webtrends website home page
    When I login with webtrends <email>, <password>, <type>
    Then I should not able to login
    Examples:
      | email                                  | password    | type  |
      | louvina.barbosa@webtrends-optimize.com | Lo15BA07!!  |       |

  @test
  Scenario Outline: Multiple user login

    Given I am on the webtrends website home page
    When I login with webtrends <email>, <password>, <type>
    Then I should see username logged in <username>
    And Logout from application 
    Examples:
      | email                                  | password    | type  |username        |
      | louvina.barbosa@webtrends-optimize.com | Lo15BA07!!  | sso   |Louvina Barbosa |


  Scenario Outline: Forget password

    Given I am on the webtrends website home page
    When I check for forgetpassword <email>
    Examples:
      | email                                  | 
      | louvina.barbosa@webtrends-optimize.com | 
      | louvina.barbosa@webtrends-optimize.com | 