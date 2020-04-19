.class Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;
.super Ljava/lang/Object;
.source "ZRCRecyclerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->checkNeedShowSearchBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/ZRCRecyclerListView;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 258
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$1;->this$0:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->requestLayout()V

    return-void
.end method
