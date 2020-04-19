.class public Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZMFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMFragment;
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

    .line 251
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 249
    new-instance v0, Lus/zoom/androidlib/util/EventTaskManager;

    invoke-direct {v0}, Lus/zoom/androidlib/util/EventTaskManager;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;->setRetainInstance(Z)V

    return-void
.end method
