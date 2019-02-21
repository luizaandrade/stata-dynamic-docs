	
	* Install necessary packages
	ssc install texdoc
	ssc install texify

	* Set folder paths
	global 	project_folder 	"FOLDER/PATH/HERE"
	global	raw				"${project_folder}/Raw"

	* Change current directory to the directory where the .tex file will be saved
	cd 	"${raw}"
	
	* Copy the style to the folder path
	copy 	https://www.stata-journal.com/production/sjlatex/stata.sty 	stata.sty

	tex doc do		"${project_folder}/main_doc.do", replace
	texify 			"${raw}/main_doc.tex"	
