// IZRCLogService.aidl
package us.zoom.zrc.logging;

interface IZRCLogService {
    void printLog(int level, String tag, in byte[] message);
    void forceFlushLog();
}
