# spacelift-pulumi-example

## How to set it up and todos

The Pulumi code is in aws-ec2/pulumi folder. The code is written in Python.
In order to make it work, you have to first set up the pulumi stack itself. 

Download the pulumi CLI, then hit 
```bash
pulumi login
```
and after being redirected, authenticate yourself.

Create a new Pulumi stack via:
```bash
pulumi stack
```

and create a new stack.

Create a new pulumi access token.
If you're using pulumi.com, you can do it at https://app.pulumi.com/KNiepok/settings/tokens.

Create an AWS integration with EC2 permissions. It's best if it has a wildcard access for stack, so it can be used by all new stacks created by blueprints.
