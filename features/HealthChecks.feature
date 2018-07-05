#encoding: UTF-8

Feature: Health Checks
  Go through a number of sites and check they're online

Scenario: Check status of Ieso site is healthy
  Given I visit the Ieso health page
  Then The All Systems Operational banner displays

Scenario: Check Qwertee homepage can be reached
  Given I visit the homepage for "Qwertee"
  Then The Qwertee title displays correctly

