<?php
require_once('tcpdf/tcpdf.php');
include('includes/config.php');

// Create new PDF document
$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8');

// Set document information
$pdf->SetCreator('Your Website');
$pdf->SetAuthor('Your Name');
$pdf->SetTitle('Manage Bookings');
$pdf->SetSubject('Manage Bookings PDF');
$pdf->SetKeywords('Manage Bookings, PDF, TCPDF');

// Set default header data
$pdf->SetHeaderData('', 0, 'Manage Bookings', 'Generated on: ' . date('Y-m-d H:i:s'));

// Set default header font
$pdf->setHeaderFont(Array('helvetica', '', 10));

// Set margins
$pdf->SetMargins(15, 25, 15);

// Set auto page breaks
$pdf->SetAutoPageBreak(true, 25);

// ---------------------------------------------------------

// Add a page
$pdf->AddPage();

// HTML table content
$tableContent = '
    <div class="agile-tables">
        <div class="w3l-table-info">
            <h2>Manage Bookings</h2>
            <table id="table" class="table table-borders">
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Name</th>
                        <th>Mobile No.</th>
                        <th>Email ID</th>
                        <th>Package Name</th>
                        <th>Registration Date</th>
                    </tr>
                </thead>
                <tbody>';

// Fetch data from the database and add to the table
$sql = "SELECT tblbooking.BookingId as bookid, tblusers.FullName as fname, tblusers.MobileNumber as mnumber, tblusers.EmailId as email, tbltourpackages.PackageName as pckname, tblbooking.PackageId as pid, tblbooking.FromDate as fdate, tblbooking.ToDate as tdate, tblbooking.Comment as comment, tblbooking.status as status, tblbooking.CancelledBy as cancelby, tblbooking.UpdationDate as upddate
        FROM tblusers
        JOIN tblbooking ON tblbooking.UserEmail = tblusers.EmailId
        JOIN tbltourpackages ON tbltourpackages.PackageId = tblbooking.PackageId";
$query = $dbh->prepare($sql);
$query->execute();
$results = $query->fetchAll(PDO::FETCH_OBJ);
$cnt = 1;

if ($query->rowCount() > 0) {
    foreach ($results as $result) {
        $tableContent .= '
            <tr>
                <td>#BK-' . htmlentities($result->bookid) . '</td>
                <td>' . htmlentities($result->fname) . '</td>
                <td>' . htmlentities($result->mnumber) . '</td>
                <td>' . htmlentities($result->email) . '</td>
                <td><a href="update-package.php?pid=' . htmlentities($result->pid) . '">' . htmlentities($result->pckname) . '</a></td>
                <td>' . htmlentities($result->fdate) . ' To ' . htmlentities($result->tdate) . '</td>
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

// ---------------------------------------------------------

// Close and output PDF document
$pdf->Output('manage_bookings.pdf', 'I');
