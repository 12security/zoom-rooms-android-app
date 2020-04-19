.class public abstract Lus/zoom/androidlib/widget/QuickSearchListView$QuickSearchListDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/QuickSearchListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QuickSearchListDataAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getItemSortKey(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public isDataSorted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
