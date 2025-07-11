<?php
$conn = new mysqli('localhost', 'cicool', 'admin123', 'piddprd_semarangkota_db', 3306);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
echo "Koneksi ke database berhasil!";
