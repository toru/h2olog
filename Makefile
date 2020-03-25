QUICLY_REV := master
H2O_REV := master


all: quicly-probes.d h2o-probes.d

quicly-probes.d:
	curl -LO 'https://raw.githubusercontent.com/h2o/quicly/$(QUICLY_REV)/quicly-probes.d'

h2o-probes.d:
	curl -LO 'https://raw.githubusercontent.com/h2o/h2o/$(H2O_REV)/h2o-probes.d'

clean:
	rm -rf *.d
