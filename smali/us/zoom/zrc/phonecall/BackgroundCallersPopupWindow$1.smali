.class Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow$1;
.super Lus/zoom/zrc/phonecall/PhoneListAdapter;
.source "BackgroundCallersPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;->initData()I
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
.field final synthetic this$0:Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;Ljava/util/List;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;

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

    .line 30
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

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

    .line 35
    iget-object p2, p0, Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/BackgroundCallersPopupWindow;

    invoke-static {p1, p2}, Lus/zoom/zrc/phonecall/CallerViewHolder;->newHangupCallerViewHolder(Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

    move-result-object p1

    return-object p1
.end method
