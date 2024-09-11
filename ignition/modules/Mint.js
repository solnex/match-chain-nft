const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const NFTDeploy = require("./NFTDeploy");

module.exports = buildModule("MintModule", (m) => {
    const minter = m.getAccount(0);
    const NFT = m.useModule(NFTDeploy);
    
    const encodedFunctionCall = m.encodeFunctionCall(NFT,"safeMint",minter);
    m.call(NFT,);

  
    
  });
  