.class Lus/zoom/zrc/model/AppEngine$1$2;
.super Ljava/lang/Object;
.source "AppEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/AppEngine$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/model/AppEngine$1;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/AppEngine$1;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lus/zoom/zrc/model/AppEngine$1$2;->this$1:Lus/zoom/zrc/model/AppEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1149
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine$1$2;->this$1:Lus/zoom/zrc/model/AppEngine$1;

    iget-object v1, v1, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setSeletedContactsHashMap(Ljava/util/Map;)V

    .line 1150
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine$1$2;->this$1:Lus/zoom/zrc/model/AppEngine$1;

    iget-object v1, v1, Lus/zoom/zrc/model/AppEngine$1;->val$selectedContactList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setSelectedContacts(Ljava/util/List;)V

    .line 1151
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/model/AppEngine$1$2;->this$1:Lus/zoom/zrc/model/AppEngine$1;

    iget-object v1, v1, Lus/zoom/zrc/model/AppEngine$1;->val$zrcContactIm:Ljava/util/List;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppModel;->setZrcContactIm(Ljava/util/List;)V

    .line 1153
    iget-object v0, p0, Lus/zoom/zrc/model/AppEngine$1$2;->this$1:Lus/zoom/zrc/model/AppEngine$1;

    iget-object v0, v0, Lus/zoom/zrc/model/AppEngine$1;->this$0:Lus/zoom/zrc/model/AppEngine;

    invoke-static {v0}, Lus/zoom/zrc/model/AppEngine;->access$100(Lus/zoom/zrc/model/AppEngine;)Lus/zoom/androidlib/util/ListenerList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    .line 1154
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1155
    check-cast v3, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;

    invoke-interface {v3}, Lus/zoom/zrc/model/AppEngine$IZRIMEvent;->onFinishRebuildContactData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
