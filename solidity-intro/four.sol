pragma solidity 0.8.1;

contract mappings {
    
    mapping(uint => string) public names;
    mapping(uint => book) public books;
    mapping(address => mapping(uint => book)) public mybooks;
    
    struct book {
        uint id;
        string bookName;
        string author;
    }
    
    constructor() public{
        names[1] = "rohhit";
        names[2] = "honey";
    }
    
    function addbook(uint _id , string memory _bookName , string memory _author) public {
        books[_id] = book(_id,_bookName,_author);
        
    }
    
    function addMyBooks(uint _id , string memory _bookName , string memory _author) public {
        mybooks[msg.sender][_id] = book(_id,_bookName , _author); 
    }
    
}