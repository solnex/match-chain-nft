const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("NFTModule", (m) => {

  const NFT = m.contract("NFT", [], {
  });

  return { NFT };
});
