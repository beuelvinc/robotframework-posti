import re

def get_only_number(value):
    """
    Extracts the numerical portion from a given string.

    Parameters:
    - value (str): The string containing numerical values.

    Returns:
    - str or None: The extracted numerical portion from the string if found, otherwise None.

    Examples:
    >>> get_only_number("The price is $1,234.56")
    '1,234.56'

    >>> get_only_number("No numbers here!")
    None
    """
    number = re.search(r'\d{1,3}(?:,\d{3})*(?:\.\d+)?', value)
    if number:
        return number.group(0)
    return None
