#!/usr/bin/env nu
ls | where type == Dir && name != "todo" && name != "scripts" | each {
	ls $it.name | each {
		nix eval -f $it.name
	}
}
