pragma solidity 0.8.1;

contract variables {
    
    int public myInt = 1;
    uint public myUint = 1;
    string public mystring = "Rohith";
    bytes32 public myBytes32 = "Rohithbytes";
    uint256 public myUnint256 = 1;
    
    struct studentStruct {
        uint id;
        string name;
    }
    
    studentStruct public student1 = studentStruct( 1 , "Hii");
    
    
}