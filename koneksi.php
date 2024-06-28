<?php

$server = 'localhost';
$database = 'db_sct';
$username = 'root';
$password = '';

$koneksi = new mysqli($server, $username, $password, $database);

if ($koneksi->connect_errno) {
    echo 'Gagal terkoneksi ke database ' . $database;
}
