pragma solidity ^0.4.8;
import "./Library.sol";

contract Fundraiser{
    
    Library lib = Library(0xbbf289d846208c16edc8474705c748aff07732db);
    
    mapping  (address => uint) balances;
    
    function contribute() payable{
        balances[msg.sender] += msg.value;
    }
    
    function withdraw(){
        //if(balances[msg.sender] == 0)
        if(lib.isNotPositive(balances[msg.sender])){
            throw;
        }
        
        balances[msg.sender] = 0;
        msg.sender.call.value(balances[msg.sender])();
    }
    
    function getFunds() returns (uint){
        return address(this).balance;
    }
    
}
