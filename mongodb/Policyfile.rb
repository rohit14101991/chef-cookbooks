# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'mongodb_local'

# Where to find external cookbooks:
default_source :supermarket, 'link to supermarket'

# run_list: chef-client will run these recipes in the order specified.
run_list 'mongodb::default'

# point this policy to the hosting cookbook in its file system location
cookbook 'mongodb', path: '.'

