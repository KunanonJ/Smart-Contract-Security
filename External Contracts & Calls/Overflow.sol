pragma solidity ^0.4.10;

import "./SafeMath.sol";

contract Overflow{

    mapping (address=>uint) balances;

    function contribute() payable{
        balances[msg.sender] = msg.value;
    }

    function getBalance() constant returns (uint){
        return balances[msg.sender];
    }

    function batchSend(address[] _receivers, uint _value){
        // this line overflows
        uint total = SafeMath.mul(_receivers.length, _value);
        require(balances[msg.sender]>=total);

        // subtract from sender
        balances[msg.sender] = SafeMath.sub(balances[msg.sender], total);

        for(uint i=0;i<_receivers.length;i++){
            balances[_receivers[i]] = SafeMath.add(balances[_receivers[i]], _value);
        }
    }

}