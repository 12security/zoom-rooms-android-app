.class Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZMSendMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMSendMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppListAdapter"
.end annotation


# instance fields
.field private mActivity:Lus/zoom/androidlib/app/ZMActivity;

.field private mExtItems:[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lus/zoom/androidlib/app/ZMActivity;I[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;)V
    .locals 3

    .line 258
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 259
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 261
    iput-object p3, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mExtItems:[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    .line 263
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mList:Ljava/util/List;

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 265
    invoke-static {p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryEmailActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    .line 266
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 267
    new-instance v1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;-><init>(ILandroid/content/pm/ResolveInfo;)V

    .line 268
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_1

    .line 273
    invoke-static {p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->querySMSActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 275
    new-instance v0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p3}, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;-><init>(ILandroid/content/pm/ResolveInfo;)V

    .line 276
    iget-object p3, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    and-int/2addr p2, p1

    if-eqz p2, :cond_2

    .line 281
    new-instance p2, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;-><init>(ILandroid/content/pm/ResolveInfo;)V

    .line 282
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 288
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mExtItems:[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mExtItems:[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    if-eqz v1, :cond_1

    .line 298
    array-length v0, v1

    if-ge p1, v0, :cond_1

    .line 300
    aget-object p1, v1, p1

    return-object p1

    .line 304
    :cond_1
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mList:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 314
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p2, :cond_0

    .line 317
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    sget p3, Lus/zoom/androidlib/R$layout;->zm_app_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 320
    :cond_0
    sget p3, Lus/zoom/androidlib/R$id;->imgIcon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 321
    sget v0, Lus/zoom/androidlib/R$id;->txtLabel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 323
    instance-of v1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 324
    check-cast p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    .line 325
    iget-object v1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    iget-object v2, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object p3, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {p3, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationLabel(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_1
    iget p1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appType:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 330
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    sget p1, Lus/zoom/androidlib/R$drawable;->zm_copy:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    sget p1, Lus/zoom/androidlib/R$string;->zm_lbl_copy_to_clipboard:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 334
    :cond_2
    instance-of v1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    if-eqz v1, :cond_3

    .line 335
    check-cast p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    .line 336
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 337
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-static {v1, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationLabel(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->mActivity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-static {v3, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 339
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-object p2
.end method
