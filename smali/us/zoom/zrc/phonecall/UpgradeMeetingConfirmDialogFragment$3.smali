.class Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$3;
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

    .line 152
    iput-object p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$3;->this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 155
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isInSharingMeeting()Z

    move-result p2

    const-string v0, "SipCallAlertStopMeeting"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeSipCallToMeeting dialog onClick() called with:  isEndCurrentMeeting = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$3;->this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->access$000(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->upgradeSipCallToMeeting(Z)V

    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
