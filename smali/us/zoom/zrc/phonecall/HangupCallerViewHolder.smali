.class public Lus/zoom/zrc/phonecall/HangupCallerViewHolder;
.super Lus/zoom/zrc/phonecall/CallerViewHolder;
.source "HangupCallerViewHolder.java"


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/PopupWindow;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/phonecall/CallerViewHolder;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 16
    iget-object p2, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->actionView:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->hang_up_call:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$dimen;->phone_hangup_action_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 18
    iget-object p2, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->actionView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lus/zoom/zrc/phonecall/CallerViewHolder;->bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->subTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lus/zoom/zrc/phonecall/PhoneListItemData;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p1, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getConferenceInfo()Lus/zoom/zrcsdk/model/ZRCSIPCallConferenceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->actionView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->actionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->actionView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->hang_up:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phonecall/HangupCallerViewHolder$1;-><init>(Lus/zoom/zrc/phonecall/HangupCallerViewHolder;Lus/zoom/zrc/phonecall/PhoneListItemData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/HangupCallerViewHolder;->actionView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
