import React, { useState, useEffect } from "react";
import { getUsers, deleteUser } from "../api/users";
import { useNavigate } from "react-router-dom";

import { toast, ToastContainer } from "react-toastify";
import 'react-toastify/dist/ReactToastify.css';

const HomePage = () => {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();
  useEffect(() => {

    const fetchUsers = async () => {
      try {
        const data = await getUsers();
        setUsers(data);
        setLoading(false);
      } catch (error) {
        console.error("Error fetching users:", error);
        setLoading(false);
      }
    };



    fetchUsers();
  }, []);

  const handleEdit = (user) => {
    console.log(user);
    navigate("/form", { state: { userToEdit: user } });
  };

  const handleDelete = async (id) => {
    const confirmDelete = window.confirm("Are you sure you want to delete this user?");
    if (confirmDelete) {
      try {
        const result = await deleteUser(id);
        if (result.message) {
          setUsers(users.filter((user) => user.id !== id));
          toast.success("User deleted successfully!");
          console.log(`User with id ${id} deleted successfully`);
        } else {
          toast.error("Failed to delete user.");
        }
      } catch (error) {
        console.error("Error deleting user:", error);
      }
    } else {
      console.log("Delete action canceled");
    }
  };

  if (loading) {
    return <p className="text-center mt-4">Loading users...</p>;
  }

  return (
    <>
      <h2 className="text-center mt-10">Ashish Pal</h2>
      <div className="w-1/2 m-auto border-2 mt-16">
        <div className="flex justify-between p-3 bg-amber-200">
          <h2 className="text-xl text-center font-semibold">User Management Table</h2>
          <button
            type="button"
            onClick={() => navigate("/form")}
            className="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          >
            Create New User
          </button>
        </div>

        <div className="overflow-x-auto">
          <table className="min-w-full table-auto">
            <thead>
              <tr className="bg-gray-100 border-b">
                <th className="px-4 py-2 text-left">Name</th>
                <th className="px-4 py-2 text-left">Email</th>
                <th className="px-4 py-2 text-center">Actions</th>
              </tr>
            </thead>
            <tbody>
              {users.map((user) => (
                <tr key={user.id} className="border-b hover:bg-gray-50">
                  <td className="px-4 py-2">{user.name}</td>
                  <td className="px-4 py-2">{user.email}</td>
                  <td className="px-4 py-2 text-center">
                    <button
                      onClick={() => handleEdit(user)}
                      className="text-blue-500 hover:text-blue-700 mr-2"
                    >
                      Edit
                    </button>
                    <button
                      onClick={() => handleDelete(user.id)}
                      className="text-red-500 hover:text-red-700"
                    >
                      Delete
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
          <ToastContainer />
        </div>
      </div>
    </>
  );
};

export default HomePage;
