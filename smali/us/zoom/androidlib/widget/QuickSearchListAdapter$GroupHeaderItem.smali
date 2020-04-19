.class Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/QuickSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupHeaderItem"
.end annotation


# instance fields
.field key:C

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(CLjava/lang/String;)V
    .locals 0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-char p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->key:C

    .line 702
    iput-object p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$GroupHeaderItem;->title:Ljava/lang/String;

    return-void
.end method
