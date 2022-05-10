
Examples on how to load data for Youjivest -> Exabel platform

All commands in the .sh files are run in a ```pipenv shell``` with exabel-data-sdk installed: https://pypi.org/project/exabel-data-sdk/
Please run commands one by one (not real scripts)

Sequence of "script" files:

- initial.sh (set up environment variables)
- create_entity_types.sh (one time setup of entityTypes)
- create_relationship_types.sh (one time setup of relationshipTypes)
- create_entities_examples.sh 
- create_relationship_examples.sh
- load_timeseries.sh
- cleanup.sh (removes everything that was uploaded)