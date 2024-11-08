<?php
namespace App;

class CSMB extends SchoolBoard {
    public function calculatePassStatus(Student $student): bool {
        $grades = $student->grades;
        if (count($grades) > 2) {
            sort($grades);
            array_shift($grades); // Remove the lowest grade
        }
        return max($grades) > 8;
    }

    public function getFormattedResult(Student $student): string {
        $xml = new \SimpleXMLElement('<student/>');
        $xml->addChild('id', $student->id);
        $xml->addChild('name', $student->name);
        $grades = $xml->addChild('grades');
        foreach ($student->grades as $grade) {
            $grades->addChild('grade', $grade);
        }
        $xml->addChild('status', $this->calculatePassStatus($student) ? 'pass' : 'fail');
        return $xml->asXML();
    }
}