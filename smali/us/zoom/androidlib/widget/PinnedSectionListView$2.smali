.class Lus/zoom/androidlib/widget/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/PinnedSectionListView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lus/zoom/androidlib/widget/PinnedSectionListView$2;->this$0:Lus/zoom/androidlib/widget/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 134
    iget-object v0, p0, Lus/zoom/androidlib/widget/PinnedSectionListView$2;->this$0:Lus/zoom/androidlib/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 137
    iget-object v0, p0, Lus/zoom/androidlib/widget/PinnedSectionListView$2;->this$0:Lus/zoom/androidlib/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
