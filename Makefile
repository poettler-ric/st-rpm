.PHONY: sources

sources:
	spectool -g st.spec

srpm:
	rpmbuild -bs st.spec \
	    -D "_sourcedir ${PWD}" \
	    -D "_srcrpmdir ${PWD}"
