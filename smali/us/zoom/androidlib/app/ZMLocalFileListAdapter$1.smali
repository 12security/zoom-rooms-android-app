.class Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;
.super Ljava/lang/Object;
.source "ZMLocalFileListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMLocalFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$000(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMFileListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$000(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMFileListListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/androidlib/app/ZMFileListListener;->onWaitingStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
