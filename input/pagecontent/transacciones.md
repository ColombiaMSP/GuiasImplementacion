

La siguiente sección, describe como serán las transacciones con la plataforma. En la primera parte se representa el guardar Documento, a continuación Buscar Documentos de un paciente y por ultimo obtener un documento especifico.


### Guardar Documento.
El RDA generado y válido es enviado a los servicios del mecanismo IHCE mediante la API de envío. En la plataforma el RDA es recibido, validado y consolidado dentro del repositorio asignado con los respectivos identificadores nacionales y es indexado en el recurso DocumentReference. La Plataforma responde con un mensaje del resultado de la transacción.


Perfil de Bundle de RDA: [BundleCo](StructureDefinition-BundleCo.html)

<div>
{% include GuardarRDA.svg %}
</div>




### Buscar RDA de un paciente.

Utilizando el identificador del paciente, desde el prestador se invoca la API de consulta hacia el mecanismo IHCE al recurso DocumentReference. Esta operación retorna un Bundle con las distintas instancias que existen para el paciente dentro del recurso DocumentReference.
PrestadorPrestadorPlataformaIHCPlataformaIHCGET DocumentReference (subject.identifier: «valor»)Bundle (DocumentReference)



<div>
{% include BuscarDoc.svg %}
</div>

### Obtener RDA de un paciente.
A partir de la información desplegada al usuario, por el bundle obtenido en el punto anterior, el usuario selecciona un RDA específico a ser visualizado. Esta selección invoca la API respectiva para traer el Bundle del RDA solicitado sobre repositorio correspondiente dentro de la plataforma de IHCE.  La plataforma retorna este Bundle con la estructura de los contenidos del RDA para que el prestador pueda visualizarlos.
PrestadorPrestadorPlataformaIHCPlataformaIHC



<div>
{% include RecuperarDoc.svg %}
</div>
