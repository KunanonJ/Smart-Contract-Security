pragma solidity 0.5.1;

contract Storage {
    mapping (string => uint256) _uintStorage;
    mapping (string => address) _addressStorage;
    mapping (string => bool) _boolStorage;
    mapping (string => string) _stringStorage;
    mapping (string => bytes) _bytesStorage;
    address public owner;
    bool public _initialized;
}