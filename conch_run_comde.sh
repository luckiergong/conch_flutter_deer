# shellcheck disable=SC2148

git checkout flutter3.16.9_conch1.6.6
flutter --version


flutter clean
flutter pub get


flutter config --jdk-dir=/Users/enheng/Library/Java/JavaVirtualMachines/ms-11.0.28/Contents/Home

flutter run --release -d emulator-5554

# flutter build apk


# classpath 'com.android.tools.build:gradle:7.2.2'
#distributionUrl=https\://services.gradle.org/distributions/gradle-7.3.3-bin.zip


#flutter config --jdk-dir=/Users/enheng/Library/Java/JavaVirtualMachines/ms-11.0.28/Contents/Home
#flutter config --jdk-dir=/Users/enheng/Library/Java/JavaVirtualMachines/ms-17.0.16/Contents/Home
