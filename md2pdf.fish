function md2pdf
	switch $argv[1]
		case -l
			cd $argv[2]
			sudo docker run -v (pwd):/source jagregory/pandoc --latex-engine=xelatex $argv[3] -o $argv[4]
		case --location
			cd $argv[2]
			sudo docker run -v (pwd):/source jagregory/pandoc --latex-engine=xelatex $argv[3] -o $argv[4]
		case '*'
			sudo docker run -v (pwd):/source jagregory/pandoc --latex-engine=xelatex $argv[1] -o $argv[2]
	end
end
		
