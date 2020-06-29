*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem
Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   homestead
${DBUser}   root
${DBPass}
${DBHost}   127.0.0.1
${DBPort}   3306

*** Test Cases ***
# Single Record
# Create person table
#    ${output}=  execute sql string  Create table person(id integer, first_name varchar(20), last_name varchar(20))
#    log to console  ${output}
#    should be equal as strings  ${output}   None
#
#Inserting Data in Person Table
#    ${output}=  execute sql string  Insert into person values(102, "Faizul", "Islam");
#    log to console  ${output}
#    should be equal as strings  ${output}   None

# Multiple records
#    ${output}=  execute sql script  ./TestData/mydb_person_insertData.sql
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Check Faizul record present in persion Table
#    check if exists in database  select id from homestead.person where first_name="Faizul";

#Check aapon record Not present in person Table
#        check if not exists in database  select id from homestead.person where first_name="aapon";

#Check Person Table exists in homestead database
#    table must exist  person'

#Verify Row Count is Zero
#    row count is 0  SELECT * FROM homestead.person where first_name = 'xyz'

#Verify Row Count is Equal to Some Value
#    row count is equal to x  SELECT * FROM homestead.person where first_name = 'faizul';   6

#Verify Row Count is greater than Some Value
#    row count is greater than x  SELECT * FROM homestead.person where first_name = 'faizul';   0

#Verify Row Count is less than Some Value
#    row count is less than x  SELECT * FROM homestead.person where first_name = 'asdf';   1

#Update record in person table
#    ${output}=  execute sql String  update homestead.person set first_name="Aapon" where id="103";
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Retrive Records from Person Table
#    @{queryResults}=    query  select * from homestead.person;
#    log to console  ff @{queryResults}

#Delete Records from Person Table
#   ${output}=    execute sql string     Delete from homestead.persion;
#   log to console  ${output}
#   should be equal as strings  ${output}    None
