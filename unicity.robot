*** Settings ***
Test Template    Always True
Documentation    This file is used for regression testing on metadata unicity with the main file

*** Test Cases ***               Message
Unicity Suite2                    Unisuite2
    [Tags]  tf:unicity_suite=same_value  tf:unicity_suite_multiline=value_other1|same_value|value_other3

*** Keywords ***

Always True
    [Arguments]         ${message}
    Set Test Message    ${message}