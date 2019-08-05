# OntoPiA Virtuoso for Piattaforma Digitale Nazionale Dati (PDND), previously DAF

This projects provides the SPARQL enpoint "Virtuoso" for enhancing user experience with the ontologies and the controlled vocabularies of OntoPiA

## What is the PDND (previously DAF)?

PDND stays for "Piattaforma Digitale Nazionale Dati" (the Italian Digital Data Platform), previously known as Data & Analytics Framework (DAF).

You can find more informations about the PDND on the official [Digital Transformation Team website](https://teamdigitale.governo.it/it/projects/daf.htm).

## What is Virtuoso?

Virtuoso is a high-performance object-relational SQL database. As a database, it provides transactions, a smart SQL compiler, powerful stored-procedure language with optional Java and .Net server-side hosting, hot backup, SQL-99 support and more. It has all major data-access interfaces, such as ODBC, JDBC, ADO .Net and OLE/DB.

Virtuoso has a built-in web server which can serve dynamic web pages written in Virtuoso's web language (VSP) as well as PHP, ASP .net and others. This same web server provides SOAP and REST access to Virtuoso stored procedures, supporting a broad set of WS protocols such as WS-Security, WS-Reliable Messaging and others. A BPEL4WS run time is also available as part of Virtuoso's SOA suite.

Virtuoso has a built-in WebDAV repository. This can host static and dynamic web content and optionally provides versioning. The WebDAV repository is tested to interoperate with WebDAV clients built into Windows XP, Mac OSX and others and makes Virtuoso a convenient and secure place for keeping one's files on the net. Further, Virtuoso provides automatic metadata extraction and full text searching for supported content types.

(credits: [http://vos.openlinksw.com](http://vos.openlinksw.com))

OntoPiA Virtuoso is a custom, containerized version of the standard version of Virtuoso used for OntoPiA, in the PDND project.

## How to build and test OntoPiA Virtuoso

The project relies on Docker.

### Build

To build the containers type the following command in the terminal having the root of the project as base folder:

```shell
docker-compose build
```

### Run

To run the containers type the following command in the terminal having the root of the project as base folder:

```shell
docker-compose up
```

Once the containers are up and assuming that `localhost` is the reference host, users can access the SPARQL endpoint at <http://localhost:8890/sparql;>

## SPARQL

The following is an example of SPARQL SELECT query that returns all the classes defined in the ontology network of OntoPiA.

```sql
PREFIX owl: <http://www.w3.org/2002/07/owl#>
SELECT DISTINCT ?class
WHERE {
  ?class a owl:Class
}
```

## How to contribute

Contributions are welcome. Feel free to [open issues](./issues) and submit a [pull request](./pulls) at any time, but please read [our handbook](https://github.com/teamdigitale/pdnd-handbook) first.

## License

Copyright (c) 2019 Presidenza del Consiglio dei Ministri

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program.  If not, see <https://www.gnu.org/licenses/>.
