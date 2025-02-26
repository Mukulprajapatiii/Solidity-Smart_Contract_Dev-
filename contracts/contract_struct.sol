// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract practice{
    struct Student{
    string name;
    uint serial;
    uint roll;
}
    Student public s1;

function studentsstruct (string memory _name, uint _serial, uint _roll) public {
    s1.name=_name;
    s1.serial=_serial;
    s1.roll=_roll;
}

function updatestudent (string memory _Newname, uint _Newserial, uint _Newroll) public {
    s1.name=_Newname;
    s1.serial=_Newserial;
    s1.roll=_Newroll;
}

}