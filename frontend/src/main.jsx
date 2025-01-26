import React from "react";
import { createRoot } from "react-dom/client";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import HomePage from './components/HomePage.jsx';
import SecondPage from './components/Form.jsx';
import './index.css';  // Import the Tailwind CSS styles

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/form" element={<SecondPage />} />
      </Routes>
    </Router>
  );
};

// Use createRoot instead of ReactDOM.render
const rootElement = document.getElementById('root');
const root = createRoot(rootElement);
root.render(<App />);
