.class public interface abstract Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;
.super Ljava/lang/Object;
.source "ZMActivity.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlobalActivityListener"
.end annotation


# virtual methods
.method public abstract onActivityMoveToFront(Lus/zoom/androidlib/app/ZMActivity;)V
.end method

.method public abstract onUIMoveToBackground()V
.end method

.method public abstract onUserActivityOnUI()V
.end method
