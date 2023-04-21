#  Universal Upgradeable Proxy Standard ERC-1822 Complete Working Example

UUPS is a smart contract design pattern that allows for upgrading smart contracts without breaking their dependencies. When using a UUPS contract the logic contract determines if it should be upgradeable in a given instance rather than assigning that role to the proxy itself.  There is a unique storage slot in the proxy contract to store the address of the logic contract.  The UUPS proxies are implemented using an ERC1967Proxy.  The logic contract provides the delegated implementation bytecode for particular calls, however the data is stored in slots in the proxies address space.    In this way the delegated logic can be upgraded while state data may remain stable over time.

* [YouTube](https://youtu.be/L7rqTXN9tTM)
* [Blog Post](https://2ad.com/uups-proxy-complete-tutorial.html)