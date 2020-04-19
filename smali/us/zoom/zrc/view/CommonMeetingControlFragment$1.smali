.class Lus/zoom/zrc/view/CommonMeetingControlFragment$1;
.super Ljava/lang/Object;
.source "CommonMeetingControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/CommonMeetingControlFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/CommonMeetingControlFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/CommonMeetingControlFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment$1;->this$0:Lus/zoom/zrc/view/CommonMeetingControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/view/CommonMeetingControlFragment$1;->this$0:Lus/zoom/zrc/view/CommonMeetingControlFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/CommonMeetingControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    return-void
.end method
