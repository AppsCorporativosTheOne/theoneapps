{{- define "postgres.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end }}

{{- define "postgres.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "postgres.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
