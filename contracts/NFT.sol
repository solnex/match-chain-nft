// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import "base64-sol/base64.sol";

contract NFT is ERC721 {
    using Strings for uint256;
    uint256 private _tokenIdCounter;

    constructor() ERC721("MyNFT", "MNFT") {}

    function _baseURI() internal pure override returns (string memory) {
        return
            "https://turquoise-deep-barnacle-635.mypinata.cloud/ipfs/QmNtKPtQHVk1uaCm9w3ooYaHPhWM5J8RK9ch3M433fLLvK/metadata/";
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                '{"name":"solnex", "description":"xxxxxxxxxx"',
                                ' "image": "',
                                "data:image/svg+xml;base64,",
                                '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 112 90">',
                                '<path d="M68,87h-13l20-56h14l20,56h-13l-4-12h-20l-4,12zM75,65h14l-7-22l-7,22z',
                                '" fill="#2a376e"/>',
                                '<path d="M15,87h-13l20-56h14l19,56h-12l-4-12h-21l-3,12zM22,65h14l-7-22l-7,22z" fill="#bf2426"/>',
                                '<path d="M705,169c5,18,5,27-2,48l-58,172l-62-175c0,0,7-19,11-30c3,0,9,7,9,7c0,0-7-20-4-24l9-24l10,6c-2-6-5-19-5-19l9-28l10,5c0,0-7-19-5-22l24-63c20,47,36,98,54,147zM659,485c1,5,0,11-5,19c1,10,1,13-2,17c-3,3-6,4-10,4c1-3,1-7,0-8c-13-17-42-50-42-50h-15l-14,36l6,10c0,0,13,0,19,0c1,0,2,1,3,3v6c-1-1-3-2-4-3c-14,0-24,0-37,1l-4,2c-2-5,2-9,5-9c3,0,6,0,5-2c-1-3-2-4-5-7h-16c-16-46-33-92-47-139c6,0,14-3,14-3c0,0-16-6-20-15c-3-9-14-40-14-40c0,0,9-1,13-3c-5-4-18-8-20-14c-7-18-11-35-11-35c0,0,16-1,14-2c-9-4-21-16-21-16c0,0-11-31-11-31c1-1,16,0,16,0c-4-8-16-12-13-23c4-13,9-26,12-34l9,5c-1-5-4-23-4-23l12-35l9,7l-3-24l20-51l52,147l109,310zM475,476l-5-8l-6,8h-22l48-74l27,74h-14l-5-8l-5,8h-18z" fill="#2a376e" transform="scale(0.1)"/>',
                                "</svg>",
                                '"}'
                            )
                        )
                    )
                )
            );
    }

    function safeMint(address to) public {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter = _tokenIdCounter + 1;
        _safeMint(to, tokenId);
    }
}
