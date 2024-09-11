
task("mint", "Mints a token")
  .addParam("address", "The address to receive a token")
  .setAction(async (taskArgs) => {
    // Create the contract instance
    const MyTNFT = await ethers.getContractFactory("NFT");
    const myNFT = await MyTNFT.attach("0xfa3D506B8160beEe4d833375d069ee4A54e9f571");

    // Mint
    await myNFT.safeMint(taskArgs.address);
});

// module.exports = {
//     // ...
// }