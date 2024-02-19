// controllers/UsersController.js
import UsersModel from '../models/UsersModel.js';
import jwt from 'jsonwebtoken';

const secretKey = 'your_secret_key'; // Clave secreta para firmar el token JWT

const UsersController = {
  getAllUsers: async () => {
    try {
      const users = await UsersModel.getAllUsers();
      return users;
    } catch (error) {
      throw error;
    }
  },
  addUser: async (nombre, email, password) => {
    try {
      const result = await UsersModel.addUser(nombre, email, password);
      return result;
    } catch (error) {
      throw error;
    }
  },
  getUserByCredentials: async (nombre, password) => {
    try {
      const user = await UsersModel.getUserByCredentials(nombre, password);
      console.log('Usuario obtenido:', user); // Agregar registro de depuración
      return user;
    } catch (error) {
      throw error;
    }
  },
  login: async (req, res) => {
    const { email, password } = req.body;
  
    console.log('Solicitud de inicio de sesión recibida:', { email, password }); 
    try {
      // Verificar las credenciales del usuario por correo electrónico
      const user = await UsersModel.getUserByCredentials(email, password);
      console.log('Usuario obtenido:', user); 
      if (!user) {
        console.log('Credenciales inválidas');
        return res.status(401).json({ error: 'Credenciales inválidas' });
      }
      // Si las credenciales son válidas, generar un nuevo token JWT y enviarlo como respuesta
      const token = jwt.sign({ email }, 'mi_secreto', { expiresIn: '1h' });
      console.log('Token generado:', token); 
      res.json({ token });
    } catch (error) {
      console.error('Error al iniciar sesión:', error);
      res.status(500).json({ error: 'Error interno del servidor' });
    }
  },
  logout: (req, res) => {
    // Eliminar el token del almacenamiento local del cliente
    localStorage.removeItem('token');

    // Responder con un mensaje indicando que la sesión ha sido cerrada exitosamente
    res.json({ message: 'Sesión cerrada exitosamente' });
  }
};

export default UsersController;
