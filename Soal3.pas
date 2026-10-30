program UrutNilaiUAS;

uses crt;

var
    nilai: array[1..10] of integer;
    n, i, j, temp: integer;

begin
    clrscr;

writeln('================================');
writeln('     PROGRAM PENGURUTAN NILAI');
writeln('================================');

write('Masukkan jumlah mahasiswa (1-10): ');
readln(n);

{ mengecek apakah jumlah mahasiswa sesuai ketentuan }
if (n >= 1) and (n <= 10) then
begin
    writeln;
    writeln('Masukkan Nilai UAS Mahasiswa');

{ memasukkan nilai uas setiap mahasiswa }
    for i := 1 to n do
    begin
        write('Nilai mahasiswa ke-', i, ': ');
        readln(nilai[i]);
    end;

{ mengurutkan nilai dari yang terkecil ke terbesar menggunakan bubble sort }
    for i := 1 to n - 1 do
    begin
        for j := 1 to n - i do
        begin
        {membandingkan dua nilai yang bersebelahan }
        if nilai[j] > nilai[j + 1] then
        begin
        { menukar posisi nilai jika nilai pertama lebih besar }
            temp := nilai[j];
            nilai[j] := nilai[j + 1];
            nilai[j + 1] := temp;
        end;
    end;
end;

{ menampilkan nilai yang sudah berhasil diurutkan }
writeln;
writeln('================================');
writeln('   NILAI SETELAH DIURUTKAN');
writeln('================================');

    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i, ': ', nilai[i]);
        end;
    end
else
    begin
    { menampilkan pesan jika jumlah mahasiswa tidak sesuai }
        writeln('Jumlah mahasiswa harus 1 sampai 10!');
    end;

    readln;
end.