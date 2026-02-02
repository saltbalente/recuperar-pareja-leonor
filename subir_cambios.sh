#!/bin/bash

# Verificar si hay cambios
if [[ -z $(git status -s) ]]; then
  echo "No hay cambios pendientes para subir."
  exit 0
fi

echo "Detectando cambios..."
git status

echo "Añadiendo archivos..."
git add .

echo "Introduce un mensaje para describir los cambios (ej: 'Actualizar colores'):"
read mensaje

if [ -z "$mensaje" ]; then
  mensaje="Actualización automática"
fi

echo "Confirmando cambios con mensaje: $mensaje"
git commit -m "$mensaje"

echo "Subiendo al repositorio remoto..."
git push origin main

echo "¡Listo! Todo actualizado en https://github.com/saltbalente/recuperar-pareja-leonor"
