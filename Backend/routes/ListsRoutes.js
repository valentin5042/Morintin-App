// routes/ListRoutes.js
import express from 'express';
import ListsController from '../controllers/ListsController.js';

const router = express.Router();

// Ruta para obtener todos los productos
router.get('/', async (req, res) => {
  try {
    const listas = await ListsController.getAllList();
    res.json(listas);
  } catch (error) {
    console.error('Error al obtener listas: ', error);
    res.status(500).json({ error: 'Error al obtener listas' });
  }
});

// Ruta para agregar un producto a la lista de productos

router.post('/:listId/addProduct/:productId', async (req, res) => {
  const { listId, productId } = req.params;
  try {
    await ListsController.addProductToList(listId, productId);
    res.json({ message: 'Producto agregado a la lista exitosamente' });
  } catch (error) {
    console.error('Error al agregar producto a la lista: ', error);
    res.status(500).json({ error: 'Error al agregar producto a la lista' });
  }
});

// Ruta para eliminar un producto de la lista de productos

router.delete('/:listId/removeProduct/:productId', async (req, res) => {
  const { listId, productId } = req.params;
  try {
    await ListsController.removeProductFromList(listId, productId);
    res.json({ message: 'Producto eliminado de la lista exitosamente' });
  } catch (error) {
    console.error('Error al eliminar producto de la lista: ', error);
    res.status(500).json({ error: 'Error al eliminar producto de la lista' });
  }
});



export default router;
