<?php
require_once __DIR__ . '/../vendor/autoload.php';

use App\Student;
use App\CSM;
use App\CSMB;

// Pomoćna funkcija za prikaz rezultata učenika
function prikaziRezultatUcenika($studentId, $skolskiOdbor) {
    $student = Student::loadFromDatabase($studentId);

    if (!$student) {
        echo "<p>Učenik sa ID-jem $studentId nije pronađen.</p>";
        return;
    }

    $rezultat = $skolskiOdbor->getFormattedResult($student);
    $format = $skolskiOdbor instanceof CSM ? 'JSON' : 'XML';

    echo "<h3>Rezultat za {$student->name} (ID: {$student->id}) - Format: $format</h3>";
    echo "<pre>";
    echo htmlspecialchars($rezultat);
    echo "</pre>";
}

// Inicijalizacija školskih odbora
$csmOdbor = new CSM();
$csmbOdbor = new CSMB();

// Prikaz rezultata za svakog učenika iz baze podataka
echo "<h2>Rezultati školskog odbora</h2>";

// Prikazujemo rezultate za učenike sa ID-jem od 1 do 10 kao primer:
for ($id = 1; $id <= 10; $id++) {
    if ($id % 2 == 0) {
        prikaziRezultatUcenika($id, $csmbOdbor); // CSMB za parne ID-jeve
    } else {
        prikaziRezultatUcenika($id, $csmOdbor);  // CSM za neparne ID-jeve
    }
}