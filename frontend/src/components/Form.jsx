import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom"; 
import { createUser, updateUser } from "../api/users"; 

const SecondPage = () => {
  const [formData, setFormData] = useState({
    name: "",
    email: "",
    password: "",
    dob: "", 
  });

  const [message, setMessage] = useState("");
  const location = useLocation(); 
  const navigate = useNavigate(); 

  const userToEdit = location.state?.userToEdit; 

  useEffect(() => {
    if (userToEdit) {
      setFormData({
        name: userToEdit.name,
        email: userToEdit.email,
        password: "", 
        dob: userToEdit.dob,
      });
    }
  }, [userToEdit]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      if (userToEdit) {
        const data = await updateUser(userToEdit.id, formData); 
        if (data.message) {
          setMessage("User updated successfully!");
          navigate("/"); 
        } else {
          setMessage(data.error || "Error updating user.");
        }
      } else {
        const data = await createUser(formData); 
        if (data.message) {
          setMessage("User created successfully!");
          setFormData({ name: "", email: "", password: "", dob: "" }); 
          navigate("/"); 
        } else {
          setMessage(data.error || "Error creating user.");
        }
      }
    } catch (error) {
      setMessage("Failed to process the request.");
    }
  };

  return (
    <div className="flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8">
      <div className="sm:mx-auto sm:w-full sm:max-w-sm">
        
        <h2 className="mt-2 text-center text-2xl font-bold tracking-tight text-gray-900">
          {userToEdit ? "Edit User" : "Create User"}
        </h2>
      </div>

      <div className="mt-5 sm:mx-auto sm:w-full sm:max-w-sm">
        <form className="space-y-6" onSubmit={handleSubmit}>
          <div>
            <label htmlFor="name" className="block text-sm font-medium text-gray-900">
              Name
            </label>
            <div className="mt-2">
              <input
                type="text"
                name="name"
                id="name"
                value={formData.name}
                onChange={handleChange}
                required
                className="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:outline-indigo-600 sm:text-sm"
              />
            </div>
          </div>

          <div>
            <label htmlFor="email" className="block text-sm font-medium text-gray-900">
              Email address
            </label>
            <div className="mt-2">
              <input
                type="email"
                name="email"
                id="email"
                value={formData.email}
                onChange={handleChange}
                required
                className="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:outline-indigo-600 sm:text-sm"
              />
            </div>
          </div>

          <div>
            <label htmlFor="password" className="block text-sm font-medium text-gray-900">
              Password
            </label>
            <div className="mt-2">
              <input
                type="password"
                name="password"
                id="password"
                value={formData.password}
                onChange={handleChange}
                required={userToEdit ? false : true} 
                className="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:outline-indigo-600 sm:text-sm"
              />
            </div>
          </div>

          <div>
            <label htmlFor="dob" className="block text-sm font-medium text-gray-900">
              Date of Birth
            </label>
            <div className="mt-2">
              <input
                type="date"
                name="dob"
                id="dob"
                value={formData.dob}
                onChange={handleChange}
                required
                className="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:outline-indigo-600 sm:text-sm"
              />
            </div>
          </div>

          <div>
            <button
              type="submit"
              className="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-indigo-600"
            >
              {userToEdit ? "Update" : "Submit"}
            </button>
          </div>
        </form>

        {message && (
          <p className="mt-4 text-center text-sm font-medium text-red-500">{message}</p>
        )}
      </div>
    </div>
  );
};

export default SecondPage;
