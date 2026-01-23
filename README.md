# blockchain_zero_to_hero

```
forge init
forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --broadcast --private-key $PRIVATE_KEY
source .env 
echo $PRIVATE_KEY
forge format 
cast call 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "retrieve()" 
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "store(uint256)" 123 --rpc-url $RPC_URL --private-key $PRIVATE_KEY
```