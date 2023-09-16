import pandas as pd

def find_managers(employee: pd.DataFrame) -> pd.DataFrame:
    employee['directReports'] = employee['id'].map(employee.groupby('managerId')['id'].count())
    return pd.DataFrame(employee.query('directReports >= 5')['name'])


if __name__ == '__main__':

    df = pd.DataFrame({
      'id': [101, 102, 103, 104, 105, 106],
      'name': ['John', 'Dan', 'James', 'Amy', 'Anne', 'Ron'],
      'department': ['A', 'A', 'A', 'A', 'A', 'B'],
      'managerId': [None, 101, 101, 101, 101, 101],
    })

    df = find_managers(df)
    print(df)
