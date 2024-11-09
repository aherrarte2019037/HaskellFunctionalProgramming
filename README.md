# Haskell Programación Funcional

Este repositorio contiene cuatro ejercicios que demuestran el uso de funciones lambda en Haskell para diferentes operaciones sobre listas y matrices.

## Ejercicios

### 1. Ordenamiento de Diccionarios
- **Archivo**: `order_dictionary.hs`
- **Descripción**: Ordena una lista de diccionarios según una key especificada por el usuario.
- **Entrada**: El usuario debe seleccionar la key por la cual ordenar (make, model, color, storage, price).
- **Ejemplo de uso**:
```bash
ghc order_dictionary.hs
```

### 2. Cálculo de Potencias
- **Archivo**: `nesimum_power.hs`
- **Descripción**: Calcula la potencia n-ésima de cada elemento en una lista.
- **Entrada**: El usuario debe ingresar el exponente n.
- **Ejemplo de uso**:
```bash
ghc nesimum_power.hs
```

### 3. Matriz Transpuesta
- **Archivo**: `transpose_matrix.hs`
- **Descripción**: Calcula la matriz transpuesta de una matriz dada.
- **Ejemplo de uso**:
```bash
ghc transpose_matrix.hs
```

### 4. Filtrado de Lista
- **Archivo**: `list_remove.hs`
- **Descripción**: Elimina elementos específicos de una lista.
- **Ejemplo de uso**:
```bash
ghc list_remove.hs
```

## Requisitos
- GHC (Glasgow Haskell Compiler)
- Base de Haskell

## Instalación

1. Instalar GHC:
```bash
# En Ubuntu/Debian
sudo apt-get install ghc

# En macOS con Homebrew
brew install ghc

# En Windows
# Descargar e instalar desde https://www.haskell.org/ghc/
```

## Compilación y Ejecución

Para compilar cualquier ejercicio:
```bash
ghc nombre_archivo.hs
```

Para ejecutar:
```bash
./nombre_archivo
```

## Características Comunes
- Todos los ejercicios utilizan funciones lambda
- Implementación funcional y concisa
- Manejo de entrada/salida formateada
- Validación de entrada donde sea necesario

## Notas Adicionales
- Cada ejercicio incluye ejemplos de entrada y salida en los comentarios del código
- Los ejercicios están diseñados para ser interactivos donde sea apropiado
- Se incluye manejo de errores básico
