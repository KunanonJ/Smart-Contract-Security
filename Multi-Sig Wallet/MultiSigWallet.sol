pragma solidity 0.7.5;
contract Wallet{
    address[] public owners;
    uinit limit;

    struct Transfer{

    }
    
    Transfer[] transferRequests;

    mapping(address => mapping(uint => bool)) approvals; 
    //mapping[adress][transferID] => true/false
    transfer nr 5;
    //mapping[msg.sender][5] = true;
}