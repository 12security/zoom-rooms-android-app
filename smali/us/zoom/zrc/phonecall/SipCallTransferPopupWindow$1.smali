.class Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;
.super Ljava/lang/Object;
.source "SipCallTransferPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;-><init>(Landroid/content/Context;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$sipCallTransferFragment:Lus/zoom/zrc/phonecall/SipCallTransferFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;Ljava/lang/String;Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->val$sipCallTransferFragment:Lus/zoom/zrc/phonecall/SipCallTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "SipCallTransferPopupWindow"

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warm transfer onClick() called with: number = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->val$sipCallTransferFragment:Lus/zoom/zrc/phonecall/SipCallTransferFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->dismiss()V

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->access$000(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "SipCallTransferPopupWindow"

    const-string v0, "onClick() called with: sipPhoneCallPresenter is null."

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;->access$000(Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow$1;->val$number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->startWarmTransfer(Ljava/lang/String;)V

    return-void
.end method
