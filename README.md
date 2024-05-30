## If you update the requirements.txt be very very VERY careful

The requirements.txt of amazon_shipping and shortstory-api will have a lot of conflicts, it is currently
a pain to ensure that pip manages the shared library versions between the two repositories effectively.
Try not to update amzn/requirements.txt
