#https://franz-see.github.io/Robotframework-Database-Library/api/0.5/DatabaseLibrary.html
*** Settings ***

Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database  pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database
*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   127.0.0.1       #localhost
${DBPort}   3306
*** Test Cases ***
#Create person table
#    ${output}=  Execute Sql String    Create table person(id integer,first_name varchar(20),Last_name varchar(20));
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None


Inserting Daa in person Table
    #${output}=  Execute Sql String    Insert into person values(101,"Mohamed","kajkaj");       #Single data
    ${output}=  Execute Sql Script    ./TestData/mydb_person_insertData.sql             #Multiple data
    #Log To Console    ${output}
    #Should Be Equal As Strings    ${output}    None

Check if data is exist in Person-Table
    Check If Exists In Database    select id from mydb.person where first_name="Simo"

Check if data is exist in Person-Table
    Check If not Exists In Database    select id from mydb.person where first_name="kiolo"

Check if table exists in mydb database
    Table Must Exist    person

Update data in person table
    Execute Sql String      Update mydb.person set first_name="Lolo" where id=103

Retreive data from person Table
    @{queryResults}=    Query    Select * from mydb.person;
    Log To Console   many @{queryResults}

#delete data from person Table
    #Execute Sql String    Delete from mydb.person;
