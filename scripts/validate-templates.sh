#!/bin/bash
# Script to validate CloudFormation templates

for template in infrastructure/*.yaml; do
    echo "Validating $template..."
    aws cloudformation validate-template --template-body file://$template
done
