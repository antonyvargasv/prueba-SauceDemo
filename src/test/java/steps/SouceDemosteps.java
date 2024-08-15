package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.PaginaLogin;

public class SouceDemosteps {

    PaginaLogin loginPage = new PaginaLogin();

    @Given("que el usuario esta en la pagina de login")
    public void navegarLogin() {
        loginPage.navegarSauceDemo();
    }

    @When("el usuario ingresa su nombre de usuario {string}")
    public void elUsuarioIngresaSuNombreDeUsuario(String username) {
        loginPage.ingresarUsuario(username);
    }

    @And("el usuario ingresa su contraseña {string}")
    public void elUsuarioIngresaSuContrasena(String password) {
        loginPage.ingresarContraseña(password);
    }

    @And("el usuario hace clic en el boton de login")
    public void elUsuarioHaceClicEnElBotonDeLogin() {
        loginPage.clickLogin();
    }

    @Then("el usuario deberia ser redirigido a la pagina {string}")
    public void elUsuarioDeberiaSerRedirigidoALaPaginaDeInicio(String url) {
        loginPage.validarUrl(url);
    }

    @Then("se debe mostrar el mensaje {string}")
    public void validarMensaje(String mensaje) {
        loginPage.validarMensaje(mensaje);
    }

  

}