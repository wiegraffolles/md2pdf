	function md2pdf
		sudo docker run -v (pwd):/source jagregory/pandoc --latex-engine=xelatex $argv[1] -o $argv[2]
	end
		
