# Microsoft Network (MSN) Messenger service
#
# This pattern has been tested and is believed to work well.  If it does not
# work for you, or you believe it could be improved, please post to 
# l7-filter-patterns@lists.sf.net .  This list may be subscribed to at
# http://lists.sourceforge.net/lists/listinfo/l7-filter-patterns
msnmessenger
ver .* msnp .* cvr|usr .* md5 i

# CVR needs to be lowercase becaues we call tolower() on everything
#ver .* msnp .* CVR|usr .* md5 i
