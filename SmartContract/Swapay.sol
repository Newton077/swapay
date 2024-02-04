// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@layerzero/zeppelin-sdk/contracts/application/LayerZeroApplication.sol";

contract AvalancheToBNBSwap is LayerZeroApplication {
    IUniswapV2Router02 public uniswapRouter;

    constructor(address _layerZero,address _uniswapRouter) LayerZeroApplication(_layerZero) {
        uniswapRouter = IUniswapV2Router02(_uniswapRouter);
    }

    function swapAVAXToBNB(uint256 amountAVAX, uint256 amountBNBMin) external {
        // Se asegura que el contrato tenga AVAX
        require(address(this).balance >= amountAVAX, "Insufficient AVAX balance");

        // Perform the Uniswap swap
        address[] memory path = new address[](2);
        path[0] = uniswapRouter.WETH();
        path[1] = uniswapRouter.BNB();

        uniswapRouter.swapExactETHForTokens{value: amountAVAX}(
            amountBNBMin,
            path,
            address(this),
            block.timestamp
        );

        // Emit un evento
    }
    
    // Fallback function to receive ETH sent to the contract
    receive() external payable {}
}
