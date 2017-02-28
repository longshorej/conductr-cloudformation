# ConductR Cloudformation

This CloudFormation template builds a three node [Lightbend ConductR](https://conductr.lightbend.com) AWS [CloudFormation](https://aws.amazon.com/cloudformation/). ConductR is the project name for Service Orchestration in Lightbend Production Suite.

## Using the template

Obtain your gratis Lightbend credentials from [Lightbend.com](https://www.lightbend.com/product/conductr/developer). You'll need your 'username' and 'password' to build the stack.

To create this stack, load [conductr-cloudformation.yml](https://s3.amazonaws.com/downloads.typesafe.com/conductr/conductr-cloudformation.yaml) or visit [Lightbend.com](https://www.lightbend.com/platform/production/service-orchestration). 

## Deployment

To update the template, replace [conductr-cloudformation.yml](https://s3.amazonaws.com/downloads.typesafe.com/conductr/conductr-cloudformation.yaml) with the updated version.

The cloudformation playbook of [conductr-ansible](https://github.com/typesafehub/conductr-ansible) can be used to update the AMI.
