options mprint symbolgen ;
/* Param�tres g�n�raux */

%let mykey = <API KEY> ;
%let apiserver = http://<SERVER>/api/1 ;

/* Information sur le dataset concern� */
%let datasets = <DATASET> ;

/* Information sur le fichier � d�poser */

%let filetoupload = <FILE> ;
%let localdirectory = <REP> ;
%let titre = "<TITLE>" ;
%let description = "<DESC>" ;
%cvs2datalake (&datasets,&filetoupload,&localdirectory,&titre,&description) ;
