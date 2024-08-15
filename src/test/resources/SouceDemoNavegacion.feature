@Navegation
Feature: Login de usuario
 
  Scenario Outline: Login exitoso con credenciales validas
    Given que el usuario esta en la pagina de login
    When el usuario ingresa su nombre de usuario "<username>"
    And el usuario ingresa su contraseña "<password>"
    And el usuario hace clic en el boton de login
   Then el usuario deberia ser redirigido a la pagina "<url>"
  Examples:
    | username                 | password           | url                                       |
    | standard_user            | secret_sauce       |https://www.saucedemo.com/inventory.html   |
    | problem_user             | secret_sauce       |https://www.saucedemo.com/inventory.html   |
    | performance_glitch_user  | secret_sauce       |https://www.saucedemo.com/inventory.html   |
    | error_user               | secret_sauce       |https://www.saucedemo.com/inventory.html   |
    | visual_user              | secret_sauce       |https://www.saucedemo.com/inventory.html   |

   Scenario Outline: Login con credenciales incorrectas
    Given que el usuario esta en la pagina de login
    When el usuario ingresa su nombre de usuario "<username>"
    And el usuario ingresa su contraseña "<password>"
    And el usuario hace clic en el boton de login
   Then se debe mostrar el mensaje "<mensaje>"
  Examples:
    | username       | password           | mensaje                                            |
    | locked_out_user  | secret_sauce     |Epic sadface: Sorry, this user has been locked out. |







    