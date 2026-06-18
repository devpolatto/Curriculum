#!/bin/bash

languages=(
  "EN-US"
  "PT-BR"
)

for lang in "${languages[@]}"; do
  echo "Generating PDF for language: $lang"
  uv run rendercv render "Angelo_Polatto_${lang}_CV.yaml" --pdf-path "rendercv_output/Angelo_Polatto_${lang}_CV.pdf"
  if [ $? -ne 0 ]; then
    echo "Error generating PDF for language: $lang"
    exit 1
  fi
done