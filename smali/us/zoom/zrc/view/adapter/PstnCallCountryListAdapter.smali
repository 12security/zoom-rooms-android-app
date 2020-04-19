.class public Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;
.super Lus/zoom/zrc/view/adapter/ModelBaseAdapter;
.source "PstnCallCountryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$CountryComparator;,
        Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/view/adapter/ModelBaseAdapter<",
        "Lus/zoom/zrcsdk/model/CountryCode;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultPos:I

.field private totalCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->defaultPos:I

    .line 33
    new-instance p1, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$CountryComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$CountryComparator;-><init>(Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;Ljava/util/Locale;Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$1;)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->totalCode:I

    return-void
.end method


# virtual methods
.method public getDefaultPosition(Lus/zoom/zrcsdk/model/CountryCode;)I
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/model/CountryCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 55
    new-instance p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$1;)V

    .line 56
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$layout;->country_list_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 57
    sget v1, Lus/zoom/zrcbox/R$id;->country_list_holder:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    .line 58
    sget v1, Lus/zoom/zrcbox/R$id;->iv_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 59
    sget v1, Lus/zoom/zrcbox/R$id;->tv_name:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 60
    sget v1, Lus/zoom/zrcbox/R$id;->tv_code:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;

    move-object v10, p3

    move-object p3, p2

    move-object p2, v10

    .line 65
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 67
    iget-object v2, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    iget-object v2, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    iget-object v3, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v2, v3, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    .line 73
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v2, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget v1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->defaultPos:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v1, p1, :cond_3

    .line 77
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    sget v8, Lus/zoom/zrcbox/R$string;->country_code_list_item_des:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v0

    iget-object p2, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, v5, v6

    add-int/2addr p1, v6

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    iget p1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->totalCode:I

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    iget-object p1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    sget p2, Lus/zoom/zrcbox/R$string;->selected:I

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    .line 79
    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 86
    :cond_3
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->context:Landroid/content/Context;

    sget v8, Lus/zoom/zrcbox/R$string;->country_code_list_item_des:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v0

    iget-object p2, p2, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, v5, v6

    add-int/2addr p1, v6

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    iget p1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->totalCode:I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, ""

    aput-object p1, v5, v2

    .line 88
    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-object p3
.end method

.method public setDefaultPosition(I)V
    .locals 0

    .line 48
    iput p1, p0, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->defaultPos:I

    return-void
.end method
