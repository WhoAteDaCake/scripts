#!/usr/bin/env perl


my $output = qx/xinput list/;
my ($id) = ($output =~ m/Touchpad\s+id=(\d+)/);

my $props = qx/xinput --list-props $id/;
my ($prop) = ($props =~ m/Finger\s\((\d+)\)/);

qx/xinput --set-prop $id $prop 5, 10, 0/;
