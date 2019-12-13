*** Settings ***
Test Template    Always True
Documentation    This file is used for regression testing on metadata (KO only)

*** Test Cases ***               Message
Multiline Space                  MultilineSpace
    [Tags]  tf:multi_space=value1 |value2 | value3
Null Value                       NullValue
    [Tags]  tf:key_for_null_value=  tf:multivalue_null=value1||value3
Number In Value                  NumberInValue
    [Tags]  tf:first_key=1111  tf:multiline=222|zzz|mix33  tf:solo_line=mix555
Spaces                           Spaces
    [Tags]  tf: space_before_key=1111  tf:space in key=value  tf: space_before_key_only
Unaccepted Char Key1             UnacceptedCharKey
    [Tags]  tf:f!r§t_key=first_value  tf:$€cond_key=second_value  tf:(third_key)=third_value  tf:[fourth_key]=fourth_value  tf:{fifth_key}=fifth_value  tf:<sixth_key>=sixth_value
Unaccepted Char Key2             UnacceptedCharKey2
    [Tags]  tf:<sixth_key>=sixth_value  tf:évènth~kêy&=seventh_value  tf:"octo?"key@;=eight  tf:éèàêîïë=accent_only_value  tf:%ùà*µkeyêûïkey=random_value  tf:a///=slash_value  tf:a\\\=anti-slash-value
Unaccepted Char Value1           UnCharVal1
    [Tags]  tf:first_key=f!r§t_value  tf:second_key=$€cond_value  tf:third_key=(third_value)  tf:fourth_key=[fourth_value]  tf:fifth_key={fifth_value}  tf:anti-slash-key=a\\\
Unaccepted Char Value2           UnCharVal2
    [Tags]  tf:sixth_key=<sixth_value>  tf:seventh_key=sévènth~valuê&  tf:eight="octo?"key@;  tf:accent_only_key=éèàêîïë  tf:random_key=%ùà*µkeyêûï_value  
Unaccepted Char Multiline        UnCharMult
    [Tags]  tf:mùltilin€=value_one|value_two  tf:multiline=vàluè_onê|v@lüe_two;|value_three2
Unaccepted Char Solo Key         UnCharSoloKey
    [Tags]  tf:&&&  tf:ééé  tf:èèè  tf:ôôô
Unique Key                       UniqueKey
    [Tags]  tf:unique=value1  tf:unique=value2  tf:UniQue=case_insensitive
Multiline Unique Key             MultiUniqueKey
    [Tags]  tf:unique_multi=value_one|value_two  tf:unique_multi=value_three
Unicity                          Uni1
    [Tags]  tf:unicity=same_value  tf:unicity_multiline=same_value
Unicity2                         Uni2
    [Tags]  tf:unicity=same_value  tf:unicity_multiline=value_one|same_value|value_three
Unicity Suite                    Unisuite
    [Tags]  tf:unicity_suite=same_value  tf:unicity_suite_multiline=same_value

*** Keywords ***

Always True
    [Arguments]         ${message}
    Set Test Message    ${message}