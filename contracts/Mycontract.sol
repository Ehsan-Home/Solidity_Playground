pragma solidity ^0.8.13;

contract MyContract {
    struct Car {
        string name;
        uint16 price;
    }

    Car[] public cars;

    Car public myCar = Car("Opel", 1200);


    function addCar(string memory _name, uint16 _price) public {
        cars.push(Car(_name , _price));
    }

    function getFirstCar() public view returns(Car memory){
        return cars[0];
    }

}