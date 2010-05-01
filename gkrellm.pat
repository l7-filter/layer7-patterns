# Gkrellm - a system monitor (gkrellm.net)
# 
# This pattern is UNTESTED.
# If this pattern works for you, you have trouble with this pattern, or you 
# believe it could be improved please post to l7-filter-patterns@lists.sf.net 
# You may subscribe to this list at 
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns

# it looks like gkrellm always sends cpu and proc data even if they aren't
# displayed.  There are five space-delimited fields in the cpu data.
gkrellm
<cpu>.*\ .*\ .*\ .*<proc> 
