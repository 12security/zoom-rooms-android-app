.class Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DomainChangeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;-><init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 224
    invoke-static {}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$300()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 229
    invoke-static {}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$300()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 239
    iget-object v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 242
    check-cast p2, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;

    goto :goto_0

    .line 244
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$layout;->domain_list_item:I

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;

    .line 246
    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 247
    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p3, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p3}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$100(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)I

    move-result p3

    if-ne p1, p3, :cond_1

    const/4 p3, 0x0

    .line 250
    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0x11

    .line 251
    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setGravity(I)V

    .line 252
    iget-object p3, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p3}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setTextColor(I)V

    goto :goto_1

    .line 254
    :cond_1
    sget p3, Lus/zoom/zrcbox/R$drawable;->checkmark:I

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setCheckMarkDrawable(I)V

    const p3, 0x800013

    .line 255
    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setGravity(I)V

    .line 256
    iget-object p3, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p3}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setTextColor(I)V

    .line 259
    :goto_1
    iget-object p3, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;->this$0:Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-static {p3}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->access$600(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)I

    move-result p3

    if-ne p3, p1, :cond_2

    const/4 p1, 0x1

    .line 260
    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 262
    :cond_2
    invoke-virtual {p2, v1}, Lus/zoom/zrc/base/widget/ZRCCheckedTextView;->setChecked(Z)V

    :goto_2
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
