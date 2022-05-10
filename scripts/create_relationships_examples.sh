
# Create relationships going from Company to City.
# The example file uses factset_identifier for Company and the normalized version of City
python -m exabel_data_sdk.scripts.load_relationships_from_csv \
  	--filename="data/upload/relationships/HAS_OPERATIONS_IN_city.csv" \
  	--relationship-type="HAS_OPERATIONS_IN" \
    --entity-from-column="factset_identifier" \
    --entity-to-column="$EXABEL_NAMESPACE.city"

# List relationships going FROM the Company with the Factset identifier 00B213-E.
# Please note that in the Exabel platform the factset identifier part of the resource name is
# prefixed with "F_"
python -m exabel_data_sdk.scripts.list_relationships \
    --from-entity entityTypes/company/entities/F_00B213-E \
    --relationship-type relationshipTypes/$EXABEL_NAMESPACE.HAS_OPERATIONS_IN

# List relationships going TO the City "Ali_area". Please notice that resource name has been
# normalized in the platform (illegal space character replaced by underscore).
python -m exabel_data_sdk.scripts.list_relationships \
    --to-entity entityTypes/$EXABEL_NAMESPACE.city/entities/$EXABEL_NAMESPACE.Ali_area \
    --relationship-type relationshipTypes/test.HAS_OPERATIONS_IN
