import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    df = employee.drop_duplicates(subset=['salary'])
    df = df.sort_values(by='salary', ascending=False)
    print(df)
    df = pd.DataFrame({
        'SecondHighestSalary': [df.iloc[1]['salary']] if len(df) > 1 else [None]
    })
    return df




if __name__ == '__main__':
    df = pd.DataFrame({
        'id': [1, 2],
        'salary': [100, 200]
    })

    df = second_highest_salary(df)

    print(df)