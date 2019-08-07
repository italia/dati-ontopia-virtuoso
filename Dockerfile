FROM tenforce/virtuoso:1.3.2-virtuoso7.2.5.1

COPY virtuoso.ini /conf/virtuoso.ini
COPY virtuoso.sh /virtuoso.sh

COPY vocabularies /usr/local/virtuoso-opensource/share/virtuoso/vad/vocabularies
COPY ontologies /usr/local/virtuoso-opensource/share/virtuoso/vad/ontologies
