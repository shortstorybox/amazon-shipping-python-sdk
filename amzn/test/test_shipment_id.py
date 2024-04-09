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
from amazon_shipping.models.shipment_id import ShipmentId  # noqa: E501
from amazon_shipping.rest import ApiException


class TestShipmentId(unittest.TestCase):
    """ShipmentId unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testShipmentId(self):
        """Test ShipmentId"""
        # FIXME: construct object with mandatory attributes with example values
        # model = amazon_shipping.models.shipment_id.ShipmentId()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
