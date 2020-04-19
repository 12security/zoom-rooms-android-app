.class public Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZmSingleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleChoiceViewHolder"
.end annotation


# instance fields
.field final divider:Landroid/view/View;

.field final imgSelected:Landroid/widget/ImageView;

.field final synthetic this$0:Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;

.field final txtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;Landroid/view/View;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->this$0:Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;

    .line 31
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    sget p1, Lus/zoom/androidlib/R$id;->txtTitle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->txtTitle:Landroid/widget/TextView;

    .line 33
    sget p1, Lus/zoom/androidlib/R$id;->imgSelected:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->imgSelected:Landroid/widget/ImageView;

    .line 34
    sget p1, Lus/zoom/androidlib/R$id;->divider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->divider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bind(I)V
    .locals 4

    .line 37
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->this$0:Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->access$000(Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;

    .line 38
    iget-object v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->getImgIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->getIconContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->isSelected()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->divider:Landroid/view/View;

    iget-object v1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter$SimpleChoiceViewHolder;->this$0:Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
