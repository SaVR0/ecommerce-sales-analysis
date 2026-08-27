-- Reporte General Unificado (Consolidado)

select v.venta_id, v.fecha_venta, c.cliente_id,
		concat(c.nombre, ' ', c.apellido) as cliente,
		c.pais, v.categoria, v.producto, v.cantidad, v.precio_unitario,
		(v.cantidad * v.precio_unitario) as total_ventas
from ventas v
inner join clientes c on v.cliente_id = c.cliente_id 
order by v.fecha_venta asc;
		

-- Clientes mas valiosos (Raking de Gastos por Clientes)

select c.cliente_id, concat(c.nombre, ' ', c.apellido) as cliente, c.pais,
		count(v.venta_id) as total_compras,
		SUM(v.cantidad * v.precio_unitario) as total_gastado,
		round(AVG(v.cantidad * v.precio_unitario), 2) as ticket_promedio
from clientes c 
inner join ventas v on c.cliente_id = v.cliente_id
group by c.cliente_id, c.nombre, c.apellido, c.pais
order by total_gastado desc;

-- Ventas  e ingresos por Categoria de Producto

select v.categoria, count(v.venta_id) as numero_transacciones,
		SUM(v.cantidad) as unidades_vendidas,
		SUM(v.cantidad * v.precio_unitario) as ingresos_totales
from ventas v
group by v.categoria 
order by ingresos_totales desc;


-- Filtrar Clientes VIP

select c.cliente_id, concat(c.nombre, ' ', c.apellido) as cliente,
		SUM(v.cantidad * v.precio_unitario) as total_gastado
from clientes c
inner join ventas v on c.cliente_id  = v.cliente_id 
group by c.cliente_id , c.nombre, c.apellido 
having SUM(v.cantidad * v.precio_unitario )> 500
order by total_gastado desc;

--evolucion mensual de ventas

select TO_CHAR(v.fecha_venta, 'YYYY-MM') as mes_año,
		count(v.venta_id) as total_transacciones,
		sum(v.cantidad * v.precio_unitario) as facturacion_mensual
from ventas v
group by TO_CHAR(v.fecha_venta, 'YYYY-MM')
order by mes_año asc;
		
		
		
		
		