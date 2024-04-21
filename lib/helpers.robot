*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     OperatingSystem

*** Keywords ***
Take Screenshot Custom
    [Documentation]     Takes a Screenshot with TimeStamp
    ${date}=         Get Current Date       result_format=%Y-%m-%d_%H-%M-%S
    ${fileName}=     Set Variable       ${EXECDIR}/screenshots/${date}.png
    Create Directory    ${EXECDIR}/screenshots
    Capture Page Screenshot    ${fileName}
    RETURN    ${fileName}


