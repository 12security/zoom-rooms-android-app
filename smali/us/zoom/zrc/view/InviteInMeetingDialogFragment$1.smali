.class Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;
.super Ljava/lang/Object;
.source "InviteInMeetingDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->fillTabBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)Lus/zoom/zrc/view/TabBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 252
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)Lus/zoom/zrc/view/TabBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 253
    iget-object v0, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->access$000(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)Lus/zoom/zrc/view/TabBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/TabBar;->getTab(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    .line 255
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 256
    sget v3, Lus/zoom/zrcbox/R$string;->meeting:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    sget v4, Lus/zoom/zrcbox/R$string;->back_to:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lus/zoom/zrc/view/InviteInMeetingDialogFragment$1;->this$0:Lus/zoom/zrc/view/InviteInMeetingDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/InviteInMeetingDialogFragment;->access$100(Lus/zoom/zrc/view/InviteInMeetingDialogFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
