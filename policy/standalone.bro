# Configuration for a standalone system.

@load site

@unload cluster-by-addrs
@unload cluster-by-conns

@load broctl
@load notice
@load remote
@load mail-alarms
	
@load trim-trace-file	
@load analysis-groups
	
# Even a stand-alone system has to listen so that we can do remote updates.
@load listen-clear
redef listen_port_clear = BroCtl::manager$p;

# Give us a name. 
redef peer_description = "bro";

# Record all packets into trace file.
redef record_all_packets = T;

@load notice



