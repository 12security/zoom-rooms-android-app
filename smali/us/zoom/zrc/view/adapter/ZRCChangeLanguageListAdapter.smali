.class public Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZRCChangeLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;,
        Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private localeNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onItemClickListener:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;

.field private supportedLocaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->mContext:Landroid/content/Context;

    .line 25
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$array;->supported_locale_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->supportedLocaleList:Ljava/util/List;

    .line 26
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$array;->locale_name_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->localeNameList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;)Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->supportedLocaleList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;I)V
    .locals 4

    .line 38
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->supportedLocaleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 41
    aget-object v0, v0, v3

    .line 42
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;->languageItem:Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->localeNameList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lus/zoom/zrcbox/R$color;->multi_share_item_checked:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;->mark:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$color;->multi_share_item_unchecked:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object p2, p1, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;->mark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    new-instance p2, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;

    invoke-direct {p2, p0, p1, v3}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;Ljava/util/Locale;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;
    .locals 2

    .line 31
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 32
    sget v0, Lus/zoom/zrcbox/R$layout;->language_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnClickListener(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;

    return-void
.end method
