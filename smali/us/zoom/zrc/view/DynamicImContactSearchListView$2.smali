.class Lus/zoom/zrc/view/DynamicImContactSearchListView$2;
.super Ljava/lang/Object;
.source "DynamicImContactSearchListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/DynamicImContactSearchListView;->setKeyWord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

.field final synthetic val$keyWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$2;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    iput-object p2, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$2;->val$keyWord:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 113
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$2;->val$keyWord:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v2, v1}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 114
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    return-void
.end method
