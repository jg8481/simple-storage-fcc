// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

/*
// Just screwing around....
contract SimpleStorage {

   bool  favoriteBool = false;
   uint256  favoriteNumber = 8;
   string  goodAdvice = "Friends don't let friends trade meme tokens while drunk....";
   int256  favoriteInt = -777;
   address  eightsixsevenfivethreeOhNine =  0x0000000000000000000000000000000000000000;
   bytes  forAGoodTimeCall = "jen";
  
}
// This stuff compiled FYI ^
*/

// Note to self : 
// The data-type string is an array of bytes.

/*
contract SimpleStorage {
   uint256 public favoriteNumber;

   function store(uint256 _favoriteNumber) public {
      favoriteNumber = _favoriteNumber;
   }

   function retrieve() public view returns(uint256){
     return favoriteNumber;
   }

}  
// This stuff compiled and deployed FYI ^
*/

contract SimpleStorage {
   uint256 favoriteNumber;

   struct People {
    uint256 favoriteNumber;
    string name;
   }
    
   //uint256 public favoriteNumberList;
   People[] public people;

   function store(uint256 _favoriteNumber) public {
      favoriteNumber = _favoriteNumber;
    
   }

   function retrieve() public view returns(uint256){
     return favoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public {
    // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
    // people.push(newPerson);
    // These 2 lines above and the line below do the same thing as the line below, but it's more explicit ^
    people.push(People (_favoriteNumber, _name));
   }

}  
// This stuff compiled and deployed FYI ^
