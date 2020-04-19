.class Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;
.super Ljava/lang/Object;
.source "HangupCallerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

.field final synthetic val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/HangupCallerViewHolder;Lus/zoom/zrc/phonecall/PhoneListItemData;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;->val$data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/Model;->hangupSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    .line 32
    iget-object p1, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;->this$0:Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
