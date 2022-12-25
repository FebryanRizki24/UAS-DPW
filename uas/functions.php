<?php
// membuat koneksi
$conn=mysqli_connect("localhost","root","","dbcontact");
// cek koneksi jika error
if (!$conn) {
    die('Koneksi Error : '.mysqli_connect_errno() 
    .' - '.mysqli_connect_error());
 }
//ambil data dari tabel mahasiswa/query data mahasiswa
$result=mysqli_query($conn,"SELECT * FROM users");  

// function query akan menerima isi paramater dari string query yg ada pada index2.php (line 3)
function query($query_kedua)
{
    // dikarenakan $conn diluar function query maka dibutuhkan scope global $conn
    global $conn; 
    $result = mysqli_query($conn,$query_kedua);
    // wadah kosong untuk menampung isi array pada saat looping line 16
    $rows = [];
    while ( $row = mysqli_fetch_assoc($result)){
        $rows[]=$row;    
    }
    return $rows;
}

function registrasi($data)
{
    global $conn;

    //stripcslashes digunakan untuk menghilangkan blackslashes 
    $username=strtolower(stripcslashes($data['username']));
    $email = $_POST['email'];
    $level="user";
    
    //mysqli_real_escape_string untuk memberikan perlidungan terhadap karakter-karakter unik (sql_injection)
    //pada mysqli_real_escape_string terdapat 2 paramater
    $password=mysqli_real_escape_string($conn,$data['password']); 
    $password2=mysqli_real_escape_string($conn,$data['password2']); 

    // cek username sudah ada apa belum
    $result=mysqli_query($conn,"SELECT username FROM users WHERE username='$username'");

    //cek kondisi jika line 175 bernilai true maka cetak echo
    if(mysqli_fetch_assoc($result))
    {
        echo "
            <script>
                alert('username sudah ada');
            </script>
        ";
        // agar proses insertnya gagal
        return false;
    }

    // cek konfirmasi password
    if($password!==$password2)
    {
        echo"
        <script> 
            alert('password anda tidak sama');
        </script>
        ";
        return false;
    }

    // enkripsi password
        // $password=md5($password);
        $password=password_hash($password,PASSWORD_DEFAULT);
        // var_dump($password);

    // tambahkan user baru ke database
    mysqli_query($conn,"INSERT INTO users VALUES ('','$username','$email','$password','$level')");

    return mysqli_affected_rows($conn); 


}
?> 

