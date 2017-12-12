SELECT     v.idVenta,
           v.precio_facturacion_final,
           p.nombre_promocion,v.cantidad_paquetes_vendidos,
           concat(c1.nombre," + ", c2.nombre,"  Cafe Java")
FROM       EjercicioExamen_1.Venta v
INNER JOIN EjercicioExamen_1.Promocion p
ON         v.idPromocion=p.idPromocion
INNER JOIN EjercicioExamen_1.Cafe c1
ON         p.idCafe_1=c1.idCafe
INNER JOIN EjercicioExamen_1.Cafe c2
ON         p.idCafe_2=c2.idCafe
WHERE      (v.cantidad_paquetes_vendidos >= 1523) AND (v.cantidad_paquetes_vendidos <= 2000)
order by c1.nombre; 