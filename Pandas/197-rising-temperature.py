import pandas as pd

def rising_temperature(weather: pd.DataFrame) -> pd.DataFrame:
    weather = weather.sort_values('recordDate')
    weather['rising'] = weather.temperature.diff() > 0
    weather['consecutive'] = weather.recordDate.diff().dt.days == 1
    return pd.DataFrame(weather[(weather['rising'] == True) & (weather['consecutive'] == True)]['id'])



if __name__ == '__main__':

    df = pd.DataFrame({
        'id': [1, 2, 3, 4],
        'recordDate': ['2015-01-01', '2015-01-02', '2015-01-03', '2015-01-04'],
        'temperature': [10, 25, 20, 30],
    })

    df = rising_temperature(df)
    print(df)
