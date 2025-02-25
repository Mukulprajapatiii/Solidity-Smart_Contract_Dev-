pragma solidity ^0.8.0;

contract contract_payment{
    function ETHTransfer(address payable _reciever) public payable{
    require(msg.value>0,"Amount should be greater than zero");
    _reciever.transfer(msg.value);
    
   }
}