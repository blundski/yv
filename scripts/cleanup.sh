python -m exabel_data_sdk.scripts.delete_entities \
    --entity-type="entityTypes/$EXABEL_NAMESPACE.city"

python -m exabel_data_sdk.scripts.delete_entity_type \
    --name="entityTypes/$EXABEL_NAMESPACE.city"

python -m exabel_data_sdk.scripts.delete_relationship_type \
    --name="relationshipTypes/$EXABEL_NAMESPACE.HAS_OPERATIONS_IN"

