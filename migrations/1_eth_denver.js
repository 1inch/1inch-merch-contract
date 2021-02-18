// const { ether } = require('@openzeppelin/test-helpers');
// const { expect } = require('chai');

// const OneInchMerch = artifacts.require('./OneInchMerch.sol');

// const OWNER = '0x5E89f8d81C74E311458277EA1Be3d3247c7cd7D1';
// const NAME = '1inch T-Shirt ETH Denver 2021';
// const TICKER = '1TS-D21';
// const SUPPLY = ether('254');

// module.exports = function (deployer, network) {
//     return deployer.then(async () => {
//         if (network === 'test' || network === 'coverage') {
//             // migrations are not required for testing
//             return;
//         }

//         const account = '0xB00F1c082113fCAaeB7BaBb6E855F0B13f80b766';
//         console.log('Deployer account: ' + account);
//         console.log('Deployer balance: ' + (await web3.eth.getBalance(account)) / 1e18 + ' ETH');

//         const tshirt = await deployer.deploy(OneInchMerch, NAME, TICKER, OWNER, SUPPLY);
//         expect(await tshirt.balanceOf(OWNER)).to.be.bignumber.eq(SUPPLY);
//     });
// };

module.exports = function (deployer, network) {
}
