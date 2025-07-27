def tampil_menu():
    print("\nTampilan Menu")
    print("="*50)
    print("MENU PILIHAN".center(50))
    print("1. Input angka")
    print("2. Sorting")
    print("3. Searching")
    print("4. Selesai")
    pilihan = input("Masukkan pilihan [1/2/3/4] : ")
    return pilihan

def input_angka():
    print("\nTampilan Layar Input")
    print("="*50)
    print("INPUT ANGKA".center(50))
    data = []
    n = int(input("Masukkan jumlah nilai tugas : "))
    print("Input Angka Secara Acak")
    print("-" * 50)
    for i in range(n):
        angka = int(input(f"Angka {i+1} : "))
        data.append(angka)
    return data

def sorting_angka(data):
    print("\nTampilan Layar Output")
    print("="*50)
    print("TAMPIL HASIL SORTING".center(50))
    data.sort()
    print("Hasil sorting :", ", ".join(map(str, data)))

def searching_angka(data):
    print("\nTampilan Layar Output")
    print("="*50)
    print("TAMPIL HASIL SEARCHING".center(50))
    cari = int(input("Masukkan angka yang ingin dicari: "))
    if cari in data:
        print(f"Angka {cari} ditemukan pada indeks ke-{data.index(cari)}")
    else:
        print(f"Angka {cari} tidak ditemukan dalam data")
        
def fungsi_searching(data, target):
    return target in data

# Program utama
data_angka = []

while True:
    pilih = tampil_menu()

    if pilih == '1':
        data_angka = input_angka()
    elif pilih == '2':
        if data_angka:
            sorting_angka(data_angka)
        else:
            print("Data masih kosong! Silakan input angka terlebih dahulu.")
    elif pilih == '3':
        if data_angka:
            searching_angka(data_angka)
        else:
            print("Data masih kosong! Silakan input angka terlebih dahulu.")
    elif pilih == '4':
        print("Program selesai. Terima kasih!")
        break
    else:
        print("Pilihan tidak valid. Silakan pilih 1/2/3/4.")
