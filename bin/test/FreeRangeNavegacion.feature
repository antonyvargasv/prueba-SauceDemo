@Navegation
Feature: Navigation bar
    To see the subpages
    Without logging in
    I can click the navigation bar links

    #Algo que se tiene que ejecutar antes:
    Background: I am on the Free Rangge Testers web without logging in.
        Given Navego a www.freerangetesters.com

    #Se coloca "Scenario"=> cuando solo es secuencial, Scenario Outline:cuando se colocará una tabla de ejemplo:
    @Tag01
    Scenario Outline: I can access the subpages through the navigation bar 
        When I go to <section> using the navigation bar
        Examples:
            | section   |
            | Cursos    |
            | Recursos  |
            | Blog      |
            | Mentorías |
            | Udemy     |

    @Tag02
    Scenario: Courses are presented correctly to potential customers
        When I go to Cursos using the navigation bar
        Then Select introduction Testing
 
    @Plans
    Scenario: Users can select a plan when signing up
        When I select Elegir Plan
        Then I can validate the options in the checkout page
        # se puede utilizar I o The user ya que se colocó "|" en steps: Then I can validate the options in the checkout page







    