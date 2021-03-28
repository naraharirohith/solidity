// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract erc721 {
    
    //tokenId for each collectible
    uint tokenId = 0;
    
    //token name
    string private _name;
    
    //token symbol
    string private _symbol;
    
    //Mapping from token ID to owner address
    mapping (uint => address) public _owners;
    
    mapping(uint => string) private _collectibleNames;
    
    mapping(uint => address) private _tokenApprovals;
    
    constructor(string memory _tokenName , string memory _tokenSymbol){
        _name = "Kitties";
        _symbol = "CAT";
    }
    
    //checks whether the collectible already minted or mot.
    function _exists(string memory _collectible) internal returns(bool){
        for(uint i =0 ; i<=tokenId ; i++){
            if(keccak256(bytes(_collectibleNames[i])) == keccak256(bytes(_collectible))){
                return true;
        return false;
            }
        }
        
    }
    
    
    //minting
    function createCollectible(string memory _collectible) public returns(uint) {
        tokenId++;
        
        require(_exists(_collectible) == false , "This name is already minted");
        _owners[tokenId] = msg.sender;
        _collectibleNames[tokenId] = _collectible;
        
        return tokenId;
    } 
    

    function buyCollectible(uint _tokenId) public {
        require(_tokenId <= tokenId , "tokenId is not available");
        require(msg.sender != _owners[_tokenId], "Approval to current owner");

        _tokenApprovals[tokenId] = msg.sender;
        transferCollectible(_owners[_tokenId] , msg.sender , _tokenId);
        
    }
    
    function transferCollectible(address _from , address _to , uint _tokenId) private{
        require(_owners[_tokenId] == _from , "Not owned by the owner");
        require( _to != address(0) , "tranfer not possible for zero address");
        require(approval() == true , "Not approved by the owner");
        
        _tokenApprovals[_tokenId] = address(0);
        _owners[_tokenId] = _to;
        
    }
    
    function ownerOf(uint tokenId) public returns (address) {
        address owner = _owners[tokenId];
        require(owner != address(0), "owner doesnot _exists");
        
        return owner;
    }
    
}
