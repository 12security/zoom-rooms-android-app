.class Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$2;
.super Ljava/lang/Object;
.source "UpgradeMeetingConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$2;->this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p2, "SipCallAlertStopMeeting"

    const-string v0, "upgradeSipCallToMeeting dialog onClick() called with:  isEndCurrentMeeting = [false]"

    const/4 v1, 0x0

    .line 146
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object p2, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$2;->this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;

    invoke-static {p2}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->access$000(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->upgradeSipCallToMeeting(Z)V

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
