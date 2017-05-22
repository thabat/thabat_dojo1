#language: pt
#uft-8

Funcionalidade:Cadastro de novo empregado 
 Eu como usuario 
 Quero fazer um cadastro 
 Para um novo empregado

@done
Cenário: Cadastro do novo funcionário
   Dado que estou logado no site Orange 
   Quando realizo o login com perfil ADM
   Então tenho um cadastro de um novo empregado
