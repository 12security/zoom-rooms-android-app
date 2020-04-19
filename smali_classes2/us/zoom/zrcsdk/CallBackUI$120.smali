.class Lus/zoom/zrcsdk/CallBackUI$120;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$contacts:Ljava/util/ArrayList;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$searchOnCloudResult:Z

.field final synthetic val$searchSipContactResult:Z

.field final synthetic val$totalNumberOfContactsInSearchResult:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;Ljava/util/ArrayList;Ljava/lang/String;IZZ)V
    .locals 0

    .line 2141
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$120;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput-object p2, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$contacts:Ljava/util/ArrayList;

    iput-object p3, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$filter:Ljava/lang/String;

    iput p4, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$totalNumberOfContactsInSearchResult:I

    iput-boolean p5, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$searchOnCloudResult:Z

    iput-boolean p6, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$searchSipContactResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2144
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$120;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$100(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lus/zoom/zrcsdk/IPtEventListener;

    .line 2145
    iget-object v3, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$contacts:Ljava/util/ArrayList;

    iget-object v4, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$filter:Ljava/lang/String;

    iget v5, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$totalNumberOfContactsInSearchResult:I

    iget-boolean v6, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$searchOnCloudResult:Z

    iget-boolean v7, p0, Lus/zoom/zrcsdk/CallBackUI$120;->val$searchSipContactResult:Z

    invoke-interface/range {v2 .. v7}, Lus/zoom/zrcsdk/IPtEventListener;->onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
