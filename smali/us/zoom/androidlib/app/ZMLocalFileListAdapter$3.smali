.class Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;
.super Lus/zoom/androidlib/util/ZMAsyncTask;
.source "ZMLocalFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->openDir(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/androidlib/util/ZMAsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lus/zoom/androidlib/app/ZMFileListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-direct {p0}, Lus/zoom/androidlib/util/ZMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 108
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMFileListEntry;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 115
    aget-object p1, p1, v0

    .line 116
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 119
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v2, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {v2, p1, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$100(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    .line 122
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    if-eqz v2, :cond_3

    .line 126
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {v1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$200(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMLocalFileListSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->setDir(Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMFileListEntry;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    iget-object v0, v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    iget-object v0, v0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$200(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMLocalFileListSession;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMLocalFileListSession;->getCurrentDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$302(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->sortFileList()V

    .line 140
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-virtual {p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->notifyDataSetChanged()V

    .line 142
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$000(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMFileListListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$3;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-static {p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter;->access$000(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)Lus/zoom/androidlib/app/ZMFileListListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/androidlib/app/ZMFileListListener;->onRefresh()V

    :cond_0
    return-void
.end method
