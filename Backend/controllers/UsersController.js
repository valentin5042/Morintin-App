// controllers/ListController.js
import UsersModel from '../models/UsersModel.js';

const UsersController = {
  getAllUsers: async () => {
    try {
      const users = await UsersModel.getAllUsers();
      return users;
    } catch (error) {
      throw error;
    }
  },
  addUser: async (email, contraseña) => {
    try {
      const result = await UsersModel.addUser(email, contraseña);
      return result;
    } catch (error) {
      throw error;
    }
  },
};

export default UsersController;
