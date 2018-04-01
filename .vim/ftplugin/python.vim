python << EOF                                                                 
import sys

path1 = "/usr/lib/python3.6/site-packages"
path2 = "/usr/lib64/python3.6/site-packages"

if not path1 in sys.path:
    sys.path.append(path1)
if not path2 in sys.path:
    sys.path.append(path2)

EOF
