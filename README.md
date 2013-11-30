# Storm Cookbook

This cookbook installs and configures [Storm](http://storm-project.net/) 0.9 using Netty as the transport layer. This means that it does not install ZeroMQ or JZMQ.

## Requirements

You must provide a Zookeeper cluster. Install it with the zookeeper cookbook
(see Berksfile). The `zookeeper_cluster_name` attribute must match
Zookeeper's `node["zookeeper"]["cluster_name"]` attribute.

## Usage

* `include_recipe "storm::nimbus"` on the nimbus node
* `include_recipe "storm::supervisor"` on the supervisor nodes

## Attributes

## Recipes

* `storm::default` - Installs Storm files, configures directories
* `storm::nimbus` - Nimbus and UI services
* `storm::supervisor` - Supervisor daemon

## Credits

This cookbook (modified by Bluemont Labs) is a variation on [Avishai Ish-
Shalom's Storm cookbook][2], which used templates and attributes from
[Webtrends' Storm cookbook][1].

[1]: https://github.com/Webtrends/Cookbooks/blob/master/storm
[2]: https://github.com/fewbytes-cookbooks/storm

## Links

See also:

* [Making Storm fly with Netty][3]
* [Storm 0.9.3-rc1 Release Notes][0.9.3-rc1]
* [Storm 0.9.3-rc2 Release Notes][0.9.3-rc2]
* [Storm 0.9.3-rc3 Release Notes][0.9.3-rc3]

[3]: http://yahooeng.tumblr.com/post/64758709722/making-storm-fly-with-netty
[0.9.3-rc1]: https://groups.google.com/forum/#!searchin/storm-user/netty$200.9/storm-user/4lkGMniF-ww/cwgKw91XHAkJ
[0.9.3-rc2]: https://groups.google.com/forum/#!searchin/storm-user/netty$200.9/storm-user/ivfIC4Joog0/UYrBfstulGQJ
[0.9.3-rc3]: https://groups.google.com/forum/#!searchin/storm-user/netty$200.9/storm-user/w-e07o4-5fQ/QumdLoFH8lAJ
