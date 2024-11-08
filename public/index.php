<?php
require_once __DIR__ . '/../vendor/autoload.php';

use App\Student;
use App\CSM;
use App\CSMB;

// Helper function to display a student's result
function displayStudentResult($studentId, $schoolBoard) {
    $student = Student::loadFromDatabase($studentId);

    if (!$student) {
        echo "<p>Student with ID $studentId not found.</p>";
        return;
    }

    $result = $schoolBoard->getFormattedResult($student);
    $format = $schoolBoard instanceof CSM ? 'JSON' : 'XML';

    echo "<h3>Result for {$student->name} (ID: {$student->id}) - Format: $format</h3>";
    echo "<pre>";
    echo htmlspecialchars($result);
    echo "</pre>";
}

// Initialize the school boards
$csmBoard = new CSM();
$csmbBoard = new CSMB();

// Check if the student ID is provided in the query string
if (isset($_GET['student']) && is_numeric($_GET['student'])) {
    $studentId = (int)$_GET['student']; // Get the student ID from the query string
    
    // Display results for the specific student
    echo "<h2>Results for Student ID: $studentId</h2>";
    
    // Determine which board to use based on the ID (odd or even)
    if ($studentId % 2 == 0) {
        displayStudentResult($studentId, $csmbBoard);  // Even IDs for CSMB
    } else {
        displayStudentResult($studentId, $csmBoard);   // Odd IDs for CSM
    }
} else {
    // If no student ID is provided, display results for all students grouped by board

    echo "<h2>CSM Board Results</h2>";
    for ($id = 1; $id <= 10; $id++) {
        if ($id % 2 != 0) { // Odd IDs for CSM
            displayStudentResult($id, $csmBoard);
        }
    }

    echo "<h2>CSMB Board Results</h2>";
    for ($id = 1; $id <= 10; $id++) {
        if ($id % 2 == 0) { // Even IDs for CSMB
            displayStudentResult($id, $csmbBoard);
        }
    }
}