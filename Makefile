SUNSPOT_URL = https://github.com/sunspot/sunspot.git

conf: sunspot
	mkdir -p solr_home
	cp -R ./sunspot/sunspot_solr/solr/solr/conf ./conf

sunspot:
	git clone https://github.com/sunspot/sunspot.git
	
clean:
	rm -rf sunspot
	rm -rf conf
	
