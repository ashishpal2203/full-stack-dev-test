<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");

include_once '../db.php';

$database = new Database();
$db = $database->connect();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $inputData = json_decode(file_get_contents("php://input"), true);

    $name = $inputData['name'] ?? null;
    $email = $inputData['email'] ?? null;
    $password = $inputData['password'] ?? null;
    $dob = $inputData['dob'] ?? null;

    if (!$name || !$email || !$password || !$dob) {
        echo json_encode(['error' => 'Missing required fields']);
        exit;
    }

    // Check if the email already exists
    $query = "SELECT COUNT(*) FROM users WHERE email = :email";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':email', $email);
    $stmt->execute();
    $emailExists = $stmt->fetchColumn();

    if ($emailExists) {
        echo json_encode(['error' => 'Email is already taken']);
        exit;
    }

    $query = "INSERT INTO users (name, email, password, dob) VALUES (:name, :email, :password, :dob)";
    $stmt = $db->prepare($query);

    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $hashedPassword);
    $stmt->bindParam(':dob', $dob);

    if ($stmt->execute()) {
        echo json_encode(["message" => "User created successfully."]);
    } else {
        echo json_encode(["message" => "Failed to create user."]);
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $query = "SELECT * FROM users";
    $stmt = $db->query($query);
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($users);
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $id = (int) $_GET['id'];

    $query = "SELECT * FROM users WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $id);

    $stmt->execute();
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        echo json_encode($user);
    } else {
        echo json_encode(['error' => 'User not found']);
    }
}



if ($_SERVER['REQUEST_METHOD'] === 'PUT') {
    if (isset($_GET['id'])) {
        $userId = $_GET['id'];  
    } else {
        echo json_encode(['error' => 'User ID is required']);
        exit;
    }

    $userId = $_GET['id'] ?? null;

    if (!$userId) {
        echo json_encode(['error' => 'User ID is required']);
        exit;
    }

    $inputData = json_decode(file_get_contents("php://input"), true);
    $name = $inputData['name'] ?? null;
    $email = $inputData['email'] ?? null;
    $password = $inputData['password'] ?? null;
    $dob = $inputData['dob'] ?? null;

    if (!$name || !$email || !$dob) {
        echo json_encode(['error' => 'Missing required fields']);
        exit;
    }

    $query = "SELECT COUNT(*) FROM users WHERE email = :email AND id != :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':id', $userId);
    $stmt->execute();
    $emailExists = $stmt->fetchColumn();

    if ($emailExists) {
        echo json_encode(['error' => 'Email is already taken']);
        exit;
    }

    $query = "UPDATE users SET name = :name, email = :email, password = :password, dob = :dob WHERE id = :id";
    $stmt = $db->prepare($query);

    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    $stmt->bindParam(':id', $userId);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $hashedPassword);
    $stmt->bindParam(':dob', $dob);

    if ($stmt->execute()) {
        echo json_encode(['message' => 'User updated successfully']);
    } else {
        echo json_encode(['error' => 'Failed to update user']);
    }
}



if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    $inputData = json_decode(file_get_contents("php://input"), true);
    $id = $inputData['id'] ?? null;

    if (!$id) {
        echo json_encode(['error' => 'User ID is required']);
        exit;
    }

    $query = "DELETE FROM users WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $id);

    if ($stmt->execute()) {
        echo json_encode(['message' => 'User deleted successfully']);
    } else {
        echo json_encode(['error' => 'Failed to delete user']);
    }
}

?>
