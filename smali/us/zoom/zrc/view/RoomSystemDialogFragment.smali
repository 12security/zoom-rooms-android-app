.class public Lus/zoom/zrc/view/RoomSystemDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "RoomSystemDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;
    }
.end annotation


# static fields
.field static final SHOW_TAG:Ljava/lang/String; = "us.zoom.zrc.view.RoomSystemDialogFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    new-instance p1, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;

    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;-><init>(Lus/zoom/zrc/view/RoomSystemDialogFragment;Landroid/content/Context;)V

    return-object p1
.end method
