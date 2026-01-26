{{- define "mysql.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end }}

{{- define "mysql.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "mysql.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
