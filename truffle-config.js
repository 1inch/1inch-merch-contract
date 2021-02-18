const HDWalletProvider = require('@truffle/hdwallet-provider');
const privateKey = '';
const mainnetEndpointUrl = '';

module.exports = {
    networks: {
        mainnet: {
            provider: function() {
                return new HDWalletProvider(
                    privateKey,
                    mainnetEndpointUrl
                );
            },
            gas: 2000000,
            gasPrice: 240000000000,
            network_id: 1
        }
    },
    compilers: {
        solc: {
            version: '0.7.6',
            settings: {
                optimizer: {
                    enabled: true,
                    runs: 1000000
                }
            }
        }
    },
    plugins: [
        'solidity-coverage',
        'truffle-plugin-verify'
    ],
    api_keys: {
        etherscan: ''
    }
};
