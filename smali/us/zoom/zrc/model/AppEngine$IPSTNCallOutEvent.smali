.class public interface abstract Lus/zoom/zrc/model/AppEngine$IPSTNCallOutEvent;
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
    name = "IPSTNCallOutEvent"
.end annotation


# virtual methods
.method public abstract onCancelCallOutResult(Z)V
.end method

.method public abstract onPSTNCallOutResult(Z)V
.end method

.method public abstract onPSTNCallOutStatus(I)V
.end method
