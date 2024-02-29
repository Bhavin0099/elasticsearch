#!/bin/bash


while getopts ":ais:t:d" opt;
do
	case $opt in
		a)
			GENREATE
			;;

		*)
			echo " can't "
			;;
	esac
done