.class Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;
.super Ljava/lang/Object;
.source "MergeCallerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/MergeCallerViewHolder;->bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/MergeCallerViewHolder;

.field final synthetic val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/MergeCallerViewHolder;Lus/zoom/zrc/phonecall/PhoneListItemData;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/MergeCallerViewHolder;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "MergeCallerViewHolder"

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge onClick() called with: call = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    iget-object v1, v1, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/MergeCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/MergeCallerViewHolder;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    if-nez p1, :cond_0

    const-string p1, "MergeCallerViewHolder"

    const-string v0, "onClick() called with: sipPhoneCallPresenter == null"

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/MergeCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/MergeCallerViewHolder;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->mergeSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 36
    iget-object p1, p0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/MergeCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/MergeCallerViewHolder;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
