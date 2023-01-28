# For basic variable handling we don't need any external library
# Keywords like Log To Console, Evaluate and Set Variables are alreay present in Builtin libraries

*** Variables ***

${Name}              Rajat Gupta
${numero_uno}        1
${number_two}        2


*** Test Cases ***

Greet The Person
    Log To Console        Hello ${Name}

Add Two Numbers
    ${SUM}                Evaluate     ${numero_uno}+${number_two}
    Log To Console        ${SUM}

Multiply Two Numbers
    ${m1}                 Set Variable     ${19}
    ${m2}                 Set Variable     ${37}
    ${multiplication}     Evaluate         ${m1}*${m2}
    Log To Console        ${multiplication}