# Reads lines where some start with page numbers from STDIN.
# Adds absolute page numbers to the existing ones,
# which are assumed to be page counts of chapters
# and writes the result to STDOUT.
# $Id: /caches/xsvn/admdevel/trunk/prj/shared_bin_not_in_path_dlqjwx9prunb58hl2kncy0q0r/abs_page.pl 11 2006-11-06T23:14:31.537884Z root(xternal)  $


$a= 1;
while (defined($_= <>)) {
   s/^(\d+)/$1\t$a/ and $a+= $1 or s/^/\t/;
   print;
}