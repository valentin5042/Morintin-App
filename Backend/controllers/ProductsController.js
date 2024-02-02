// controllers/productsController.js
import ProductsModel from '../models/ProductsModel.js';

const ProductsController = {
  getAllProducts: async () => {
    try {
      const productos = await ProductsModel.getAllProducts();
      return productos;
    } catch (error) {
      throw error;
    }
  },
};

export default ProductsController;

