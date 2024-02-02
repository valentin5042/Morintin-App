// models/productsModel.js
import connection from '../config/database.js';

const ProductsModel = {
  getAllProducts: () => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM productos', (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
};

export default ProductsModel;

