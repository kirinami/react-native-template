# Template

### Commands:

Installation:
```shell
bash sys/install.sh
```

Run app:
```shell
yarn start
```

## IOS

List devices
```shell
xcrun xctrace list devices
```

Build and run for a simulator:
```shell
react-native run-ios --simulator "<simulator name from devices list>"
```

Build and run for a device:
```shell
react-native run-ios --device "<device name from devices list>"
```

## Android

List devices
```shell
emulator -list-avds
```

Run emulator:
```shell
emulator @Pixel_3_API_30
```
