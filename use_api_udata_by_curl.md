# Utilisation des API uData par Curl

## D�p�t d'un fichier

```curl
curl -X POST -H 'X-API-KEY: <api-key>' -F 'file=@<chemin-fichier>' 'http://<url-racine-udata>/api/1/datasets/<id-dataset>/upload/' 
```