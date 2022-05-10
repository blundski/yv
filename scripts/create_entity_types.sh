
# This will create the City entity type
python -m exabel_data_sdk.scripts.create_entity_type \
    --name="entityTypes/$EXABEL_NAMESPACE.city" \
    --display-name="City" \
    --description="City entity type for Youjivest" \
    --no-is-associative
