.class Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;
.super Ljava/lang/Object;
.source "OnHoldCallerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

.field final synthetic val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;Lus/zoom/zrc/phonecall/PhoneListItemData;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "OnHoldCallerViewHolder"

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hold item onClick() called with: call = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    iget-object v1, v1, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    if-nez p1, :cond_0

    const-string p1, "OnHoldCallerViewHolder"

    const-string v0, "onClick() called with: sipPhoneCallPresenter == null"

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->swapSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 35
    iget-object p1, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
