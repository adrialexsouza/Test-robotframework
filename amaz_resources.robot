*** Settings ***
Library  SeleniumLibrary  

*** Variables ***
${URL}   http://www.amazon.com.br
${MENU_LIVROS}   //a[@href='/Livros/b/?ie=UTF8&node=6740748011&ref_=nav_cs_books'][contains(.,'Livros')]

*** Keywords ***
abrir o navegador
    Open Browser   browser=chrome

    
fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To   url=${URL}    
    Wait Until Element Is Visible   Locator=${MENU_LIVROS} 
