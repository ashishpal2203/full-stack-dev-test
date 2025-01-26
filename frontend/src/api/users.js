import axios from "axios";

const BASE_URL = "http://localhost/task/backend/api";

// Get all users
export const getUsers = async () => {
  try {
    const response = await axios.get(`${BASE_URL}/users.php`);
    return response.data;
  } catch (error) {
    console.error("Error fetching users:", error);
    throw error;
  }
};

// Create new user
export const createUser = async (formData) => {
  try {
    const response = await axios.post(
      `${BASE_URL}/users.php`,
      formData
    );
    return response.data;
  } catch (error) {
    console.error("Error creating user:", error);
    throw error;
  }
};


//update user

export const updateUser = async (userId, userData) => {
  try {
    const { id, ...dataToSend } = userData;
    const response = await axios.put(`${BASE_URL}/users.php?id=${userId}`, dataToSend, {
      headers: {
        "Content-Type": "application/json",
      }
    });

    return response.data;
  } catch (error) {
    console.error("Error updating user:", error);

    if (error.response) {
      return { error: error.response.data.error || 'Error updating user' };
    }
    return { error: error.message || 'Unexpected error' };
  }
};



// Delete user
export const deleteUser = async (id) => {
  try {
    const response = await axios.delete(`${BASE_URL}/users.php`, {
      data: { id },
    });
    return response.data;
  } catch (error) {
    console.error("Error deleting user:", error);
    throw error;
  }
};
