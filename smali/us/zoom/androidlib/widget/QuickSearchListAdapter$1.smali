.class Lus/zoom/androidlib/widget/QuickSearchListAdapter$1;
.super Ljava/lang/Object;
.source "QuickSearchListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/QuickSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 399
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->access$000(Lus/zoom/androidlib/widget/QuickSearchListAdapter;)V

    .line 400
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchListAdapter$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchListAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/QuickSearchListAdapter;->notifyDataSetChanged()V

    return-void
.end method
