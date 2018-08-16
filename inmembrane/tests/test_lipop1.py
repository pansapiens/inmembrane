import os
import unittest
import sys

import inmembrane
import inmembrane.tests
from inmembrane import helpers
from inmembrane.plugins import lipop1

from inmembrane.tests.PluginTestBase import PluginTestBase


class TestLipoP(PluginTestBase):
    _plugin_name = "lipop1"

    def test_lipop1(self):
        if not self.params['lipop1_bin']:
            self.params['lipop1_bin'] = 'LipoP'

        lipop1.annotate(self.params, self.proteins)

        self.expected_output = {
            'SPy_0252': True,
            'SPy_2077': False,
            'SPy_0317': True,
            'tr|Q9HYX8': True,
        }

        for seqid in self.expected_output:
            self.assertEqual(
                self.expected_output[seqid], self.proteins[seqid]['is_lipop'])
        self.assertEqual(self.proteins['tr|Q9HYX8']['lipop_cleave_position'],
                         19)
        self.assertIn('lipop_im_retention_signal', self.proteins['tr|Q9HYX8'])
        self.assertTrue(
            self.proteins['tr|Q9HYX8']['lipop_im_retention_signal'])


if __name__ == '__main__':
    unittest.main()
