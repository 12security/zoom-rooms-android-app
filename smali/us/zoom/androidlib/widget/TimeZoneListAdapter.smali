.class public Lus/zoom/androidlib/widget/TimeZoneListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeZoneListAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lus/zoom/androidlib/util/TimeZoneUtil;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mZones:Ljava/util/List;

    if-eqz p2, :cond_0

    const-string p1, "name"

    goto :goto_0

    :cond_0
    const-string p1, "offset"

    .line 29
    :goto_0
    new-instance p2, Lus/zoom/androidlib/util/HashMapComparator;

    invoke-direct {p2, p1}, Lus/zoom/androidlib/util/HashMapComparator;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mZones:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private getItemMap(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mZones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mZones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    .line 41
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mZones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 98
    :cond_0
    invoke-static {p1}, Lus/zoom/androidlib/util/TimeZoneUtil;->getFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    const-string p3, "TimeZoneListAdapter"

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p2, p0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->mContext:Landroid/content/Context;

    sget p3, Lus/zoom/androidlib/R$layout;->zm_time_zone_list_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "TimeZoneListAdapter"

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    sget p3, Lus/zoom/androidlib/R$id;->txtCity:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 73
    sget v0, Lus/zoom/androidlib/R$id;->txtGMT:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->getItemMap(I)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "name"

    .line 77
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "gmt"

    .line 78
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "ShangHai"

    .line 81
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "GMT+08:00"

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-object p2
.end method
