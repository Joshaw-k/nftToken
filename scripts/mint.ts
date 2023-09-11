import { ethers } from "hardhat";

async function main() {
  const [signer] = await ethers.getSigners();
  const myNFT = await ethers.getContractAt(
    "IMint",
    "0xD20e11e46b923a4dDE6BB44dE1913e1497Bd0E98"
  );

  await myNFT.mint(
    signer.address,
    "ipfs://bafkreia7ipchw225mjwttt2n464rkvzm4yrysoqk6dulau5bix2ovicewa/"
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
