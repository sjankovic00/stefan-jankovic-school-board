<?php
namespace App;

abstract class SchoolBoard {
    abstract public function calculatePassStatus(Student $student): bool;
    abstract public function getFormattedResult(Student $student): string;
}