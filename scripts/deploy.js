const hre = require("hardhat");
const fs = require("fs");

async function main() {
  // Get all contract files from 'contracts/' directory
  const contractFiles = fs.readdirSync("./contracts").filter(file => file.endsWith(".sol"));

  for (const file of contractFiles) {
    const contractName = file.replace(".sol", ""); // Extract contract name
    console.log(`Deploying ${contractName}...`);

    // Deploy contract
    const Contract = await hre.ethers.getContractFactory(contractName);
    const contract = await Contract.deploy();
    await contract.waitForDeployment();

    console.log(`${contractName} deployed to: ${await contract.getAddress()}`);
  }
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
