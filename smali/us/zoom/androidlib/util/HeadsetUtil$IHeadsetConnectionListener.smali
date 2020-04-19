.class public interface abstract Lus/zoom/androidlib/util/HeadsetUtil$IHeadsetConnectionListener;
.super Ljava/lang/Object;
.source "HeadsetUtil.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/HeadsetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHeadsetConnectionListener"
.end annotation


# virtual methods
.method public abstract onBluetoothScoAudioStatus(Z)V
.end method

.method public abstract onHeadsetStatusChanged(ZZ)V
.end method
