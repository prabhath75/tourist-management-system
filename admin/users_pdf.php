<?php
require_once('tcpdf/tcpdf.php');
include('includes/config.php');

// Create new PDF document
$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');

// Set document information
$pdf->SetCreator('Your Website');
$pdf->SetAuthor('Your Name');
$pdf->SetTitle('Manage Users');
$pdf->SetSubject('Manage Users PDF');
$pdf->SetKeywords('Manage Users, PDF, TCPDF');

// Set default header data
$pdf->SetHeaderData('', 0, 'Manage Users', 'Generated on: ' . date('Y-m-d H:i:s'));

// Set default header font
$pdf->setHeaderFont(Array('helvetica', '', 10));

// Set margins
$pdf->SetMargins(15, 25, 15);

// Set auto page breaks
$pdf->SetAutoPageBreak(true, 25);

// Add a page
$pdf->AddPage();

// HTML table content
$tableContent = '
    <div class="agile-tables">
        <div class="w3l-table-info">
            <h2>Manage Users</h2>
            <table id="table" class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Mobile No.</th>
                        <th>Email Id</th>
                        <th>RegDate</th>
                    </tr>
                </thead>
                <tbody>';

// Fetch data from the database and add to the table
$sql = "SELECT * from tblusers";
$query = $dbh->prepare($sql);
$query->execute();
$results = $query->fetchAll(PDO::FETCH_OBJ);
$cnt = 1;

if ($query->rowCount() > 0) {
    foreach ($results as $result) {
        $tableContent .= '
            <tr>
                <td>' . htmlentities($cnt) . '</td>
                <td>' . htmlentities($result->FullName) . '</td>
                <td>' . htmlentities($result->MobileNumber) . '</td>
                <td>' . htmlentities($result->EmailId) . '</td>
                <td>' . htmlentities($result->RegDate) . '</td>
            </tr>';
        $cnt++;
    }
}

$tableContent .= '
                </tbody>
            </table>
        </div>
    </div>';

// Output the HTML table content
$pdf->writeHTML($tableContent, true, false, true, false, '');

// Close and output PDF document
$pdf->Output('manage_users.pdf', 'I');
