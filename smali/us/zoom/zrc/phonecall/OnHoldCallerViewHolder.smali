.class public Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;
.super Lus/zoom/zrc/phonecall/CallerViewHolder;
.source "OnHoldCallerViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnHoldCallerViewHolder"


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/PopupWindow;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/phonecall/CallerViewHolder;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;)V

    .line 18
    iget-object p1, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->actionView:Landroid/widget/ImageView;

    sget p2, Lus/zoom/zrcbox/R$drawable;->ic_phone_swap:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lus/zoom/zrc/phonecall/CallerViewHolder;->bindData(Lus/zoom/zrc/phonecall/PhoneListItemData;)V

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->subTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lus/zoom/zrc/phonecall/PhoneListItemData;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder$1;-><init>(Lus/zoom/zrc/phonecall/OnHoldCallerViewHolder;Lus/zoom/zrc/phonecall/PhoneListItemData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
