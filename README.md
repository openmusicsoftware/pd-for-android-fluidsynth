This is a flattened version of libpd-for-android that includes libpd and pure-data repository snapshots instead of the original submodule setup.  The purpose of this incantation is to explore enabling the extras in libpd-for-android and also an implementation of fluid synth as an additional extra into the core pure data build.  For this particular version we have altered a few things, namely the repository location for this build and also there is no requirement to initialize submodules because all is included in one gigantic snapshot.

The real version of libpd-for-android is here

https://github.com/libpd/pd-for-android

The version of fludsynth is from the release bundles found here

https://github.com/FluidSynth/fluidsynth



[![StackOverflow](http://img.shields.io/badge/stackoverflow-libpd-blue.svg)]( http://stackoverflow.com/questions/tagged/libpd )
 \- For questions regarding libpd

## How to use the library

Make sure you have The Medimuse repository URL in your repositories in the top level build.gradle file:

```gradle
allprojects {
    repositories {
         maven { url 'https://medimuse.io/repository' }        
    }
}
```

Add the release dependency to your app:

```gradle
dependencies {
    implementation 'net.medimuse:pdforandroidfluidsynth:1.0'
    
    // ... other dependencies
}
```
OR

Add the snapshot debug versions

Add the release dependency to your app:

```gradle
dependencies {
    implementation 'net.medimuse:pdforandroidfluidsynth-debug:1.0-SNAPSHOT'
    
    // ... other dependencies
}
```



Please note that pd-for-android-fluidsynth is a modified version of vanilla version of Pure Data. Currently this is Pure Data vanilla version 0.51-3. You can get desktop distributions of it here:
http://msp.ucsd.edu/software.html

The main difference is that this version has the build of fluidsynth~ object as an additional extra in the pure data build

## How to create an .aar file of pd-for-android-fluidsynth

### Using the terminal

1. Clone this repository
2. Go to the repository folder:
```
cd pd-for-android-fluidsynth
```
3. Install dependencies and assemble the release: (Note: Windows users should run `gradlew`)
```
./gradlew androidDependencies
./gradlew clean assembleRelease
```

Now you have your PdCore .aar file in the folder PdCore/build/outputs/aar

### Using Android Studio

1. Install Android Studio
1. Make sure the Android SDK and NDK tools are installed and that Android Studio is properly configured to use them
1. Clone and initialize this repository as per steps 1-3 above
1. Create a new Android Studio project by importing `settings.gradle` from the pd-for-android root folder: `File > New > Import Project...`
1. Open the Gradle Toolbar and run the task assembleRelease in the project :PdCore



