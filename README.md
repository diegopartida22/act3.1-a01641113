# Actividad 3.1. Analizador léxico

## Instrucciones

1. Revisa las secciones 3.3 - 3.8 del libre de texto [AHO].
2. Desarrolla, en clase, el análisis y diseño de un analizador léxico para el lenguaje de programación definido por el profesor.
   https://github.com/VictorRodriguez/compilers-lecture/tree/master/labs/04
3. Genera la definición del componente del analizador léxico que se empleará en el análisis de similitud de un texto.

## Autor

**Diego Partida Romero**  
_Fecha: 29/04/2025_

## Requisitos

- Flex (Fast Lexical Analyzer)
- GCC (GNU Compiler Collection)
- Make

## Instalación y Compilación

1. Asegúrate de tener todos los requisitos instalados
2. Ejecuta el comando make para compilar el proyecto:

```bash
make
```

## Uso

1. Crea un archivo de texto con el código que deseas analizar (por ejemplo, `example.ac`)

2. Ejecuta el analizador con tu archivo como argumento:

```bash
./lex_analyzer example.ac
```

## Tokens Reconocidos

El analizador reconoce los siguientes tokens:

- `floatdcl`: Declaración de flotante (f)
- `intdcl`: Declaración de entero (i)
- `print`: Comando de impresión (p)
- `id`: Identificadores (letras minúsculas)
- `assign`: Operador de asignación (=)
- `fnum`: Números flotantes (ejemplo: 3.14)
- `inum`: Números enteros (ejemplo: 42)
- `plus`: Operador de suma (+)
- `COMMENT`: Comentarios de línea (//)

## Ejemplo

Archivo de entrada (`example.ac`):

```
//Este es un comentario
f x
i y
x = 3.14
y = 42
p x
```

Salida esperada:

```
COMMENT
floatdcl id
intdcl id
id assign fnum
id assign inum
print id
```

## Estructura del Proyecto

- `lex_analyzer.l`: Archivo fuente con las reglas léxicas
- `makefile`: Archivo para automatizar la compilación
- `example.ac`: Archivo de ejemplo para probar el analizador
- `code_generator.py`: Generador de código auxiliar
# act3.1-a01641113
