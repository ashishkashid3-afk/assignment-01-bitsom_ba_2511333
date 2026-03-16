// OP1: insertMany() — insert all 3 documents from sample_documents.json
db.products.insertMany([
    {
        "product_id":"EL-0011",
        "category":"Electronics",
        "product_name":"Laptop",
        "brand":"Dell",
        "price":70000,
        "specifications":{
            "warranty":"1 year",
            "voltage":"220V",
            "battery":"4400mAh"
        },
        "features":["Intel Core i7 processor","16GB RAM","15.6 inch display"]
    },
    {
        "product_id":"EL-0012",
        "category":"Electronics",
        "product_name":"Washing Machine",
        "brand":"LG",
        "price":45000,
        "specifications":{
            "warranty":"1 year",
            "voltage":"220V",
            "capacity":"7L"
        },
        "features":["Auto wash","Energy efficient","Child lock"]
    },
    {
        "product_id":"EL-0013",
        "category":"Electronics",
        "product_name":"Refrigerator",
        "brand":"Whirlpool",
        "price":15000,
        "specifications":{
            "warranty":"1 year",
            "voltage":"220V",
            "capacity":"7L"
        },
        "features":["Double door","Energy efficient","Frost free"]
    },
    {
        "product_id":"CL-0021",
        "category":"Clothing",
        "product_name":"Mens T-Shirt",
        "brand":"Levis",
        "price":3000,
        "sizes_available":["S","M","L","XL"],
        "colors_available":["Red","Blue","Black"],
        "material":"100% Cotton"
    },
    {
        "product_id":"CL-0022",
        "category":"Clothing",
        "product_name":"Mens Jeans",
        "brand":"Spykar",
        "price":1500,
        "sizes_available":["S","M","L","XL"],
        "colors_available":["Blue","Black","Grey"],
        "material":"100% Cotton"
    },
    {
        "product_id":"GR-0031",
        "category":"Groceries",
        "product_name":"Edible Oil",
        "brand":"Nature's Best",
        "price":500,
        "weight":"500g",
        "expiry_date":"2025-12-31",
        "nutritional_info":{
            "calories":120,
            "fat":14,
            "carbohydrates":0,
            "protein":0
        }
    },
    {
        "product_id":"GR-0032",
        "category":"Groceries",
        "product_name":"Wheat Flour",
        "brand":"Golden Harvest",
        "price":120,
        "weight":"1kg",
        "expiry_date":"2024-11-31",
        "nutritional_info":{
            "calories":150,
            "fat":20,
            "carbohydrates":10,
            "protein":5
        }
    }, 
    {
        "product_id":"GR-0033",
        "category":"Groceries",
        "product_name":"Milk Powder",
        "brand":"Dairy Pure",
        "price":70,
        "weight":"500g",
        "expiry_date":"2024-12-31",
        "nutritional_info":{
            "calories":100,
            "fat":20,
            "carbohydrates":10,
            "protein":5
        }
    }  
])

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({category: "Electronics", price: {$gt: 20000}})

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({category: "Groceries", expiry_date: {$lt: "2025-01-01"}})

// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne({product_id: "EL-0011"}, {$set: {discount_percent: 15}})

// OP5: createIndex() — create an index on category field and explain why
db.products.createIndex({category: 1})
// Explanation: Creating an index on the 'category' field will improve the performance of queries that filter or sort by category, as MongoDB can use the index to quickly locate the relevant documents.
