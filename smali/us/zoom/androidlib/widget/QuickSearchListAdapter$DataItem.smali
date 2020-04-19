.class Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/QuickSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataItem"
.end annotation


# instance fields
.field data:Ljava/lang/Object;

.field index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->data:Ljava/lang/Object;

    .line 692
    iput p2, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$DataItem;->index:I

    return-void
.end method
