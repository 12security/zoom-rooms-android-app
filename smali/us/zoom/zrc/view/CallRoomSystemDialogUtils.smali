.class public Lus/zoom/zrc/view/CallRoomSystemDialogUtils;
.super Ljava/lang/Object;
.source "CallRoomSystemDialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 17
    sget-object v0, Lus/zoom/zrc/view/RoomSystemDialogFragment;->SHOW_TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Lus/zoom/zrc/view/RoomSystemDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment;-><init>()V

    .line 21
    sget-object v1, Lus/zoom/zrc/view/RoomSystemDialogFragment;->SHOW_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
