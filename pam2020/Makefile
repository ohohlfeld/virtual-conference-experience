all: figures/preconf-%.pdf figures/postconf-%.pdf

figures/preconf-%.pdf: PAM-Pre_conference_questionnaire.csv likert-plots-preconf.R load_data.R
	Rscript likert-plots-preconf.R
	
figures/postconf-%.pdf: PAM-Post_conference_questionnaire.csv likert-plots-postconf.R load_data.R
	Rscript likert-plots-postconf.R
