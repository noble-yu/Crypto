pragma solidity ^0.8.18;

contract MyContract {

    uint256 public peopleCount;
    mapping(uint => Person) public people;

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount++;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
        
    }
}
