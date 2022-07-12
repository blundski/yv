export EXABEL_DATA_API_SERVER=data.api-test.exabel.com

# Upload timeseries for Company entities using known_time in file. Will create signals automatically
# Example data from normed_iss_week_report.csv
# In this example we have used factset id's to identify companies.
# This one loads data with known_time = 2022-04-25
python -m exabel_data_sdk.scripts.load_time_series_from_csv \
    --create-missing-signals \
    --filename="data/upload/timeseries/company_timeseries_factset_id_2022_04_25.csv"

# List time series for company "35 HK" (factset identifier for Far East Consortium International
# Ltd. is 05J5XB-E - please notice the "F_" prefix) for the signal <NAMESPACE>.yv_e02_global_air_pollution_ghg_emission
# Add --known-time to see the difference in time series values
python -m exabel_data_sdk.scripts.get_time_series \
    --name "entityTypes/company/entities/F_05J5XB-E/signals/$EXABEL_NAMESPACE.yv_e02_global_air_pollution_ghg_emission" \
    --start 2022-04-20 \
    --end 2022-04-22
    # --known-time 2022-04-22 (will NOT include 2022-04-22 as known_time for this is 2022-04-25)
    # --known-time 2022-04-25 (will include 2022-04-22)

# Here we restate the value of yv_e02_global_air_pollution_ghg_emission signal for the company
# with factset id 05J5XB-E on the date 2022-04-22 using the new known-time 2022-05-01
python -m exabel_data_sdk.scripts.load_time_series_from_csv \
    --create-missing-signals \
    --filename="data/upload/timeseries/company_timeseries_factset_id_2022_05_01.csv"

# List time series for company "35 HK" (factset identifier for Far East Consortium International
# Ltd. is 05J5XB-E - please notice the "F_" prefix) for the signal <NAMESPACE>.yv_e02_global_air_pollution_ghg_emission
# Add --known-time to see the difference in time series values
python -m exabel_data_sdk.scripts.get_time_series \
    --name "entityTypes/company/entities/F_05J5XB-E/signals/$EXABEL_NAMESPACE.yv_e02_global_air_pollution_ghg_emission" \
    --start 2022-04-20 \
    --end 2022-04-22
    # --known-time 2022-04-27 (will include the value with known_time 2022-04-27 - value = 13)
    # --known-time 2022-05-01 (will include the value with known_time 2022-05-01 - value = 16)
