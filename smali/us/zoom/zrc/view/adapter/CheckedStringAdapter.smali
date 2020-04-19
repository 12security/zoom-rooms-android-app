.class public Lus/zoom/zrc/view/adapter/CheckedStringAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CheckedStringAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;,
        Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private StringArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private itemNameStyle:I

.field private locked:Z

.field private mode:I

.field private onItemClickListener:Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->context:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 31
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTextView_Black:I

    iput p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->itemNameStyle:I

    goto :goto_0

    .line 33
    :cond_0
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTextView_White:I

    iput p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->itemNameStyle:I

    .line 35
    :goto_0
    iput-object p2, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->StringArray:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/CheckedStringAdapter;)Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->StringArray:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;I)V
    .locals 3

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->StringArray:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    iget-object v1, p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget v0, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->mode:I

    if-ne p2, v0, :cond_0

    .line 58
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;->tick:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;->tick:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_0
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-boolean v1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->locked:Z

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setViewDim(Landroid/view/View;Z)V

    .line 63
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->context:Landroid/content/Context;

    iget v2, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->itemNameStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 64
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/CheckedStringAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 49
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->setting_checked_string_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setLockedState(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->locked:Z

    .line 82
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedMode(I)V
    .locals 0

    .line 86
    iput p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->mode:I

    return-void
.end method
