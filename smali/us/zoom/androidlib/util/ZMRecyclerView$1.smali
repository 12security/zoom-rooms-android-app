.class Lus/zoom/androidlib/util/ZMRecyclerView$1;
.super Ljava/lang/Object;
.source "ZMRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/ZMRecyclerView;->scrollToBottom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/ZMRecyclerView;

.field final synthetic val$lastPos:I


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/ZMRecyclerView;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMRecyclerView$1;->this$0:Lus/zoom/androidlib/util/ZMRecyclerView;

    iput p2, p0, Lus/zoom/androidlib/util/ZMRecyclerView$1;->val$lastPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMRecyclerView$1;->this$0:Lus/zoom/androidlib/util/ZMRecyclerView;

    iget v1, p0, Lus/zoom/androidlib/util/ZMRecyclerView$1;->val$lastPos:I

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/ZMRecyclerView;->scrollToPosition(I)V

    return-void
.end method
