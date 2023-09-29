-- CREATE VIEW Compras_PowerBI as
SELECT 
	a.PurchaseOrderID as OrderID,
	b.OrderDate as FecahOrden,
	b.ShipDate as FechaEnvio,
	a.DueDate as FechaVencimiento,
	a.ProductID,
	d.Name as Descripcion,
	a.OrderQty as CantidadPedida,
	a.ReceivedQty as CantidadRecibida,
	a.RejectedQty as cantidadDevuelta,
	a.UnitPrice as PrecioUnitario,
	a.LineTotal as MontoTotal,
	b.VendorID as ProveedorId,
	e.Name as Proveedor,
	c.AverageLeadTime as TiempoPromedio
FROM 
	Purchasing.PurchaseOrderDetail a
JOIN Purchasing.PurchaseOrderHeader b ON a.PurchaseOrderID = b.PurchaseOrderID
JOIN Purchasing.ProductVendor c ON a.ProductID = c.ProductID
JOIN Production.Product d ON c. ProductID = d.ProductID
JOIN Purchasing.Vendor e ON b.VendorID = E.BusinessEntityID