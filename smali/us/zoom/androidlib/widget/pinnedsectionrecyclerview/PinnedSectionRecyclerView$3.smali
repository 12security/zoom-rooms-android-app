.class Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$3;
.super Ljava/lang/Object;
.source "PinnedSectionRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 343
    iget-object v0, p0, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView$3;->this$0:Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/PinnedSectionRecyclerView;->recreatePinnedShadow()V

    return-void
.end method
