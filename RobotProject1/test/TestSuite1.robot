*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log     Inside test suite
Suite Teardown    Log    Inside test suite
Test Setup    Log    Inside testcase
Test Teardown    Log    inside testcase

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello    
    
MySecondTest
    Log    2nd test
    Set Tags    regression1  
    Remove Tags    regression1
MyThirdTest  
    [Tags]    examplehttp://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/http://download.eclipse.org/egit/updates/  
    Log    3rd test    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Input Text    name=q            Automation step by step
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed
        
    
# SampleLoginTest
    # [Documentation]    Sample login testing
    # Open Browser    ${URL}            chrome    
    # Set Browser Implicit Wait    5   
    # LoginKW
    # Click Element    id=welcome
    # Click Element    link=Logout
    # Close Browser 
    # Log    Test Completed           
    # Log    Executed by %{username}% on %{os}%    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{Credentials}    Admin    admin123
&{Logindata}    username=Admin    password=admin123
    

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{Credentials}[0]
    Input Password    id=txtPassword    &{Logindata}[password]
    Click Button    id=btnLogin
    
    
    