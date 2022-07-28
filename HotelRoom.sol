pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT;

/*
In this lesson we are going to learn

Enums: basic enums find like in other programing languages. Keyword: enum

Requirements: the requirements before running a damn function. Keyword: require()

msg.sender: The one who is calling this smart contract

msg.value: The value of money which is passed to this smart contract

Modifiers: reusable functions that can be called before some other function that depends on them can run. Keywords: modifier and  _;

Ether: paying smart contracts, 'ether' can be used as an ether variable and value

Visibility: 

Events: can be emitted whenever wanted, and one can subscribe to them if they like. Keyword: event() and emit

receive(): the default function that handles payments. If you send ether to this address this is the function that will get called. 
The 'receive' function will handle the payment by default. must be called external, to be able to be called outside the smart contract.

external: to be able to be called outside this smart contract
*/

contract HotelRoom {
// this will be my lesson to do the smart contract for a test hotel application

    // statuses hotel rooms
    enum Status {Occupied, Vacant}

    // a state variable to hold the current status of this hotel room
    Status currentHotelRoomStatus;

    // address of the owner who deployed this smart contract
    address payable public owner;

    // event to be raised when a room is booked
    event Occupy(address _occupant, uint _moneyAmount) 

    // our constructor which runs only once when the smart contract is deployed
    // we will define our owner and the current status here
    constructor() public {
        owner= msg.sender;
            = Status.Vacant;  
    }

    // a money modifier
    modifier enoughMoney(uint _amount){
        // checking if the person passed greater than or equal to 2 ether
        require(msg.value>= _amount, 'Sorry, you have not provided enough ether to make the transaction.');
        _;
    }

    // a room availability modifier
    modifier notCurrentlyOccupied{
        // checking if the room is not currently occupied
        require(currentHotelRoomStatus== status.Vacant, 'Sorry, this room is currently occupied.');
        _;
    }

    // a function to book a hotel room by using ether as currency
    receive() external payable notCurrentlyOccupied enoughMoney(2 ether) {
        // transfer the money to the owner
        owner.transfer(msg.value);

        // change the current room status
        currentHotelRoomStatus= status.Occupied;

        // emit an event
        emit Occupy(msg.sender, msg.value);
    }
}
