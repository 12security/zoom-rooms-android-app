.class public interface abstract Lus/zoom/zrc/model/AppEngine$IZRConnectionEvent;
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
    name = "IZRConnectionEvent"
.end annotation


# virtual methods
.method public abstract onClose(I)V
.end method

.method public abstract onConnect(I)V
.end method

.method public abstract onSendFailed(I)V
.end method
