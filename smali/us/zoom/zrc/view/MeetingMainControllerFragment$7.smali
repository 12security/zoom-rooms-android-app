.class Lus/zoom/zrc/view/MeetingMainControllerFragment$7;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;->showInputEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

.field final synthetic val$etEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$7;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$7;->val$etEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1141
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$7;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$7;->val$etEmail:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
