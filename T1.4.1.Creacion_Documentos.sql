--------------------------------------------------
--CARGA DE COLECCIONES A PARTIR DE CSV DE DATOS EN MONGODB
--------------------------------------------------
mongoimport --uri "mongodb+srv://jdordonezn:<password>@cluster0.v4uzf.mongodb.net/" --type csv -d dbOffer -c offer --headerline --drop --file software_developer_united_states_1971_20191023_1.csv
--- Documentación
–type: Formato del tipo de archivo a exportar
-d: Específica la db a usar
-c: Específica el nombre de la colección donde se cargara la data
–headerline: Específica que la primera fila sean los nombres de los campos de la colección
–drop: Específica que queremos eliminar la colección antes de importar documentos.
----------------------------------------------------
