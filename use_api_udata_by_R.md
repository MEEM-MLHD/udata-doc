# Utilisation des API uData par R

## Cr�ation d'un dataset

Pr�-requis
```R
library('httr')
library('jsonlite')
```

On r�cup�re le r�sultat de la requ�te post dans la variable r (j'ai d�sactiv� le proxy car on est sur une requ�te intranet):

```R
r <- with_config(use_proxy(url=''),POST("http://<url-racine-udata>/api/1/datasets/",
  accept_json(),
  add_headers("Content-Type" = "application/json", "X-API-KEY" = "<api-key>"),
  body = toJSON(list(
    "title" = "Dataset from R",
    "description" = "Description d'un dataset cr�� � partir de R"
  ))
))
```
