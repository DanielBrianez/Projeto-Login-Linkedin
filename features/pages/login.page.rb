class LoginPage < SitePrism::Page 

    set_url '/login/pt'
    element :emailField, :xpath, "/html/body/div/main/div[2]/div[1]/form/div[1]/input"
    element :passwordField, :id, "password"
    element :loginButton, :xpath, "/html/body/div/main/div[2]/div[1]/form/div[3]/button"

    def userLogin (email, senha)
        emailField.set (email)
        passwordField.set (senha)
        loginButton.click
    end
    
end