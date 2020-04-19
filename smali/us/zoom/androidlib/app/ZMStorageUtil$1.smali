.class final Lus/zoom/androidlib/app/ZMStorageUtil$1;
.super Ljava/lang/Object;
.source "ZMStorageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    invoke-static {}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMStorageUtil;->access$100(Ljava/util/List;)V

    return-void
.end method
