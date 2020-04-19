.class Lus/zoom/androidlib/widget/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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

    .line 345
    iput-object p1, p0, Lus/zoom/androidlib/widget/PinnedSectionListView$3;->this$0:Lus/zoom/androidlib/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 347
    iget-object v0, p0, Lus/zoom/androidlib/widget/PinnedSectionListView$3;->this$0:Lus/zoom/androidlib/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
