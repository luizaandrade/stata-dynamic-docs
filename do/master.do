	
	* Install necessary packages
	ssc install texdoc
	ssc install texify

	* Set folder paths
	global 	project_folder 	"C:\Users\wb501238\Documents\GitHub\stata-dynamic-docs"
	global	do				"${project_folder}/do"
	global	output			"${project_folder}/output"

	* Change current directory to the directory where the .tex file will be saved
	cd 	"${out_raw}"
	
	* Copy the style to the folder path
	copy 	https://www.stata-journal.com/production/sjlatex/stata.sty 	stata.sty

	texdoc do		"${do}/main_doc.do", replace
	texify 			"${output}/main_doc.tex"	
