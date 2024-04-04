VERSION=20240401
DICTNAME=zhwiktionary
FILENAME=zhwiktionary-$(VERSION)-all-titles-in-ns0

all: build

build: ${DICTNAME}.dict.yaml

download: $(FILENAME).gz

$(FILENAME).gz:
	wget https://dumps.wikimedia.org/zhwiktionary/$(VERSION)/$(FILENAME).gz

$(FILENAME): $(FILENAME).gz
	gzip -k -d $(FILENAME).gz

${DICTNAME}.raw: $(FILENAME) convert.py
	./convert.py $(FILENAME) | grep -v "噷" > ${DICTNAME}.raw.tmp
	sort -u ${DICTNAME}.raw.tmp > ${DICTNAME}.raw

${DICTNAME}.dict.yaml: ${DICTNAME}.raw
	sed 's/[ ][ ]*/\t/g' ${DICTNAME}.raw > ${DICTNAME}.rime.raw
	sed -i 's/\t0//g' ${DICTNAME}.rime.raw
	sed -i "s/'/ /g" ${DICTNAME}.rime.raw
	echo -e '---\nname: ${DICTNAME}\nversion: "0.1"\nsort: by_weight\n...\n' > ${DICTNAME}.dict.yaml
	cat ${DICTNAME}.rime.raw >> ${DICTNAME}.dict.yaml

install: ${DICTNAME}.dict.yaml
	install -Dm644 ${DICTNAME}.dict.yaml -t $(DESTDIR)/usr/share/rime-data/

clean:
	rm -f $(FILENAME) ${DICTNAME}.{source,raw,dict.yaml}
