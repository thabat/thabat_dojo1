Dado(/^que estou no site OrangeHRM$/) do
  visit'https://enterprise-demo.orangehrmlive.com/'
  end

Quando(/^realizo o login com perfil ADM$/) do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button 'btnLogin'
  click_link 'menu_pim_viewPimModule'
  click_link 'menu_pim_addEmployee'
  fill_in('firstName', :with => 'Nicolas')
  fill_in('middleName', :with => 'Cristin')
  fill_in('lastName', :with => 'Souza')
  check('chkLogin')
  fill_in('user_name', :with => 'nicolas')
  fill_in('user_password', :with => 'corinthians90')
  fill_in('re_password', :with => 'corinthians90')
  select('France Regional HQ', :from => 'location')
  click_button 'btnSave'
end

Então(/^tenho um cadastro de um novo empregado$/) do
  assert_text('Personal Details')
end