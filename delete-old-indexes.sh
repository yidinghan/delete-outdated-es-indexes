host=${eshost:-elasticsearch}
port=${esport:-9200}
days=${esmaxdays:-15}
prefix=${esindexprefix:-apm}

urlprefix=${host}:${port}

indexes=$(curl "${urlprefix}/_cat/indices?v&h=index" | grep "^${prefix}" | sort)
now=$(date "+%s")
echo "indexes": $indexes
echo "now": $now

for index in $indexes
do
  date=$(echo $index | cut -d '-' -f 4 | sed "s/\./-/g")
	echo $date
  datetime=$(date -d "$date" +%s)
  diff=$((((now - datetime) / 86400) - days))
  if [ $diff -gt -1 ]
  then
    echo "delete:" $index
		url=${urlprefix}/${index}
		echo delete index $url
    curl -XDELETE $url
    echo "\n"
  fi
done
