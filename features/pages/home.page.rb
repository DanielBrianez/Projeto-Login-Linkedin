class HomePage < SitePrism::Page 

    element :userName, :xpath, "/html/body/div[6]/div[3]/div/div/div[2]/div/div/div/div/div[1]/div/a[1]/div/h3"
    element :navBarHome, :xpath, "/html/body/div[6]/header/div/nav/ul/li[1]/a"
    element :meIcon, :xpath, "/html/body/div[6]/header/div/nav/ul/li[6]/div/button"

    def checkLoginSuccesful
        expect(userName.text).to eql "Daniel Nascimento"
        expect(navBarHome.text).to eql "Início"
        expect(meIcon.text).to eql "Eu"
    end

end 