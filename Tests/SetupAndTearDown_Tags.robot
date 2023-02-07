*** Settings ***
#this will be excuted onetime for this Testsuite
Suite Setup     Log To Console    Opining Browser
Suite Teardown      Log To Console    Closing Browser
#this will be excuted everytime for all Testcases
Test Setup      Log To Console    Login to application
Test Teardown       Log To Console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    [Tags]  sanity
    Log To Console    This is prepaid recharge testcase
TC2 Postpaid Recharge
    [Tags]  regression
    Log To Console    This is postpaid recharge testcase
TC3 Search
    [Tags]  sanity
    Log To Console    This is Search testcase
TC4 Advenced Search
    [Tags]  regression
    Log To Console    This is advenced Search testcase
TC5 nothing doing
    [Tags]  single
    Log To Console    This is duplicate
#in comond line to run one tags -> robot --include=sanity Tests\SetupAndTearDown_Tags.robot         #robot -d .\Results\ .\Tests\SetupAndTearDown_Tags.robot
#to run more than one tag -> robot -i sanity -i regression Tests\SetupAndTearDown_Tags.robot
#to run all tags exclud one -> robot -e regression Tests\SetupAndTearDown_Tags.robot
#inklude one tag and exclude other -> robot -i sanity -e regression Tests\SetupAndTearDown_Tags.robot