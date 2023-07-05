contract Marketplace {
    struct Product {
        string name;
        uint256 price;
    }

    mapping(uint256 => Product) public products;
    uint256 public productCount;

    function createProduct(string memory _name, uint256 _price) external {
        productCount++;
        products[productCount] = Product(_name, _price);
    }
}
