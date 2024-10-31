import pytest
import yaml

def test_vpc_cidr():
    with open('infrastructure/network.yaml', 'r') as file:
        template = yaml.safe_load(file)
        vpc = template['Resources']['VITEducationVPC']
        assert vpc['Properties']['CidrBlock'] == '10.0.0.0/16'
