KNIT = Rscript -e "require(rmarkdown); render('$<')"

all: pam.md pam_1st_time_attendee.md pam_all_responses.md pam_faculty.md pam_good_experience.md pam_industry.md pam_many_pams_attended.md pam_no_prior_remote_experience.md pam_oregon-no.md pam_oregon-yes.md pam_poor_experience.md pam_prior_remote_experience.md pam_students.md

%.md: %.Rmd
	$(KNIT)
