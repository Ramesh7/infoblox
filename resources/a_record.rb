# An A (address) record maps a domain name to an IPv4 address.
actions :create, :get_record, :get_ip, :delete
default_action :create

# Name for A record in FQDN format.
attribute :name, kind_of: String, name_attribute: true, required: true
attribute :ipv4addr, kind_of: String, required: true
attribute :view, kind_of: String
attribute :record_ref, kind_of: String

# optional attributes
attribute :comment, kind_of: String
attribute :disable, kind_of: [TrueClass, FalseClass], default: false
attribute :zone, kind_of: String
attribute :dns_name, kind_of: String # The name for an A record in punycode format.

# Time To Live value for record. A 32-bit unsigned integer that represents the duration, in seconds, for which the record is valid (cached).
attribute :ttl, kind_of: Integer
attribute :use_ttl, kind_of: [TrueClass, FalseClass], default: false

# extensible attributes
attribute :extattrs, kind_of: Hash
