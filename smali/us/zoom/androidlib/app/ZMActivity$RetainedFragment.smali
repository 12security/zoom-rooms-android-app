.class public Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedFragment"
.end annotation


# instance fields
.field mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 757
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 755
    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager;

    invoke-direct {v0}, Lus/zoom/androidlib/util/EventTaskManager;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    const/4 v0, 0x1

    .line 758
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;->setRetainInstance(Z)V

    return-void
.end method
