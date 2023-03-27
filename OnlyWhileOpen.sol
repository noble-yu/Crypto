pragma solidity ^0.8.18;

contract MyContract {

    uint256 public peopleCount;
    mapping(uint => Person) public people;

    uint256 openingTime = 1679915532;

    

    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }


    function addPerson(string memory _firstName, string memory _lastName) public onlyWhileOpen {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}
