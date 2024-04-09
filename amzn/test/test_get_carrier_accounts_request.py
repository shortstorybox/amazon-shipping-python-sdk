# coding: utf-8

"""
    Amazon Shipping API

    The Amazon Shipping API is designed to support outbound shipping use cases both for orders originating on Amazon-owned marketplaces as well as external channels/marketplaces. With these APIs, you can request shipping rates, create shipments, cancel shipments, and track shipments.  # noqa: E501

    OpenAPI spec version: v2
    Contact: swa-api-core@amazon.com
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

import unittest

import amazon_shipping
from amazon_shipping.models.get_carrier_accounts_request import GetCarrierAccountsRequest  # noqa: E501
from amazon_shipping.rest import ApiException


class TestGetCarrierAccountsRequest(unittest.TestCase):
    """GetCarrierAccountsRequest unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testGetCarrierAccountsRequest(self):
        """Test GetCarrierAccountsRequest"""
        # FIXME: construct object with mandatory attributes with example values
        # model = amazon_shipping.models.get_carrier_accounts_request.GetCarrierAccountsRequest()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
