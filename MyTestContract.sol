pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT;

contract MyTestContract{
    
    //region Part: One
    // setting up the first smart contract
    uint contractAge= 0;

    // get the age of the contract
    function getAge() public view returns(uint){
        return contractAge;
    }

    // set the age of the contract
    function setAge(uint _age) public {
        contractAge= _age
    }


    bytes32 contractName= 'test contract';

     // get the name of the contract
    function getName() public view returns(string){
        return contractName;
    }     

    // set the name of the contract
    function setName(string _name) public {
        contractName= _name
    }
    

    // address is a special type of data type that can hold the address on a block chain
    address contractAddress;

    // get the address of the contract
    function getAddress() public view returns(address){
        return contractAddress;
    }

    // set the address of the contract
    function setAddress(address _address) public {
        contractAddress= _address
    }
    //endregion


    // region Part: Two
    // data types: uint, int, string, struct
    // variables: state variables and hidden variables
    struct Person{
        uint id;
        uint age;
        string name;
        address myAddress;
    }

    // how to initialize our struct
    Person my_person_struct_object= Person(id= 77, age= 27, name= 'f0x__tr0t', myAddress= 0xf5F810a02933b4401972d15AD95C7CBb21E39B16)

    // get the struct object named Person
    function getPerson() public view returns(Person){
        return my_person_struct_object;
    }

    // set the struct object named Person
    function setPerson (uint _id, uint _age, string _name, address _address) public {
        my_person_struct_object.id= _id
        my_person_struct_object.age= _age
        my_person_struct_object.name= _name
        my_person_struct_object.address= _address
    }
    // endregion
    

    //region Part: Three
    // Array
    // Array: One dimension
    uint[] my_lucky_numbers= [77, 33, 66, 99, 3, 6, 9]
    // get my array containing lucky number
    function getLuckyNumbers() public view return(uint[]){
        return my_lucky_numbers;
    }

    // add new value to my lucky numbers
    function addLuckyNumber(string memory _value) public{
        my_lucky_numbers.push(_value);
    }


    string[] my_lucky_letters= ['f', '0', 'x', '__', 't', 'r', '0', 't']
    // get my array containing lucky letter
    function getLuckyLetter() public view return(string[]){
        return my_lucky_letters;
    }

    // add new value to my lucky letter
    function addLuckyLetter(string memory _value) public{
        my_lucky_letters.push(_value);
    }


    // Array: Two dimension
    string[][] my_2d_array= [['f', '0', 'x'], ['__'], ['t', 'r', '0', 't']]
    // get my 2d array
    function get2DArray() public view return(string[]){
        return my_2d_array;
    }

    // add new value to my 2d array
    function add2DArray() public{
        
    }
    //endregion


    // region Part: Four
    // Mapping: a key value relation ship between things
    mapping(key=> value) public name; 
    mapping(uint=> string) public names; 

    // constructor: only runs once when this contract is created
    // you can add to names like this
    constructor() public {
        names[1]= 'fish';
        names[2]= 'f0x';
        names[3]= '__';
        names[4]= 'tr0t';
        names[]= 'f0x__tr0t';

        // for the conditionals and loop part
        // part five
        owner== msg.sender;
    }


    // custom struct of a book
    struct Book {
        string title;
        string author;
        uint pageNumber;
    }
    // my custom book mapping
    mapping(uint=> Book) public books;

    // add books, also can add to structs, books like this
    function addBooks(uint _id, string memory _author, string _title, uint _page_number) public {
        books[_id]= Book(author= _author, title= _title, pageNumber= _page_number)
    }


    // nested mappings
    mapping(address=> mapping(uint=> Book)) public myBooks;

    // add nested mapping book addresses
    function addBooks(uint _id, string memory _author, string _title, uint _page_number) public {
        books[msg.sender][_id]= Book(author= _author, title= _title, pageNumber= _page_number)
    }
    // endregion


    // region Part: Five
    // conditionals amd loops
    // conditionals
    function isEven(uint _number) public view returns(string) {
        if (_number % 2= 0) {
            return 'is even';
        } else {
            return 'is not even';
        }
    }

    // returns boolean
    function isEven(uint _number) public view returns(bool) {
        if (_number % 2= 0) {
            return true;
        } else {
            return false;
        }
    }

    // returns unsigned integer
    function isEven(uint _number) public view returns(uint) {
        if (_number % 2= 0) {
            return 1;
        } else {
            return 0;
        }
    }

    // other way of writing a conditional: inline
    address owner;
    function isOwner() public view returns(bool){
        return msg.sender== owner;                 // check which one works 
        return (msg.sender== owner);               // check which one works 
    }
    

    // loops
    uint[] my_damn_numbers= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    function countEvenNumbers() public view returns(uint) {
        uint even_number_count= 0;

        for(uint n= 0; n< my_damn_numbers.length; n++) {
            if(isEven(my_damn_numbers[n])){             // this might not work because I have more than 1 isEven function, in the 
                even_number_count++;                    // tutorial he only had one, which returns only a boolean
            }
        }
        return even_number_count;
    }
    // endregion

}
