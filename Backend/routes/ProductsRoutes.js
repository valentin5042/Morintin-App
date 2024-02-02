// routes/productsRoutes.js
import express from 'express';
import ProductsController from '../controllers/ProductsController.js';

const router = express.Router();

// Ruta para obtener todos los productos
router.get('/', async (req, res) => {
  try {
    const productos = await ProductsController.getAllProducts();
    res.json(productos);
  } catch (error) {
    console.error('Error al obtener productos: ', error);
    res.status(500).json({ error: 'Error al obtener productos' });
  }
});

export default router;
