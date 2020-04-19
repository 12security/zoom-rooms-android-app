.class public Lus/zoom/zrc/phonecall/CallerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallerViewHolder.java"


# instance fields
.field final actionView:Landroid/widget/ImageView;

.field protected data:Lus/zoom/zrc/phonecall/PhoneListItemData;

.field private final nameTextView:Landroid/widget/TextView;

.field final popupWindow:Landroid/widget/PopupWindow;

.field sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

.field final subTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/widget/PopupWindow;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->sipPhoneCallPresenter:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    .line 44
    iput-object p1, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->popupWindow:Landroid/widget/PopupWindow;

    .line 46
    sget p1, Lus/zoom/zrcbox/R$id;->tv_background_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 47
    sget p1, Lus/zoom/zrcbox/R$id;->tv_number:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->subTextView:Landroid/widget/TextView;

    .line 48
    sget p1, Lus/zoom/zrcbox/R$id;->iv_action:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->actionView:Landroid/widget/ImageView;

    return-void
.end method

.method static newHangupCallerViewHolder(Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)Lus/zoom/zrc/phonecall/HangupCallerViewHolder;
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/PopupWindow;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->item_caller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 39
    new-instance v0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;-><init>(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-object v0
.end method

.method static newMergeCallerViewHolder(Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)Lus/zoom/zrc/phonecall/MergeCallerViewHolder;
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/PopupWindow;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->item_caller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 29
    new-instance v0, Lus/zoom/zrc/phonecall/MergeCallerViewHolder;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/phonecall/MergeCallerViewHolder;-><init>(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-object v0
.end method

.method static newOnHoldCallerViewHolder(Landroid/view/ViewGroup;Landroid/widget/PopupWindow;)Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/PopupWindow;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->item_caller:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 34
    new-instance v0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;-><init>(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-object v0
.end method


# virtual methods
.method public bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V
    .locals 1

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->data:Lus/zoom/zrc/phonecall/PhoneListItemData;

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/phonecall/CallerViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PhoneListItemData;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
