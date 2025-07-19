with source as (
    select * 
    from {{ source('airline', 'airline_delay_raw') }}
),

renamed as (
    select
        safe_cast(nullif(cast(year as string), '') as int64) as year,
        safe_cast(nullif(cast(month as string), '') as int64) as month,
        carrier,
        carrier_name,
        airport,
        airport_name,
        safe_cast(nullif(cast(arr_flights as string), '') as float64) as arr_flights,
        safe_cast(nullif(cast(arr_del15 as string), '') as float64) as arr_del15,
        safe_cast(nullif(cast(carrier_ct as string), '') as float64) as carrier_ct,
        safe_cast(nullif(cast(weather_ct as string), '') as float64) as weather_ct,
        safe_cast(nullif(cast(nas_ct as string), '') as float64) as nas_ct,
        safe_cast(nullif(cast(security_ct as string), '') as float64) as security_ct,
        safe_cast(nullif(cast(late_aircraft_ct as string), '') as float64) as late_aircraft_ct,
        safe_cast(nullif(cast(arr_cancelled as string), '') as float64) as arr_cancelled,
        safe_cast(nullif(cast(arr_diverted as string), '') as float64) as arr_diverted,
        safe_cast(nullif(cast(arr_delay as string), '') as float64) as arr_delay,
        safe_cast(nullif(cast(carrier_delay as string), '') as float64) as carrier_delay,
        safe_cast(nullif(cast(weather_delay as string), '') as float64) as weather_delay,
        safe_cast(nullif(cast(nas_delay as string), '') as float64) as nas_delay,
        safe_cast(nullif(cast(security_delay as string), '') as float64) as security_delay,
        safe_cast(nullif(cast(late_aircraft_delay as string), '') as float64) as late_aircraft_delay
    from source
)

select * 
from renamed
