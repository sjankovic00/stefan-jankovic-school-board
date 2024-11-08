<?php
namespace App;

class CSM extends SchoolBoard {
    public function calculatePassStatus(Student $student): bool {
        return $student->getAverage() >= 7;
    }

    public function getFormattedResult(Student $student): string {
        $result = [
            'id' => $student->id,
            'name' => $student->name,
            'grades' => $student->grades,
            'status' => $this->calculatePassStatus($student) ? 'pass' : 'fail'
        ];
        return json_encode($result);
    }
}