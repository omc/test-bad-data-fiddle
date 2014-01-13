SUNSPOT_URL = https://github.com/sunspot/sunspot.git

solr_home: sunspot
	mkdir -p solr_home
	cp -R sunspot/sunspot_solr/solr/solr/* solr_home
	find solr_home -name index | xargs -n 1 -I % sh -c "rm -f %/*"
	find solr_home -name tlog  | xargs -n 1 -I % sh -c "rm -f %/*"

sunspot:
	git clone https://github.com/sunspot/sunspot.git
	
clean:
	rm -rf sunspot
	rm -rf solr_home
	
