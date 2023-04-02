//SPDX-License-Identifier: GPL-3.0


Pragma solidity >=0.5.0 <0.9.0;


Contract Lottery{


    Address payable[] public players;

    Address public manager;




    Constructor(){

        Manager = msg.sender;

    }


    Receive () payable external{

        Require(msg.value == 0.1 ether);

        Players.push(payable(msg.sender));

    }


    Function getBalance() public view returns(uint){

        Require(msg.sender == manage,”You are not the manager”r);

        Return address(this).balance;

    }


    Function random() internal view returns(uint){

       Return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players.length)));

    }



    Function pickWinner() public{


        Require(msg.sender == manager);

        Require (players.length >= 3);


        Uint r = random();

        Address payable winner;



        Uint index = r % players.length;


        Winner = players[index];

        Winner.transfer(getBalance());

        Players = new address payable[](0);

    }


}
