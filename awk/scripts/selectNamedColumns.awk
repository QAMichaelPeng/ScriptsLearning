BEGIN{
split(columns,a,",");
}
{
	if (NR == 1)
	{
		# remove bom
		sub(/^\xef\xbb\xbf/, "")
		split($0, b, "\t");
		for (ai in a)
		{
			for (bi in b)
			{
				if (a[ai] == b[bi])
				{
					column_maps[ai] = bi;
					newheader = newheader a[ai]  "\t"
				}
			}
		}
		if (length(newheader) > 0)
		{
			newheader = substr(newheader, 0, length(newheader) - 1)
		}
		print newheader
	}
	if (NR > 1)
	{
		split($0, b, "\t")
		s = ""	
		for (i in column_maps)
		{
			s = s b[column_maps[i]] "\t"
		}
		s = substr(s, 0, length(s) - 1)
		print s
	}
}
