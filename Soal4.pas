program NilaiMahasiswa;

var
    tugas, kuis, uts, uas, rata_rata : array[1..5] of real;
    n, i: integer;

begin

writeln('====================================');
writeln('     PROGRAM NILAI MAHASISWA');
writeln('====================================');

{ Memasukkan jumlah mahasiswa yang ingin dihitung nilainya }
write('Masukkan jumlah mahasiswa (1-5): ');
readln(n);

{ Mengecek apakah jumlah mahasiswa yang dimasukkan sudah sesuai }
if (n >= 1) and (n <= 5) then
begin

    { Input nilai mahasiswa }
    for i := 1 to n do
    begin
        writeln;
        writeln('Mahasiswa ke-', i);

        write('Nilai Tugas : ');
        readln(tugas[i]);

        write('Nilai Kuis  : ');
        readln(kuis[i]);

        write('Nilai UTS   : ');
        readln(uts[i]);

        write('Nilai UAS   : ');
        readln(uas[i]);

        { Menghitung nilai rata-rata }
        rata_rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    { Menampilkan hasil }
writeln;
writeln('====================================');
writeln('       HASIL NILAI MAHASISWA');
writeln('====================================');

for i := 1 to n do
begin
    writeln;
    writeln('Mahasiswa ke-', i);
    writeln('Nilai Tugas : ', tugas[i]:0:2);
    writeln('Nilai Kuis  : ', kuis[i]:0:2);
    writeln('Nilai UTS   : ', uts[i]:0:2);
    writeln('Nilai UAS   : ', uas[i]:0:2);
    writeln('Rata-rata   : ', rata_rata[i]:0:2);

    { Jika rata-rata mencapai 70 atau lebih, mahasiswa dinyatakan lulus }
    if rata_rata[i] >= 70 then
        writeln('Keterangan  : LULUS')
    else
        writeln('Keterangan  : TIDAK LULUS');
end;

end
else
    { Memberi tahu pengguna jika jumlah mahasiswa yang dimasukkan tidak sesuai }
    writeln('Jumlah mahasiswa harus 1 sampai 5!');

readln;
end.