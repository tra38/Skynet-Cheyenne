#Method came from the Facets gem (https://github.com/rubyworks/facets)

#Facets gem is dual-licensed under either the Ruby License or the GPL v2.
#I have chosen to follow the Ruby License:
#https://github.com/rubyworks/facets/blob/master/LICENSE.txt

# (Comment from the source code:)
# Interpolate provides a means of externally using Ruby string
# interpolation mechinism.
#
#   try = "hello"
#   str = "\#{try}!!!"
#   String.interpolate{ str }    #=> "hello!!!"
#
# Note this uses #eval under the hood. We do not recommend that
# it serve in place of a good templating system. But, it can be
# useful for simple cases.
#
# The block is neccessary in order to get then binding of the caller.
#
# CREDIT: Trans
class String
	def self.interpolate(&str)
	  eval "%{#{str.call}}", str.binding
	end
end