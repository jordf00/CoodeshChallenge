*** Settings ***
Library  SeleniumLibrary


*** Variables ***

@{ShirtsRandom}     Cassius Sparring Tank     Atlas Fitness Tank      Sinbad Fitness Tank
@{Sizes}    option-label-size-143-item-166  option-label-size-143-item-167  option-label-size-143-item-168  option-label-size-143-item-169  option-label-size-143-item-170
@{Colors}   option-label-color-93-item-52   option-label-color-93-item-53   option-label-color-93-item-56
@{ColorSecondShirt}     option-label-color-93-item-50
${url}  https://magento.softwaretestingboard.com
${browser}  chrome
${SpecificSize}    option-label-size-143-item-166
${SpecificColor}    option-label-color-93-item-52

*** Test Cases ***

Open browser

    open browser    ${url}  ${browser}
    wait until page contains    ${url}
    Maximize Browser Window
    sleep  2

Create an account

    click link  link:Create an Account
    sleep   5
    input text  xpath:/html/body/div[2]/main/div[3]/div/form/fieldset[1]/div[1]/div/input   Katrina 
    sleep   3
    input text  xpath:/html/body/div[2]/main/div[3]/div/form/fieldset[1]/div[2]/div/input   Jensen
    sleep   3
    input text  xpath:/html/body/div[2]/main/div[3]/div/form/fieldset[2]/div[1]/div/input   katrina.jensen@example.com
    sleep   3
    input text  xpath:/html/body/div[2]/main/div[3]/div/form/fieldset[2]/div[2]/div/input   StrongPassword0
    sleep   3
    input text  xpath:/html/body/div[2]/main/div[3]/div/form/fieldset[2]/div[3]/div/input   StrongPassword0
    sleep   3
    click button    xpath:/html/body/div[2]/main/div[3]/div/form/div/div[1]/button
    sleep   2
    click element    xpath=//img[contains(@src, 'https://magento.softwaretestingboard.com/pub/static/version1695896754/frontend/Magento/luma/en_US/images/logo.svg')]
    sleep   5

Search for shirt

    input text  xpath:/html/body/div[2]/header/div[2]/div[2]/div[2]/form/div[1]/div/input   Shirt
    sleep  2

Selecting shirt

    click button    xpath:/html/body/div[2]/header/div[2]/div[2]/div[2]/form/div[2]/button
    sleep   2
    Click Link  link:Balboa Persistence Tee
    sleep   2

Selecting sizes at random

    ${valueSize}=  Evaluate  random.choice($Sizes)  random
    Click Element   ${valueSize}
    sleep    4

###Selecting specific size

#   Click element   ${SpecificSize}

Selecting Colors at random

    ${valueColor}=  Evaluate  random.choice($Colors)  random
    Click Element   ${valueColor}
    sleep    2
    #add to cart##
    click button    xpath:/html/body/div[2]/main/div[2]/div/div[2]/div[4]/form/div[2]/div/div/div[2]/button
    sleep   5
    Wait Until Page Contains Element    //*[contains(text(),'Reviews')]
    scroll element into view        //*[contains(text(),'Reviews')]
    click element   //*[contains(text(),'Reviews')]
    sleep   3
    click element   xpath:/html/body/div[2]/main/div[2]/div/div[4]/div/div[6]/div[2]/div[2]/form/fieldset/fieldset/div/div/div/div/label[1]
    sleep   4
    scroll element into view    xpath:/html/body/div[2]/main/div[2]/div/div[4]/div/div[6]/div[2]/div[2]/form/div/div/button
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[4]/div/div[6]/div[2]/div[2]/form/fieldset/div[1]/div/input  Guilherme
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[4]/div/div[6]/div[2]/div[2]/form/fieldset/div[2]/div/input  Nice one
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[4]/div/div[6]/div[2]/div[2]/form/fieldset/div[3]/div/textarea  Looks nice... I didn't buy it tho
    Sleep   5
    click button    xpath:/html/body/div[2]/main/div[2]/div/div[4]/div/div[6]/div[2]/div[2]/form/div/div/button
    Sleep   5

###Selecting specific colors

  #  Click element   ${SpecificColor}
  #  sleep   3

Selecting Men's Catalog and Tank section

    Click Link  link:Men
    Sleep   5
    Click Link  link:Tanks

Selecting Random Shirt

    ${valueShirts}=  Evaluate  random.choice($ShirtsRandom)  random
    Click Link   ${valueShirts}
    sleep    4
    Click Element       //*[contains(text(),'XS')]
    Sleep   5
    ${valueColorSecond}=  Evaluate  random.choice($ColorSecondShirt)  random
    Click Element   ${valueColorSecond}
    sleep    4
    Click Element   product-addtocart-button
    Sleep   5

Cart

    #Click button    xpath:/html/body/div[2]/header/div[2]/div[1]/a
    click element    xpath:/html/body/div[2]/header/div[2]/div[1]
    sleep   3

    click button    xpath:/html/body/div[2]/header/div[2]/div[1]/div/div/div/div[2]/div[3]/div/button
    sleep   8
    select radio button     ko_unique_1      flatrate_flatrate
    sleep   3
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[3]/div[4]/ol/li[1]/div[2]/form/div/fieldset/div/div[1]/div/input    Random Street
    sleep   2
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[3]/div[4]/ol/li[1]/div[2]/form/div/div[4]/div/input     random City
    sleep   2
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[3]/div[4]/ol/li[1]/div[2]/form/div/div[7]/div/input     123456-123456
    sleep   2
    input text  xpath:/html/body/div[2]/main/div[2]/div/div[3]/div[4]/ol/li[1]/div[2]/form/div/div[9]/div/input     11 999999999
    sleep   2
    select from list by label   country_id      Brazil
    sleep   5
    select from list by label   region_id       São Paulo
    sleep   5
    click button    xpath:/html/body/div[2]/main/div[2]/div/div[3]/div[4]/ol/li[2]/div/div[3]/form/div[3]/div/button
    sleep   4

Review & Payments

    click element  //*[contains(text(),'Apply Discount Code')]
    sleep   5
    input text  xpath:/html/body/div[3]/main/div[2]/div/div[3]/div[4]/ol/li[3]/div/form/fieldset/div[3]/div[2]/form/div[1]/div/div/input    Coodesh
    Click button    xpath:/html/body/div[3]/main/div[2]/div/div[3]/div[4]/ol/li[3]/div/form/fieldset/div[3]/div[2]/form/div[2]/div/button
    Sleep   5
    Click button    xpath:/html/body/div[3]/main/div[2]/div/div[3]/div[4]/ol/li[3]/div/form/fieldset/div[1]/div/div/div[2]/div[2]/div[4]/div/button
    sleep   8


Searching and clicking results

    input text  xpath:/html/body/div[2]/header/div[2]/div[2]/div[2]/form/div[1]/div/input   shirt
    sleep  5
    Element Should Be Visible   //*[contains(text(),'shirt women purple')]
    sleep   1
    click element   //*[contains(text(),'shirt women purple')]
    sleep   1
    scroll element into view        //*[contains(text(),'Inez Full Zip Jacket')]
    click link  link:Inez Full Zip Jacket
    sleep   1


Home Page

    click element    xpath=//img[contains(@src, 'https://magento.softwaretestingboard.com/pub/static/version1695896754/frontend/Magento/luma/en_US/images/logo.svg')]
    sleep   5
