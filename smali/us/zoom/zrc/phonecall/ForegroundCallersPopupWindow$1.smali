.class Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow$1;
.super Lus/zoom/zrc/phonecall/PhoneListAdapter;
.source "ForegroundCallersPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;->initData()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/phonecall/PhoneListAdapter<",
        "Lus/zoom/zrc/phonecall/HangupCallerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;Ljava/util/List;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;

    invoke-direct {p0, p2}, Lus/zoom/zrc/phonecall/PhoneListAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/phonecall/HangupCallerViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    iget-object p2, p0, Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/ForegroundCallersPopupWindow;

    invoke-static {p1, p2}, Lus/zoom/zrc/phonecall/CallerViewHolder;->newHangupCallerViewHolder(Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

    move-result-object p1

    return-object p1
.end method
