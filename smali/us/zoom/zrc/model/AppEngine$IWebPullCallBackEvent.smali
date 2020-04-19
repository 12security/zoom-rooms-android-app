.class public interface abstract Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/AppEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWebPullCallBackEvent"
.end annotation


# virtual methods
.method public abstract LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
.end method

.method public abstract onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
.end method
