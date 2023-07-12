import React from 'react';

import { Text, TouchableOpacity, View } from 'react-native';

import Analytics from 'appcenter-analytics';
import Crashes from 'appcenter-crashes';

function App(): JSX.Element {
  return (
    <View
      style={{
        backgroundColor: '#FFF',
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
      }}>
      <Text>RN Study</Text>
      <TouchableOpacity
        style={{
          borderColor: '#000',
          borderWidth: 1,
          borderRadius: 4,
          padding: 4,
          marginBottom: 8,
        }}
        onPress={() => Analytics.trackEvent('test')}>
        <Text>Test App Center Analytics</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={{
          borderColor: '#000',
          borderWidth: 1,
          borderRadius: 4,
          padding: 4,
        }}
        onPress={() => Crashes.generateTestCrash()}>
        <Text>Test App Center Crash</Text>
      </TouchableOpacity>
    </View>
  );
}

export default App;
