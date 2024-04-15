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


Manual action: 
Create a context with PULUMI_ACCESS_TOKEN and provide an access token.
If you're using pulumi.com, you can do it at https://app.pulumi.com/KNiepok/settings/tokens.
(todo automate)


Manual action:
Create an AWS integration with EC2 permissions.
(todo automate)

Manual action:
Create Pulumi Stack in spacelift.
Fill out the login url (https://api.pulumi.com if you're using pulumi.com)
and the stack name.
You'll also have to provide pre-init and pre-apply scripts, but for this scenario it's ok to put anything in there, so I put `ls`.
Connect the stack to the context.
Connect the cloud integration to the stack.
(todo automate)


You're now good to go. When applying the stack, you should see a new EC2 instance being created in AWS,
and also a new output in the pulumi.com UI as well as Spacelift UI.
