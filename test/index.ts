import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("Greeter", function () {
  let deployer: SignerWithAddress;

  it("Should be able to call a payment splitter method", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!", [], []);
    await greeter.deployed();
    [deployer] = await ethers.getSigners();
    
    greeter.release(deployer.address); // method is not found
  });
});
