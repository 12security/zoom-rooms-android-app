.class Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AndroidAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/AndroidAppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppListAdapter"
.end annotation


# instance fields
.field private mActivity:Lus/zoom/androidlib/app/ZMActivity;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/app/ZMActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/androidlib/app/ZMActivity;",
            "Ljava/util/List<",
            "Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 2014
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2015
    iput-object p1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 2017
    iput-object p2, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 2022
    iget-object v0, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    .line 2027
    iget-object v0, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2030
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 2040
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p2, :cond_0

    .line 2043
    iget-object p2, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    sget p3, Lus/zoom/androidlib/R$layout;->zm_app_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2046
    :cond_0
    sget p3, Lus/zoom/androidlib/R$id;->imgIcon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 2047
    sget v0, Lus/zoom/androidlib/R$id;->txtLabel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2049
    instance-of v1, p1, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;

    if-eqz v1, :cond_1

    .line 2050
    check-cast p1, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;

    .line 2051
    iget-object v1, p1, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2052
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2053
    iget-object v1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    iget-object v2, p1, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2054
    iget-object p3, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    iget-object p1, p1, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {p3, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationLabel(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
