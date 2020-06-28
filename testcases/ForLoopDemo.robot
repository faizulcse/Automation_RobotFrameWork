*** Test Cases ***
#ForLoop1
#    :FOR   ${i}    IN RANGE    1  10
#    \   log to console  ${i}
#
#ForLoop2
#    :FOR   ${i}    IN    1 2 3 4 5 6 7 8 9 10
#    \   log to console  ${i}
#
#ForLoop3
#    :FOR   ${i}    IN    1  2  3  4  5  6  7  8  9  10
#    \   log to console  ${i}

#ForLoop4withList
#    @{list}     create list  1  2   3   4   5   6   7   8   8   9
#    : FOR   ${i}    IN  @{list}
#    \   log to console  ${i}

#ForLoop4
#    : FOR   ${i}    IN  faizul islam test aapon
#    \   log to console      ${i}

ForLoopWithExit
    @{items}    create list  1  2   3   4   5
    : FOR   ${i}    IN  @{items}
    \   log to console  ${i}
    \   exit for loop if  ${i}==3