CREATE TABLE IF NOT EXISTS Employee(
    Employee_ID SERIAL PRIMARY KEY,
    Name VARCHAR(60) NOT NULL CHECK(Name != ''),
    Department VARCHAR(60) NOT NULL CHECK(Department != ''),
    Chief INTEGER REFERENCES Employee(Employee_ID)
);
