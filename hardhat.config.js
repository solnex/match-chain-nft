
require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();
require("./Tasks/Mint");
const{mnemonic} = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.20",
    settings:{
      optimizer:{
        enabled:true
      }
    }
  },
  networks:{
      match_main: {
          url: "https://rpc.matchain.io",
          accounts: {
            mnemonic: mnemonic
          }
      },

      match_test: {
          url: "https://testnet-rpc.matchain.io",
          accounts: {
            mnemonic: mnemonic
          }
      }

    }
};
