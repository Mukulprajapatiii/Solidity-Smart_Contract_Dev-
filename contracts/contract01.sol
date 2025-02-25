// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract contract01{
    string public message;
    function setMessage(string memory _msg)public {
        message=_msg;
    }

    function getMessage() public  view returns(string memory){
        return message;
    }

    function concatenate(string memory _msg) public {
        message=string.concat(message,_msg);
    }

}