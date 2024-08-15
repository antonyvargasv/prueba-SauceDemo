package pages;

import org.testng.Assert;

public class PaginaLogin extends BasePage {
    private String userField = "//input[@id='user-name']";
    private String passwordField = "//input[@id='password']";
    private String btnLogin = "//input[@id='login-button']";
    private String mensajeField = "//h3[@data-test='error']";

    public PaginaLogin() {
        super(driver);
    }

    public void navegarSauceDemo() {
        navigateTo("https://www.saucedemo.com");
    }

    public void ingresarUsuario(String user) {
        write(userField, user);
    }

    public void ingresarContraseña(String password) {
        write(passwordField, password);
    }

    public void clickLogin() {
        clickElement(btnLogin);
    }

    public void validarUrl(String url) {
        String expectedUrl = url;
        Assert.assertEquals(driver.getCurrentUrl(), expectedUrl);
    }

    public void validarMensaje(String text) {
        String expecteText = text;
        Assert.assertEquals(convertirText(mensajeField), expecteText);
    }

}