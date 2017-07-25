swift build -C Carthage/Checkouts/swift-protobuf/ -c release -Xswiftc -static-stdlib

protoc --plugin Carthage/Checkouts/swift-protobuf/.build/release/protoc-gen-swift \
--swift_out=. \
--swift_opt=Visibility=Public \
proto/*.proto
