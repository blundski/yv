
# Create City entities - data taken from all_pollution_index_hours_day.csv
python -m exabel_data_sdk.scripts.load_entities_from_csv \
	  --filename="data/upload/entities/city.csv" \
	  --name-column="$EXABEL_NAMESPACE.city" \
	  --display-name-column="displayname" \
  	--threads=10

# List all City entities
python -m  exabel_data_sdk.scripts.list_entities \
	  --entity-type="entityTypes/$EXABEL_NAMESPACE.city"
