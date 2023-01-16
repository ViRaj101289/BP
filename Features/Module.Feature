Feature: Pipeline operations
  Module B writes value in database and table creation
  Module C and D Perform operation on values in the database

  Scenario: Writing values in the database
    Given Module B stores the number and create table in database if it doesn't exist
    When Module A generate a number
    And connection to database is established
    Then Value is stored in the database

  Scenario: Perform sum of all the numbers in database
    Given More than one value is present in the database table
    When Connection to database is established
    Then Module C returns sum of all numbers

  Scenario: Perform multiplication of all the numbers in database
    Given More than one value is present in the database table
    When Connection to database is established
    Then Module D returns multiplication of all numbers

