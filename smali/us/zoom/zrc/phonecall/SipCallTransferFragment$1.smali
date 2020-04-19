.class Lus/zoom/zrc/phonecall/SipCallTransferFragment$1;
.super Ljava/lang/Object;
.source "SipCallTransferFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallTransferFragment;->showTransferPopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallTransferFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallTransferFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment$1;->this$0:Lus/zoom/zrc/phonecall/SipCallTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallTransferFragment$1;->this$0:Lus/zoom/zrc/phonecall/SipCallTransferFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/phonecall/SipCallTransferFragment;->access$002(Lus/zoom/zrc/phonecall/SipCallTransferFragment;Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;)Lus/zoom/zrc/phonecall/SipCallTransferPopupWindow;

    return-void
.end method
