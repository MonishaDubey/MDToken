const MDToken = artifacts.require("./MDToken.sol");

module.exports = function (deployer) {
  deployer.deploy(MDToken);
};
