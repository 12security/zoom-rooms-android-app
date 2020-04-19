.class Lus/zoom/zrc/MeetingActivity$4;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$4;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity$4;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lus/zoom/zrc/control_system/ControlSystemFragment;

    invoke-direct {p1}, Lus/zoom/zrc/control_system/ControlSystemFragment;-><init>()V

    .line 189
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/control_system/ControlSystemFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/MeetingActivity$4;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {v0}, Lus/zoom/zrc/MeetingActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    :cond_1
    return-void
.end method
