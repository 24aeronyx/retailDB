-- Active: 1699795418222@@127.0.0.1@3306@retail

-- insert data ke dalam categories
INSERT INTO categories (name, description) VALUES
('Elektronik', 'Kategori barang elektronik dan gadget.'),
('Pakaian', 'Kategori pakaian pria, wanita, dan anak-anak.'),
('Alat Tulis', 'Kategori alat tulis dan kantor.'),
('Olahraga', 'Kategori peralatan olahraga dan outdoor.'),
('Makanan', 'Kategori makanan dan minuman.'),
('Kesehatan', 'Kategori produk kesehatan dan perawatan diri.'),
('Mainan', 'Kategori mainan anak-anak.'),
('Furniture', 'Kategori perabotan dan furniture.'),
('Hobi', 'Kategori barang-barang hobi.'),
('Kendaraan', 'Kategori kendaraan dan aksesoris.');

-- Data untuk Tabel Barang (barang)
INSERT INTO barang (name, price, stock, description, category_id) VALUES
('Laptop ASUS', 5000000, 10, 'Laptop ASUS Core i7', 1),
('Celana Jeans Pria', 150000, 30, 'Celana Jeans Denim Pria', 2),
('Pensil HB', 3000, 100, 'Pensil dengan kualitas HB', 3),
('Sepatu Lari', 120000, 20, 'Sepatu olahraga untuk lari', 4),
('Beras Premium', 80000, 50, 'Beras premium 5kg', 5),
('Vitamin C', 15000, 100, 'Vitamin C 1000mg', 6),
('Lego Building Blocks', 150000, 15, 'Mainan blok konstruksi', 7),
('Meja Kayu', 300000, 5, 'Meja kayu solid', 8),
('Cat Air Lukis', 25000, 40, 'Cat air untuk lukisan', 9),
('Helm Sepeda', 150000, 25, 'Helm sepeda warna hitam', 10),
('Smartphone Samsung', 4000000, 15, 'Smartphone Samsung Galaxy S21', 1),
('Dress Wanita', 180000, 20, 'Dress wanita warna merah', 2),
('Buku Catatan', 3000, 80, 'Buku catatan spiral', 3),
('Treadmill Elektrik', 4300000, 10, 'Treadmill elektrik untuk olahraga', 4),
('Kopi Arabika', 10000, 50, 'Kopi bubuk arabika 250g', 5),
('Masker Wajah', 10000, 200, 'Masker kain 3 lapis', 6),
('Puzzle Anak', 18000, 30, 'Puzzle anak-anak 50 pcs', 7),
('Kursi Kantor Ergonomis', 120000, 10, 'Kursi kantor dengan desain ergonomis', 8),
('Gitar Akustik', 200000, 8, 'Gitar akustik warna natural', 9),
('Ban Sepeda Lipat', 25000, 40, 'Ban sepeda lipat 20"', 10),
('Biola', 700000, 20, 'Biola warna biru"', 9);

-- Data untuk Tabel Customer
INSERT INTO customer (name, address, email, contact) VALUES
('John Doe', '123 Main Street, Cityville', 'john.doe@example.com', '123-456-7890'),
('Jane Smith', '456 Oak Avenue, Townsville', 'jane.smith@example.com', '987-654-3210'),
('Bob Johnson', '789 Pine Road, Villagetown', 'bob.johnson@example.com', '555-123-4567'),
('Alice Williams', '321 Cedar Lane, Hamlet City', 'alice.williams@example.com', '444-789-0123'),
('Charlie Brown', '654 Elm Street, Boroughburg', 'charlie.brown@example.com', '777-222-3333'),
('Eva Davis', '987 Maple Drive, Township', 'eva.davis@example.com', '888-111-2222'),
('Michael Wilson', '159 Birch Lane, Villageland', 'michael.wilson@example.com', '999-000-1234'),
('Olivia Miller', '357 Fir Street, Cityborough', 'olivia.miller@example.com', '111-222-3333'),
('Daniel Taylor', '852 Redwood Avenue, Hamletville', 'daniel.taylor@example.com', '333-444-5555'),
('Sophia Thomas', '753 Pinecone Road, Boroughville', 'sophia.thomas@example.com', '666-777-8888'),
('William White', '456 Oak Avenue, Townsville', 'william.white@example.com', '222-333-4444'),
('Ava Martinez', '789 Pine Road, Villagetown', 'ava.martinez@example.com', '444-555-6666'),
('James Garcia', '321 Cedar Lane, Hamlet City', 'james.garcia@example.com', '777-888-9999'),
('Grace Robinson', '654 Elm Street, Boroughburg', 'grace.robinson@example.com', '999-111-0000'),
('Benjamin Lee', '987 Maple Drive, Township', 'benjamin.lee@example.com', '000-999-8888'),
('Emma Hall', '159 Birch Lane, Villageland', 'emma.hall@example.com', '111-222-3333'),
('Logan Adams', '357 Fir Street, Cityborough', 'logan.adams@example.com', '444-555-6666'),
('Mia Clark', '852 Redwood Avenue, Hamletville', 'mia.clark@example.com', '777-888-9999'),
('Ethan Wright', '753 Pinecone Road, Boroughville', 'ethan.wright@example.com', '999-111-0000'),
('Isabella Hall', '456 Oak Avenue, Townsville', 'isabella.hall@example.com', '222-333-4444');
