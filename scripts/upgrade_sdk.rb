#!/usr/bin/env ruby

Dir.chdir __dir__

`cp -rf pingpp-ios/lib/* ../sdk/ios/lib`

exit

# sdk/ios/lib/
files = [
'Channels/Alipay/libpingpp+alipay.a',
'Channels/UnionPay/libPaymentControl.a',
'Channels/UnionPay/libpingpp+up.a',
'libpingppcore.a',
'Pingpp.h',
'Dependencies/Network/libpingpp+network.a',
'Dependencies/Network/PingppURLResponse.h',
]

files.each do |file|
  `cp pingpp-ios/lib/#{file} ../sdk/ios/lib/`
end
