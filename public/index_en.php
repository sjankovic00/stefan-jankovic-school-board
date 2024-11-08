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

// Display results for each student in the database
echo "<h2>School Board Results</h2>";

// Assuming we want to display results for students 1-10 as examples:
for ($id = 1; $id <= 10; $id++) {
    if ($id % 2 == 0) {
        displayStudentResult($id, $csmbBoard); // CSMB for even IDs
    } else {
        displayStudentResult($id, $csmBoard);  // CSM for odd IDs
    }
}