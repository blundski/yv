
# This will create the HAS_OPERATIONS_IN relationship type
python -m exabel_data_sdk.scripts.create_relationship_type \
    --name="relationshipTypes/$EXABEL_NAMESPACE.HAS_OPERATIONS_IN" \
    --description="Relationship type for HAS_OPERATIONS_IN" \
    --is-ownership

