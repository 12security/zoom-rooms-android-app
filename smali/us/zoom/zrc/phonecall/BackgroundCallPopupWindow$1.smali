.class Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow$1;
.super Lus/zoom/zrc/phonecall/PhoneListAdapter;
.source "BackgroundCallPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;->initData()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/phonecall/PhoneListAdapter<",
        "Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;Ljava/util/List;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;

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

    .line 38
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    iget-object p2, p0, Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/BackgroundCallPopupWindow;

    invoke-static {p1, p2}, Lus/zoom/zrc/phonecall/CallerViewHolder;->newOnHoldCallerViewHolder(Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    move-result-object p1

    return-object p1
.end method
