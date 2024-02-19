// userRoutes.js
import express from 'express';
import UsersController from '../controllers/UsersController.js';
import jwt from 'jsonwebtoken';

const router = express.Router();

//iniciar sesión
router.post('/login', async (req, res) => {
  const { email, password } = req.body; // Obtener correo electrónico y contraseña del cuerpo de la solicitud
  try {
    //iniciar sesión del controlador de usuarios
    const user = await UsersController.getUserByCredentials(email, password);
    if (!user) {
      return res.status(401).json({ error: 'Credenciales incorrectas' });
    }
    // Generar el token JWT utilizando el correo electrónico
    const token = jwt.sign({ email }, 'mi_secreto', { expiresIn: '1h' });
    // Enviar el token como respuesta
    res.json({ token });
  } catch (error) {
    console.error('Error al iniciar sesión:', error);
    res.status(500).json({ error: 'Error al iniciar sesión' });
  }
});

//cerrar sesión
router.post('/logout', (req, res) => {
  // Eliminar el token del cliente (en este caso, del encabezado Authorization)
  res.removeHeader('Authorization'); // Elimina completamente el encabezado de autorización
  res.json({ mensaje: 'Sesión cerrada exitosamente' });
});

//agregar usuario
router.post('/', async (req, res) => {
  const { nombre, email, password } = req.body;

  try {
    let token = req.headers.authorization ? req.headers.authorization.split(" ")[1] : null; // Verifica si existe el encabezado de autorización
    if (!token) {
      token = jwt.sign({ email }, 'mi_secreto', { expiresIn: '1h' }); // Genera el token JWT solo si no se proporciona uno
    }
    await UsersController.addUser(nombre, email, password, token); // Pasar el token al controlador
    res.status(201).json({ mensaje: 'Usuario agregado correctamente' });
  } catch (error) {
    console.error('Error al agregar usuario:', error);
    res.status(500).json({ error: 'Error al agregar usuario' });
  }
});

export default router;
