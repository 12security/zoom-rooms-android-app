.class Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$2;
.super Ljava/lang/Object;
.source "SipUpgradeToMeetingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->layoutAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$2;->this$0:Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView$2;->this$0:Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;

    sget-object v0, Lus/zoom/zrc/incoming/IncomingCallView$ActionType;->TYPE_DECLINE_UPGRADE:Lus/zoom/zrc/incoming/IncomingCallView$ActionType;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/incoming/SipUpgradeToMeetingView;->onDeclineIncomingCall(Lus/zoom/zrc/incoming/IncomingCallView$ActionType;)V

    return-void
.end method
