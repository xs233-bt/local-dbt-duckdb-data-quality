import duckdb
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent
DATA_DIR = BASE_DIR / "data"

con = duckdb.connect("analytics.duckdb")

con.execute(
    "SELECT * FROM read_csv_auto(?)",
    [str(DATA_DIR / "raw_orders.csv")]
)

con.execute(
    "SELECT * FROM read_csv_auto(?)",
    [str(DATA_DIR / "raw_customers.csv")]
)

print("CSV visibility OK ✅")

con.close()
