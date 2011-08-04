redef log_rotate_interval = 24hrs;
redef log_rotate_base_time = "0:00";
redef RotateLogs::default_postprocessor = "archive-log";

event file_opened(f: file)
	{
	# Create a link from the archive directory to the newly created file.
	if ( MANAGER == 1 && ! bro_is_terminating() )
		system(fmt("create-link-for-log %s", get_file_name(f)));
	}

