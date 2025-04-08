# Microsoft Orleans Basada en una Arquitectura CDC (Change Data Capture)

## Fundamentos 

Uno de los objetivos más importantes de los servicios y aplicaciones de software es lograr que estos funcionen de forma eficiente, manteniendo entre muchas otras cosas, una capacidad de respuesta rápida y redundante durante el consumo de los servicios. 

La gran mayoría de las aplicaciones o servicios suelen utilizar algún tipo de sistema de persistencia para la gestión de la información de sus datos. Por ejemplo, una tienda online o una empresa que lleva su stock en tiempo real. Para estos casos la precisión y la velocidad de respuesta es crucial.

![Captura 1.](/docs/capture_1.png "Figura 1")

Ahora bien, el uso de estos sistemas de persistencia podrían tratarse de sistemas de bases de datos relacionales o no relacionales. Ver figura 1. Por lo tanto, los sistemas de persistencias, según sea su mecanismo operativo, tienen sus ventajas y desventajas. Por ejemplo, los sistemas de persistencia basados en sistemas relacionales, resultan ser más rápidos para las operaciones de cambio o de escritura, tales como las "altas, bajas y modificaciones" que las de lecturas. Las operaciones de lecturas, que son las consultas clásicas, suelen ser más lentas. Hay varias razones del por qué lo son. Una de las razones es la característica de complejidad estructural y funcional de las operaciones con la que se proceden a ejecutar en el sistema, otra es la cantidad de registros o datos que son enviados hacia el cliente, etc. 

Por otro lado, los mecanismos de persistencia de las consultas de tipo no relacionales, tienen características similares a los sistemas de persistencia basados en sistema relacionales pero en este caso sucede a la inversa. Es decir, las consultas de solo lectura son mucho más rápidas mientras que las operaciones de cambio o escritura resultan ser mucho más lentas. 

Por lo tanto, para poder obtener las mejores prestaciones de entre ambas, resulta necesario de algún modo encontrar una forma de poder integrar ambas modalidades en una. En efecto, de esto se trata este artículo.  

## El Mecanismo CDC (Change Data Capture) 

Un sistema CDC (Change Data Capture) es una técnica basada en algún tipo de mecanismo reactivo que es utilizadopara detectar y capturar los cambios realizados en una base de datos. Los mecanismos de CDC podrían ser controlados a través de sistemas nativos o bien, mediante sistemas de terceros, tales como Kafka, Redis, etc. Ver figura 2. 

![Captura 2.](/docs/capture_2.png "Figura 2")