# $Id: cluster-proxy.bro 7098 2010-10-19 00:54:23Z robin $
#
# Common PROXY config.

@prefixes += cluster-proxy

@load broctl
@load remote
	
# Since we don't capture, don't bother with this.
@unload print-filter
	
# Communications. 
@load listen-clear
redef listen_port_clear = BroCtl::proxies[PROXY]$p;

# No packet capture on proxy.
redef interfaces = "";

# The proxy only syncs state; does not forward events.
redef forward_remote_events = F;
redef forward_remote_state_changes = T;

# Set our name.
redef peer_description = BroCtl::proxies[PROXY]$tag;


