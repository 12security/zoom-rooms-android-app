.class public Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;
.super Lus/zoom/zrc/view/adapter/ModelBaseAdapter;
.source "CallingCountryPopWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$CountryComparator;,
        Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/view/adapter/ModelBaseAdapter<",
        "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->defaultPos:I

    .line 29
    new-instance p1, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$CountryComparator;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$CountryComparator;-><init>(Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;Ljava/util/Locale;Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$1;)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getDefaultPosition(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)I
    .locals 2

    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 34
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1, v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->equals(Ljava/lang/Object;)Z

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
    .locals 5

    if-nez p2, :cond_0

    .line 50
    new-instance p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$1;)V

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->country_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 52
    sget v0, Lus/zoom/zrcbox/R$id;->iv_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 53
    sget v0, Lus/zoom/zrcbox/R$id;->tv_name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 54
    sget v0, Lus/zoom/zrcbox/R$id;->tv_code:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->code:Landroid/widget/TextView;

    .line 55
    iget-object v0, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->code:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 60
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 63
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->context:Landroid/content/Context;

    iget-object v2, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->code:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget v0, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->defaultPos:I

    if-ne v0, p1, :cond_3

    .line 73
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->code:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 77
    :cond_3
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->code:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object p2, p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-object p3
.end method

.method public setDefaultPosition(I)V
    .locals 0

    .line 43
    iput p1, p0, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;->defaultPos:I

    return-void
.end method
