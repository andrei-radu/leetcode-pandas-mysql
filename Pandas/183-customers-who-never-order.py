import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    customers_who_ordered = orders['customerId'].unique()
    customers_who_didnt_order = customers[~customers['id'].isin(customers_who_ordered)]
    return customers_who_didnt_order.drop(columns=['id']).rename(columns={'name': 'Customers'})


if __name__ == '__main__':

    df = pd.DataFrame({
        'id': [1, 2, 3, 4],
        'name': ['Joe', 'Henry', 'Sam', 'Max']
    })

    df2 = pd.DataFrame({
        'id': [1, 2],
        'customerId': [3, 1]
    })

    df = find_customers(df, df2)
    print(df)