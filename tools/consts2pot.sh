#/bin/sh

constfiledir="../lib/common/kernel"
constfile="mseconsts.pas"
pot="../languages/mseconsts/mseconsts.pot"

# create temporary file
cp -f $constfiledir/$constfile ./$constfile

# delete header before "en_extendedconst"
sed -i '1,/en_extendedconst/d' $constfile

# delete empty strings (empty string is reserved by POT file header)
sed -i "/''/d" $constfile

# delete strings from file after "function modalresulttext"
sed -i '/function modalresulttext/,$d' $constfile

# generate POT file by xgettext using Lua language
xgettext -L Lua -a $constfile -o $pot

# write info into POT file
sed -i "s|PACKAGE VERSION|mseconsts|g" $pot
sed -i "s|charset=CHARSET|charset=UTF-8|g" $pot

# delete comments from POT file
sed -i "/#:/d" $pot

# POT file header is not fuzzy already
sed -i "/#, fuzzy/d" $pot

# delete temporary file
rm -f ./$constfile
