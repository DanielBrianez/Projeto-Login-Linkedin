Dado('que o usuário queira se logar') do
    login.load
end
  
Quando('ele digitar credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:senha])
end
  
Entao('ele deve acessar o site com sucesso') do
    home.checkLoginSuccesful
end