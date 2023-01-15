SELECT
  USER_ID,
  FIRST_NAME,
  LAST_NAME,
  EMAIL,
  PHONE_NUMBER,
  CREATED_AT AS CREATED_DATE,
  UPDATED_AT AS UPDATED_DATE,
  ADDRESS_ID
FROM {{ source('postgres', 'users') }}