<?php
namespace App;

class Student {
    public int $id;
    public string $name;
    public array $grades = [];

    public function __construct(int $id, string $name, array $grades = []) {
        $this->id = $id;
        $this->name = $name;
        $this->grades = $grades;
    }

    // Load student data by ID
    public static function loadFromDatabase(int $id): ?Student {
        $connection = Database::getInstance();

        // Fetch student
        $stmt = $connection->prepare("SELECT * FROM students WHERE id = :id");
        $stmt->execute(['id' => $id]);
        $studentData = $stmt->fetch(\PDO::FETCH_ASSOC);  // Ensure \PDO::FETCH_ASSOC is used

        if (!$studentData) {
            return null; // Student not found
        }

        // Fetch grades
        $stmt = $connection->prepare("SELECT grade FROM grades WHERE student_id = :id");
        $stmt->execute(['id' => $id]);
        $grades = $stmt->fetchAll(\PDO::FETCH_COLUMN);

        return new Student($studentData['id'], $studentData['name'], $grades);
    }

    public function getAverage(): float {
        return count($this->grades) > 0 ? array_sum($this->grades) / count($this->grades) : 0.0;
    }
}