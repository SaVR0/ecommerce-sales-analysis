-- 1. CREACIÓN DE LA TABLA CLIENTES
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    pais VARCHAR(50),
    fecha_registro DATE
);

-- 2. CREACIÓN DE LA TABLA VENTAS
CREATE TABLE ventas (
    venta_id INT PRIMARY KEY,
    cliente_id INT,
    fecha_venta DATE,
    categoria VARCHAR(50),
    producto VARCHAR(100),
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- 3. INSERCIÓN DE DATOS EN CLIENTES
INSERT INTO clientes (cliente_id, nombre, apellido, email, pais, fecha_registro) VALUES
(1, 'Carlos', 'Gómez', 'carlos.gomez@email.com', 'México', '2024-01-15'),
(2, 'Ana', 'Martínez', 'ana.martinez@email.com', 'Colombia', '2024-02-01'),
(3, 'Luis', 'Fernández', 'luis.f@email.com', 'Argentina', '2024-02-20'),
(4, 'María', 'López', 'maria.lopez@email.com', 'España', '2024-03-05'),
(5, 'Javier', 'Rodríguez', 'j.rodriguez@email.com', 'México', '2024-03-12'),
(6, 'Sofia', 'Torres', 'sofia.t@email.com', 'Colombia', '2024-04-01');

-- 4. INSERCIÓN DE DATOS EN VENTAS
INSERT INTO ventas (venta_id, cliente_id, fecha_venta, categoria, producto, cantidad, precio_unitario) VALUES
(101, 1, '2024-01-20', 'Electrónica', 'Laptop Pro 15', 1, 1200.00),
(102, 2, '2024-02-10', 'Hogar', 'Cafetera Espresso', 1, 150.00),
(103, 1, '2024-02-15', 'Electrónica', 'Mouse Inalámbrico', 2, 25.00),
(104, 3, '2024-02-22', 'Ropa', 'Chaqueta de Cuero', 1, 180.00),
(105, 4, '2024-03-10', 'Electrónica', 'Audífonos Bluetooth', 1, 80.00),
(106, 2, '2024-03-15', 'Hogar', 'Set de Sartenes', 1, 90.00),
(107, 5, '2024-03-18', 'Ropa', 'Zapatillas Deportivas', 1, 110.00),
(108, 1, '2024-03-25', 'Electrónica', 'Monitor 27 Pulgadas', 1, 300.00),
(109, 3, '2024-04-02', 'Ropa', 'Camisa Algodón', 3, 35.00),
(110, 6, '2024-04-05', 'Hogar', 'Aspiradora Robot', 1, 250.00),
(111, 4, '2024-04-12', 'Electrónica', 'Teclado Mecánico', 1, 95.00),
(112, 2, '2024-04-20', 'Electrónica', 'Tablet 10 Pulgadas', 1, 220.00);