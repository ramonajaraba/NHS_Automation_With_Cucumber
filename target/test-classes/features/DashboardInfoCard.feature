Feature: Dashboard page cards: US2,
  Acceptance criteria:
  - Landing Page:
       - title: LoginPage,
       - url: http://www.techtorialacademy.link/
  - Successful login by using correct admin credentials
      - username: admin
      - password: admin
  - Home Page:
      - title: NHS patients
      - url: http://www.techtorialacademy.link/app

  - Home page has accessible: hospital information, health information, and manage the rooms
      -3 info cards with same size, on the same line, with different colors, icons, numbers, titles

  - Info card 1:
      - color: blue
      - icon: bed (fa fa-hotel fa-5x)
      - title: Patients with rooms
  - Info card 2:
      - color: red
      - icon: person (fa fa-child fa-5x)
      - title: Patients waiting
  - Info card 2:
      - color: yellow
      - icon: hospital (fa fa-hospital-o fa-5x)
      - title: Free rooms


  Background:
    Given the user navigate to the NHS website
    When  user login with credentials 'admin' and 'admin'
    When user validates page title 'NHS patients' and url 'http://www.techtorialacademy.link/app'

#
  Scenario: Dashboard page has 3 info cards
    Then user sees 3 info cards
    Then user validates the cards have the same dimensions and are on the same line
#
  Scenario: Dashboard cards have numbers
    Then user validates the cards have positive numbers

  Scenario Outline: Dashboard cards have the right text
    Then user validates the cards with index '<cardIndex>' have the expected title '<value>'
    Examples:
      | cardIndex | value               |
      | 1         | Patients with rooms |
      | 2         | Patients waiting    |
      | 3         | Free rooms          |


#  Scenario Outline:   Dashboard cards have the right background color
#    Then user validates the cards with '<cardIndex>' have the expected color '<value>'
#    Examples:
#      | cardIndex | value |
#      | 1         | blue  |
#      | 2         | red   |
#      | 3         | yellow |

#
#  Scenario Outline: Dashboard cards have the right icons
#    Then user validates the cards with '<cardIndex>' have the expected '<value>'
#    Examples:
#      | cardIndex | value    |
#      | 1         | hotel    |
#      | 2         | child    |
#      | 3         | hospital |
#








