
function goto-kursus {
  cd "$ProfileHOME/kursus"
}

function goto-home {
  cd $ProfileHOME
}


function goto-c {
  cd "c:\"
}


function goto-dev {
  cd "c:\dev"
}


function goto-temp  {
    cd "$env:temp"
}



## Create New-PSDrive K pointing to Kursus
## New-PSDrive -Name "K" -PSProvider "FileSystem" -Root "$ProfileHOME/kursus" 

## Create New-PSDrive E pointing to Allfiles
## New-PSDrive -Name "E" -PSProvider "FileSystem" -Root "$ProfileHOME/kursus/MS10961C_All_Files" 

goto-dev

