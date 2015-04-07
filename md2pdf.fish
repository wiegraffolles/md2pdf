function md2pdf
		
	function location
		set directory (dirname $argv[2])
		set markdown (basename $argv[2])
		cd $directory
		sudo docker run -v (pwd):/source jagregory/pandoc --latex-engine=xelatex $markdown -o $argv[3]
	end
		
	switch $argv[1]
		case -l
			location $argv
		case --location
			location $argv
		case '*'
			sudo docker run -v (pwd):/source jagregory/pandoc --latex-engine=xelatex $argv[1] -o $argv[2]
	end
			
end
		
