FROM tenforce/virtuoso:1.3.2-virtuoso7.2.5.1

COPY vocabularies /usr/local/virtuoso-opensource/share/virtuoso/vad/vocabularies
COPY ontologies /usr/local/virtuoso-opensource/share/virtuoso/vad/ontologies

CMD ["/bin/bash", "/virtuoso.sh"]
