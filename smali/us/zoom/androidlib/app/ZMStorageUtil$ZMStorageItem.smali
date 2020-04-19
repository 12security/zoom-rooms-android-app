.class public Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;
.super Ljava/lang/Object;
.source "ZMStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZMStorageItem"
.end annotation


# instance fields
.field availableSize:J

.field public mounted:Z

.field public path:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->type:I

    .line 50
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMStorageUtil$ZMStorageItem;->mounted:Z

    return-void
.end method
