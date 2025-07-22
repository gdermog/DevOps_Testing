from unittest import TestCase
from divapp import divide
class TestDivide(TestCase):
    def test_divide_integers(self):
        self.assertEqual(divide(6, 3), 2)
