{{- define "lib.helmValues" -}}
{{- if . -}}
helm:
  values: |
{{- . | nindent 4 -}}
{{- end -}}
{{- end -}}
