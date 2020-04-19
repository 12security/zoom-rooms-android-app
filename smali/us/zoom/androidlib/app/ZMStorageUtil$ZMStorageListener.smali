.class public interface abstract Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageListener;
.super Ljava/lang/Object;
.source "ZMStorageUtil.java"

# interfaces
.implements Lus/zoom/androidlib/util/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZMStorageListener"
.end annotation


# virtual methods
.method public abstract onRecieveStorageInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;",
            ">;)V"
        }
    .end annotation
.end method
