echo "(A script to make a first build of Intest)"
echo "(Step 1 of 2: making the makefile)"
if ! ( inweb/Tangled/inweb intest -prototype intest/scripts/makescript.txt -makefile intest/intest.mk; ) then
	echo "(Okay, so that failed. Have you installed and built Inweb?)"
	exit 1
fi
echo "(Step 2 of 2: building)"
if ! ( make -f intest/intest.mk; ) then
	exit 1
fi
echo "(Done!)"
