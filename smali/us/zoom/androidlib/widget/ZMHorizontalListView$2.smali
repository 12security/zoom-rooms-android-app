.class Lus/zoom/androidlib/widget/ZMHorizontalListView$2;
.super Ljava/lang/Object;
.source "ZMHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/ZMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMHorizontalListView;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$2;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 176
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMHorizontalListView$2;->this$0:Lus/zoom/androidlib/widget/ZMHorizontalListView;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMHorizontalListView;->requestLayout()V

    return-void
.end method
