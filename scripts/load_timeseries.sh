
# Upload timeseries for City entities using known_time in file. Will create signals automatically.
# Example data from air_pollution_index_hours_day.csv
# You can add as many timeseries as you like in the file by adding more columns
python -m exabel_data_sdk.scripts.load_time_series_from_csv \
    --create-missing-signals \
    --filename="data/upload/timeseries/city_timeseries.csv"

# List time series for City "Aksu Region" (normalized to Aksu_Region in the platform) for the signal
# <NAMESPACE>.yv.pi.aqi
# Please notice that city entity names are normalized in the platform!
# Add --known-time to see the difference in time series values
python -m exabel_data_sdk.scripts.get_time_series \
    --name "entityTypes/$EXABEL_NAMESPACE.city/entities/$EXABEL_NAMESPACE.Aksu_Region/signals/$EXABEL_NAMESPACE.yv_pi_aqi" \
    --start 2022-04-01 \
    --end 2022-04-09
    # --known-time 2022-04-09 (will NOT include 2022-04-09 as known_time for this is 2022-04-10)

# Upload timeseries for Company entities using known_time in file. Will create signals automatically
# Example data from normed_iss_week_report.csv
# In this example we have used bloomberg_tickers to identify companies but factset id's are preferable.
# Please note that HK tickers strips leading zeros. SZ/SS wraps to CH (China).
python -m exabel_data_sdk.scripts.load_time_series_from_csv \
    --create-missing-signals \
    --filename="data/upload/timeseries/company_timeseries.csv"

# List time series for company "35 HK" (factset identifier for Far East Consortium International
# Ltd. is 05J5XB-E - please notice the "F_" prefix) for the signal <NAMESPACE>.yv_e02_global_air_pollution_ghg_emission
# Add --known-time to see the difference in time series values
python -m exabel_data_sdk.scripts.get_time_series \
    --name "entityTypes/company/entities/F_05J5XB-E/signals/$EXABEL_NAMESPACE.yv_e02_global_air_pollution_ghg_emission" \
    --start 2022-04-20 \
    --end 2022-04-22
    # --known-time 2022-04-22 (will NOT include 2022-04-22 as known_time for this is 2022-04-25)
    # --known-time 2022-04-25 (will include 2022-04-22)
