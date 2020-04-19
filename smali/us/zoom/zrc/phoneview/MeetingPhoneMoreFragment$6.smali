.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showInputEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

.field final synthetic val$etEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;->val$etEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$6;->val$etEmail:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
