pragma solidity ^0.4.8;

contract Library{
    
    address owner;
    
    function isNotPositive(uint number) returns (bool){
        if(number<=0){
            return true;
        }
        return false;
    }
    

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
    
    modifier onlyOwner {
        if(msg.sender != owner){
            throw;
        }
        _;
    }
    
    function initOwner(){
        if(owner==address(0)){
            owner = msg.sender;
        }
        else{
            throw;
        }
    }
    
}