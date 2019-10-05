package com.android.car.developeroptions.wifi.tether;

import android.net.wifi.WifiClient;
import android.net.wifi.WifiManager;
import android.os.Handler;

import java.util.List;

/**
 * Wrapper for {@link android.net.wifi.WifiManager.SoftApCallback} to pass the robo test
 */
public class WifiTetherSoftApManager {

    private WifiManager mWifiManager;
    private WifiTetherSoftApCallback mWifiTetherSoftApCallback;

    private WifiManager.SoftApCallback mSoftApCallback = new WifiManager.SoftApCallback() {
        @Override
        public void onStateChanged(int state, int failureReason) {
            mWifiTetherSoftApCallback.onStateChanged(state, failureReason);
        }

        @Override
        public void onConnectedClientsChanged(List<WifiClient> clients) {
            mWifiTetherSoftApCallback.onConnectedClientsChanged(clients);
        }
    };
    private Handler mHandler;

    WifiTetherSoftApManager(WifiManager wifiManager,
            WifiTetherSoftApCallback wifiTetherSoftApCallback) {
        mWifiManager = wifiManager;
        mWifiTetherSoftApCallback = wifiTetherSoftApCallback;
        mHandler = new Handler();
    }

    public void registerSoftApCallback() {
        mWifiManager.registerSoftApCallback(mSoftApCallback, mHandler);
    }

    public void unRegisterSoftApCallback() {
        mWifiManager.unregisterSoftApCallback(mSoftApCallback);
    }

    public interface WifiTetherSoftApCallback {
        void onStateChanged(int state, int failureReason);

        void onConnectedClientsChanged(List<WifiClient> clients);
    }
}
