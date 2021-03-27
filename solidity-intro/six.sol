pragma solidity 0.6.1;

contract Hotelroom {
    enum Statuses { Vacant , Occupied }
    Statuses currentstatus;
    
    address payable public owner;
    
    constructor() public {
        currentstatus = Statuses.Vacant;
        owner = msg.sender;
    }
    
    modifier onlyWhenVacant(){
        require(currentstatus == Statuses.Vacant , "currently Occupied");
        _;
    }
    
    modifier costs(uint _amount){
        require(msg.value == _amount , "Not enough");  
        _;
    }
    
    receive() external payable onlyWhenVacant{
        
        currentstatus = Statuses.Occupied;
        owner.transfer(msg.value);
        
    }
    
}