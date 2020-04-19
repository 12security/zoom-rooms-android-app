// ISignalTransportInterface.aidl
package us.zoom.zrc.lightbar;

interface ISignalTransportInterface {
    boolean getBooleanSignal(String name);
    void sendDigitalSignal(String name, boolean value);
    void sendAnalogSignal(String name, int value);
}
