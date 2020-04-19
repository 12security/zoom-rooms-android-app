.class public Lus/zoom/zrc/view/PTMenuViewItem;
.super Landroid/widget/LinearLayout;
.source "PTMenuViewItem.java"


# instance fields
.field private llRoot:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIvIcon:Landroid/widget/ImageView;

.field private mTvText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/PTMenuViewItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/PTMenuViewItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/PTMenuViewItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 37
    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuViewItem;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 39
    sget v0, Lus/zoom/zrcbox/R$layout;->pt_menu_item:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget v0, Lus/zoom/zrcbox/R$id;->iv_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuViewItem;->mIvIcon:Landroid/widget/ImageView;

    .line 41
    sget v0, Lus/zoom/zrcbox/R$id;->tv_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/PTMenuViewItem;->mTvText:Landroid/widget/TextView;

    .line 42
    sget v0, Lus/zoom/zrcbox/R$id;->ll_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuViewItem;->llRoot:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getMenuName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuViewItem;->mTvText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentDes(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuViewItem;->llRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuViewItem;->mIvIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/view/PTMenuViewItem;->mTvText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
