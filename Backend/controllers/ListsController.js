// controllers/ListController.js
import ListsModel from '../models/ListsModel.js';

const ListsController = {
  getAllList: async () => {
    try {
      const listas = await ListsModel.getAllList();
      return listas;
    } catch (error) {
      throw error;
    }
  },
  addProductToList: async (listId, productId) => {
    try {
      const result = await ListsModel.addProductToList(listId, productId);
      return result;
    } catch (error) {
      throw error;
    }
  },
  removeProductFromList: async (listId, productId) => {
    try {
      const result = await ListsModel.removeProductFromList(listId, productId);
      return result;
    } catch (error) {
      throw error;
    }
  },
};

export default ListsController;
