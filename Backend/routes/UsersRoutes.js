// routes/productsRoutes.js
import express from 'express';
import UsersController from '../controllers/UsersController.js';

const router = express.Router();

// Ruta para obtener todos los productos
router.get('/', async (req, res) => {
  try {
    const usuarios = await UsersController.getAllUsers();
    res.json(usuarios);
  } catch (error) {
    console.error('Error al obtener usuarios: ', error);
    res.status(500).json({ error: 'Error al obtener usuarios' });
  }
});

export default router;
