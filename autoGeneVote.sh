#!/bin/bash

if [ -e vote ]
then
  rm vote
fi

allmapstemp=$(ls ./data/maps/|grep .map)
allmaps=($allmapstemp)

for maps in ${allmaps[@]}
do
echo add_vote \"${maps//.map/}\" \"change_map ${maps//.map/}\">>vote
done
