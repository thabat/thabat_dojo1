Dado(/^que estou logado no site Orange$/) do
  visit'https://enterprise-demo.orangehrmlive.com/'
end

Quando(/^realizo alteração do perfil já existente$/) do
   fill_in('txtUsername', :with => 'Admin')
   fill_in('txtPassword', :with => 'admin')
   click_button'btnLogin'
   click_link('menu_pim_viewPimModule')
   click_link('menu_pim_viewEmployeeList')
   click_link('Brody')
   click_button('btnSave')
   select('Other', :from => 'personal_cmbMarital')
   click_button'btnSave'
end

Então(/^tenho um perfil editado$/) do
  assert_text('Marital Status')
end